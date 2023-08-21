import * as M from "@minecraft/server-net"
export const cancelAll = a => b => a.cancelAll(b)
export const get = a => b => a.get(b)
export const request = a => b => a.request(b)
export const mk_HttpHeader = a => b => new M.HttpHeader(a,b)
export const addHeader = a => b => c => a.addHeader(b,c)
export const mk_HttpRequest = a => new M.HttpRequest(a)
export const setBody = a => b => a.setBody(b)
export const setHeaders = a => b => a.setHeaders(b)
export const _prim_setMethod = a => b => a.setMethod(b)
export const setTimeout = a => b => a.setTimeout(b)
export const http = M.http