import * as fs from "fs";
import { join } from "path";
const table = [
  ["boolean", "Boolean"],
  ["int32", "Int"],
  ["int16", "Int"],
  ["int8", "Int"],
  ["float", "Number"],
  ["string", "String"],
  ["int64", "Int"],
  ["uInt", "Int"],
  ["undefined", "Eff.Effect Unit"],
];

function any(arr, cond) {
  return arr.map((x) => cond(x)).includes(true);
}

function cap(n) {
  return n.charAt(0).toUpperCase() + n.slice(1);
}

function read_name(n) {
  return n === "type" ? '"type"' : n;
}

function is_letter(char) {
  return /^[a-zA-Z]$/.test(char);
}

function contains_self(name, fields) {
  for (let f of fields) {
    const x = f.split("::")[1];
    if (x.includes(name) && !is_letter(x[x.indexOf(name) + name.length]))
      return true;
  }
  return false;
}

function nth_letter(n) {
  return String.fromCharCode(96 + n);
}

function pure_closure(t) {
  return [
    ...(t.argument_types.length > 0
      ? t.argument_types.map(read_type)
      : ["Unit"]),
    read_type(t.return_type),
  ].join(" -> ");
}
function read_type(o, t) {
  switch (o.name) {
    case "optional":
      return `${t ? "Maybe" : "Nullable"} (${read_type(o.optional_type)})`;
    case "array":
      return `Array (${read_type(o.element_type)})`;
    case "closure":
      return `(${pure_closure(o.closure_type)})`;
    case "promise":
      return `Promise (${read_type(o.promise_type)})`;
    case "variant":
      return `(${o.variant_types.map(read_type).join(" |+| ")})`;
    case "map":
      return `Map ${read_type(o.key_type)} ${read_type(o.value_type)}`;
    default:
      return pure_type(o.name);
  }
}

function pure_type(s) {
  table.forEach((x) => (s = s.replace(x[0], x[1])));
  return s;
}

class MetaFunction {
  constructor(m, cn, cf, ens) {
    this.name = m.name;
    this.enums_tables = ens;
    this.conflict = cf;
    this.class_name = cn;
    this.args = m.arguments;
    this.static = m.is_static;
    this.cons = m.is_constructor;
    this.return_type_raw = m.return_type;
    this.return_type = read_type(m.return_type);
  }

  // Only Top level Nullable will be detected.
  has_arg_nullable() {
    return any(this.args, (x) => x.type.name === "optional");
  }

  has_ret_nullable() {
    return this.return_type_raw.name === "optional";
  }

  has_enums() {
    return any(this.args, (x) =>
      [...this.enums_tables.keys()].includes(x.type.name)
    );
  }

  has_enums_x(x){
    return false;
    // return [...this.enums_tables.keys()].includes(x.type.name)
  }
  has_conflict() {
    return this.conflict;
  }
  is_static() {
    return this.static;
  }
  js_code() {
    if (this.cons) {
      this.static = true;
    }
    const len = this.pure_sign().length - 1;
    const args = new Array(len).fill(1).map((_, i) => nth_letter(i + 1));
    const z = args.length === 0 ? "()" : args.join(" => ");
    if (this.cons) {
      const n =
        this.has_arg_nullable() || this.has_ret_nullable() || this.has_enums()
          ? "_prim_mk_" + this.class_name
          : "mk_" + this.class_name;
      return `export const ${n} = ${z} => new M.${this.class_name}(${args.join(
        ","
      )})`;
    }
    let n = this.conflict ? `${this.name}_${this.class_name}` : `${this.name}`;
    if (
      this.has_arg_nullable() ||
      this.has_ret_nullable() ||
      this.has_enums()
    ) {
      n = "_prim_" + n;
    }
    return this.static
      ? `export const ${n} = ${z} => M.${this.class_name}.${
          this.name
        }(${args.join(",")})`
      : `export const ${n} = ${z} => a.${this.name}(${args
          .slice(1)
          .join(",")})`;
  }

  pure_code() {
    if (this.cons) {
      this.static = true;
      this.name = "mk";
    }
    const n = this.conflict
      ? `${this.name}_${this.class_name}`
      : `${this.name}`;
    if (
      this.has_arg_nullable() ||
      this.has_ret_nullable() ||
      this.has_enums()
    ) {
      const len = this.pure_sign().length - 1;
      const args = new Array(len).fill(1).map((_, i) => nth_letter(i + 1));
      let xrgs =
        this.args.length != len
          ? [{ type: { name: this.class_name } }, ...this.args]
          : this.args;
      const app = xrgs.map((a, i) => {
        const p = this.has_enums_x(a)
          ? `(prim${a.type.name} ${args[i]})`
          : args[i];
        return a.type.name === "optional" ? `(toNullable ${p})` : p;
      });
      return [
        `foreign import _prim_${n} :: ${this.pure_sign()
          // .map((s) =>
          //   [...this.enums_tables.keys()].includes(s) ? this.enums_tables.get(s) : s
          // )
          .join(" -> ")}`,
        `${n} :: ${this.pure_sign(true).join(" -> ")}`,
        `${n} ${args.join(" ")} = ${
          this.has_ret_nullable() ? "toMaybe" : ""
        } (_prim_${n} ${app.join(" ")})`,
      ].join("\n");
    } else {
      return `foreign import ${n} :: ${this.pure_sign().join(" -> ")}`;
    }
  }

  pure_sign(prim) {
    return this.is_static()
      ? [
          ...this.args.map((x) => read_type(x.type, prim)),
          read_type(this.return_type_raw, prim),
        ]
      : [
          this.class_name,
          ...this.args.map((x) => read_type(x.type, prim)),
          read_type(this.return_type_raw, prim),
        ];
  }
}

class MetaClass {
  constructor(m) {
    this.name = m.name;
    this.base_types = m.base_types;
    this.properties = m.properties;
    this.constants = m.constants;
    this.functions = m.functions;
    this.derive = true;
  }

  make_type(fields) {
    if (fields.length === 0 || !contains_self(this.name, fields))
      this.derive = false;
    return fields.length === 0
      ? `data ${this.name} = ${this.name}`
      : contains_self(this.name, fields)
      ? `newtype ${this.name} = ${this.name} {\n${fields.join(",\n")}\n}`
      : `type ${this.name} = {\n${fields.join(",\n")}\n}`;
  }

  code() {
    return this.make_type(
      this.properties
        .map((x) => "  " + new MetaProp(x).code())
        .concat(
          this.constants.map(
            (c) => "  " + c.name + " :: " + pure_type(c.type.name)
          )
        )
    );
  }

  deriving() {
    return this.derive
      ? `derive instance newtype${this.name} :: Newtype ${this.name} _`
      : "";
  }
}

class MetaInterface {
  constructor(m) {
    this.properties = m.properties;
    this.name = m.name;
  }

  make_type(fields) {
    return fields.length === 0
      ? `data ${this.name} = ${this.name}`
      : contains_self(this.name, fields)
      ? `newtype ${this.name} = ${this.name} {\n${fields.join(",\n")}\n}`
      : `type ${this.name} = {\n${fields.join(",\n")}\n}`;
  }

  code() {
    return this.make_type(
      this.properties.map((x) => "  " + new MetaProp(x).code())
    );
  }

  deriving() {
    return `derive instance newtype${this.name} :: Newtype ${this.name} _`;
  }
}

class MetaEnum {
  constructor(m, cf) {
    this.cf = cf;
    this.name = m.name;
    this.constants = m.constants;
  }

  prim_type() {
    return this.constants[0].type.name === "string" ? "String" : "Int";
  }

  code(){
    return `data ${this.name} = ${this.name} ${this.prim_type()}`
  }

  code0() {
    return [
      !this.cf
        ? `data ${this.name} = ${this.constants
            .map((x) => this.name + "_" + cap(x.name))
            .join(" | ")}`
        : `data ${this.name} = ${this.constants
            .map((x) => cap(x.name))
            .join(" | ")}`,
      `prim${this.name} :: ${this.name} -> ${this.prim_type()}`,
      ...this.constants.map((x) => {
        return `prim${this.name} ${
          this.cf ? cap(x.name) : this.name + "_" + cap(x.name)
        } = ${this.prim_type() === "String" ? '"' + x.value + '"' : x.value}`;
      }),
    ].join("\n");
  }
}

class MetaProp {
  constructor(m) {
    this.is_read_only = m.is_read_only;
    this.name = read_name(m.name);
    this.type_name = read_type(m.type);
  }

  code() {
    return `${this.name} :: ${this.type_name}`;
  }
}

function run(path, purs) {
  const ft = new Map();
  const ect = new Map();
  const et = new Map();
  const f = fs.readFileSync(path).toString();
  const g = JSON.parse(f);

  const n = g["name"].split("/")[1].split("-").map(cap);
  const headers = {
    js: [`import * as M from "${g["name"]}"`],
    purs: [
      `module Minecraft.${n.join(".")} where`,
      "import Minecraft.Utils (class Event)",
      "import Prelude (Unit)",
      "import Data.Map (Map)",
      "import Data.Newtype (class Newtype)",
      "import Data.Nullable",
      "import Data.Maybe (Maybe)",
      "import Untagged.Union (type (|+|))",
      "import Control.Promise (Promise)",
      "import Effect (Effect) as Eff",
    ],
  };
  let code = [(purs ? headers.purs : headers.js).join("\n")];

  if (g["classes"])
    g["classes"].forEach((x) => {
      if (x.base_types.length > 0) {
        const c = search_class_by_name(x.base_types[0].name);
        if (!c) return;
        x.functions.push(...c["functions"]);
        x.properties.push(...c["properties"]);
      }
    });

  if (g["classes"]) {
    g["classes"].map((x) =>
      x["functions"].map((y) => {
        ft.set(y.name, ft.get(y.name) ? ft.get(y.name) + 1 : 1);
      })
    );
  }

  if (g["enums"]) {
    g["enums"].map((y) => {
      y["constants"].map((x) => {
        const cap_name = cap(x.name);
        ect.set(cap_name, ect.get(cap_name) ? ect.get(cap_name) + 1 : 1);
      });
    });
  }
  const is_conflict_enum = (cs) => {
    return cs.filter((c) => ect.get(cap(c.name)) == 1).length === cs.length;
  };

  const is_conflict_fn = (n) => {
    return ft.get(n) > 1;
  };
  function instance_event(name) {
    const bl = [
      "EntityRemovedAfterEventSignal",
      "ScriptEventCommandMessageAfterEventSignal",
      "EntityHurtAfterEventSignal",
      "EntityHitEntityAfterEventSignal",
      "EntityHitBlockAfterEventSignal",
      "EntityHealthChangedAfterEventSignal",
      "EntityDieAfterEventSignal",
      "EffectAddAfterEventSignal",
      "DataDrivenEntityTriggerBeforeEventSignal",
      "DataDrivenEntityTriggerAfterEventSignal",
    ];
    if (bl.includes(name)) return "";
    const ev =
      search_class_by_name(name)["functions"][0].return_type.closure_type
        .argument_types[0].name;
    return (
      `instance Event ${name} ${ev} where\n` +
      `  subscribe = subscribe_${name}\n` +
      `  unsubscribe = unsubscribe_${name}\n`
    );
  }
  function instance_is_valid(name) {
    return (
      `instance Valid Boolean ${name} where\n` + `  isValid = isValid_${name}`
    );
  }

  if (g["enums"])
    g["enums"].forEach((x) => {
      const y0 = new MetaEnum(x, is_conflict_enum(x.constants));
      et.set(y0.name, y0.prim_type());
      if (purs) code.push(y0.code());
    });

  if (g["interfaces"])
    g["interfaces"].forEach((x) => {
      const y = new MetaInterface(x).code();
      if (purs) code.push(y);
    });

  if (g["classes"])
    g["classes"].forEach((x) => {
      const y = new MetaClass(x);
      if (purs) {
        code.push(y.code());
        code.push(y.deriving());
      }
      if (purs && x.name.endsWith("EventSignal")) {
        code.push(instance_event(x.name));
      }
    });

  function search_class_by_name(n) {
    for (let i of g["classes"]) {
      if (i.name === n) return i;
    }
  }

  if (g["classes"])
    g["classes"].forEach((x) => {
      let fns = x["functions"];
      fns.forEach((z) => {
        const y0 = new MetaFunction(z, x.name, is_conflict_fn(z.name), et);
        const y1 = y0.pure_code();
        const y2 = y0.js_code();
        code.push(purs ? y1 : y2);
        // if (purs && z.name === "isValid") {
        //   code.push(instance_is_valid(x.name));
        // }
      });
    });

  g["objects"].forEach((x) => {
    code.push(
      purs
        ? `foreign import ${x.name} :: ${read_type(x.type)}`
        : `export const ${x.name} = M.${x.name}`
    );
  });
  return { code: code.join("\n"), name: n.pop() };
}

function main() {
  const args = process.argv.slice(2);
  const p = run(args[0], true);
  fs.writeFileSync(join(args[1], p.name + ".purs"), p.code);
  const j = run(args[0]);
  fs.writeFileSync(join(args[1], j.name + ".js"), j.code);
}
main();
