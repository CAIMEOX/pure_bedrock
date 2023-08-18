module Test.Main where
import Prelude
import Effect (Effect)
import Data.Newtype
import Data.Maybe 
import Minecraft.Utils
import Minecraft.Server

kill e = run (kill_Player $ e ^. _.sender)
sub = subscribe_ChatSendAfterEventSignal (world ^. _.afterEvents ^. _.chatSend )

main :: Effect Unit
main = run (sub $ kill)