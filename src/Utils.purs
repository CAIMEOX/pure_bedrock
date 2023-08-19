module Minecraft.Utils where
import Prelude
import Data.Maybe
import Data.Nullable
import Effect (Effect)
import Data.Newtype

class Event s e | s -> e where
    subscribe :: s -> (e -> Effect Unit) -> (e -> Effect Unit)
    unsubscribe :: s -> (e -> Effect Unit) -> Effect Unit

class Valid a where
    isValid :: a -> Boolean

unwrapGet :: forall t a b. Newtype t a => t -> (a -> b) -> b
unwrapGet = flip identity <<< unwrap
infixl 9 unwrapGet as ^. 

unwrapNullable :: forall t a b. Newtype t a => t -> (a -> Nullable b) -> Maybe b
unwrapNullable = ((<<<) toMaybe) <<< unwrapGet
infixl 9 unwrapNullable as ~.

-- Unsafe
foreign import setProp :: forall a b. a -> String -> b -> b

cancelEvent :: forall a. a -> Boolean
cancelEvent e = setProp e "cancel" true

runEff :: forall a. a -> Effect Unit
runEff x = void $ pure x