{ name = "pure_bedrock"
, dependencies =
  [ "aff-promise"
  , "control"
  , "effect"
  , "integers"
  , "lists"
  , "maybe"
  , "newtype"
  , "nullable"
  , "ordered-collections"
  , "prelude"
  , "untagged-union"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
