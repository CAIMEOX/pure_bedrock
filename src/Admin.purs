module Minecraft.Server.Admin where
import Data.Nullable
import Data.Maybe (Maybe)
data SecretString = SecretString
foreign import data Any :: Type
type ServerSecrets = {
  names :: Array (String)
}

type ServerVariables = {
  names :: Array (String)
}

foreign import mk_SecretString :: String -> SecretString
foreign import _prim_get_ServerSecrets :: ServerSecrets -> String -> Nullable (SecretString)
get_ServerSecrets :: ServerSecrets -> String -> Maybe (SecretString)
get_ServerSecrets a b = toMaybe (_prim_get_ServerSecrets a b)
foreign import _prim_get_ServerVariables :: ServerVariables -> String -> Nullable (Any)
get_ServerVariables :: ServerVariables -> String -> Maybe (Any)
get_ServerVariables a b = toMaybe (_prim_get_ServerVariables a b)
foreign import secrets :: ServerSecrets
foreign import variables :: ServerVariables