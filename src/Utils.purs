module Minecraft.Utils where
import Prelude
import Data.Maybe
import Data.Nullable
import Effect (Effect)
import Data.Newtype

unwrapGet :: forall t a b. Newtype t a => t -> (a -> b) -> b
unwrapGet = flip identity <<< unwrap
infixl 9 unwrapGet as ^. 

unwrapNullable :: forall t a b. Newtype t a => t -> (a -> Nullable b) -> Maybe b
unwrapNullable = ((<<<) toMaybe) <<< unwrapGet
infixl 9 unwrapNullable as ~.

run :: forall a. a -> Effect Unit
run x = void $ pure x