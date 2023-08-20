module Main where

import Minecraft.Server
import Effect (Effect)
import Minecraft.Utils (runEff, subscribe)
import Prelude (Unit)

kill :: ChatSendAfterEvent -> Effect Unit
kill e = runEff (kill_Player e.sender)

sub :: (ChatSendAfterEvent -> Effect Unit) ->  (ChatSendAfterEvent -> Effect Unit)
sub = subscribe (world.afterEvents.chatSend)

main :: Effect Unit
main = runEff (sub kill)