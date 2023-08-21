import * as M from "@minecraft/server-admin"
export const mk_SecretString = a => new M.SecretString(a)
export const _prim_get_ServerSecrets = a => b => a.get(b)
export const _prim_get_ServerVariables = a => b => a.get(b)
export const secrets = M.secrets
export const variables = M.variables