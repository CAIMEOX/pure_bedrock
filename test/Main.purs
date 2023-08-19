module Test.Main where
import Prelude
import Effect (Effect)
import Minecraft.Utils
import Minecraft.Server

kill e = run (kill_Player $ e.sender)
sub = subscribe_ChatSendAfterEventSignal (world.afterEvents.chatSend)

main :: Effect Unit
main = run (sub $ kill)