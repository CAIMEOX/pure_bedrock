module Minecraft.Server.Net where
import Minecraft.Server.Admin
import Prelude (Unit)
import Untagged.Union (type (|+|))
import Control.Promise (Promise)
import Effect (Effect) as Eff
data HttpRequestMethod = HttpRequestMethod String
data HttpClient = HttpClient
type HttpHeader = {
  key :: String,
  value :: (SecretString |+| String)
}

type HttpRequest = {
  body :: String,
  headers :: Array (HttpHeader),
  method :: HttpRequestMethod,
  timeout :: Int,
  uri :: String
}

type HttpResponse = {
  body :: String,
  headers :: Array (HttpHeader),
  request :: HttpRequest,
  status :: Int
}

foreign import cancelAll :: HttpClient -> String -> Eff.Effect Unit
foreign import get :: HttpClient -> String -> Promise (HttpResponse)
foreign import request :: HttpClient -> HttpRequest -> Promise (HttpResponse)
foreign import mk_HttpHeader :: String -> (SecretString |+| String) -> HttpHeader
foreign import addHeader :: HttpRequest -> String -> (SecretString |+| String) -> HttpRequest
foreign import mk_HttpRequest :: String -> HttpRequest
foreign import setBody :: HttpRequest -> String -> HttpRequest
foreign import setHeaders :: HttpRequest -> Array (HttpHeader) -> HttpRequest
foreign import _prim_setMethod :: HttpRequest -> HttpRequestMethod -> HttpRequest
setMethod :: HttpRequest -> HttpRequestMethod -> HttpRequest
setMethod a b =  (_prim_setMethod a b)
foreign import setTimeout :: HttpRequest -> Int -> HttpRequest
foreign import http :: HttpClient