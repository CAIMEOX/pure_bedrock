module Main where

import Minecraft.Server
import Effect (Effect)
import Minecraft.Utils (runEff, subscribe)
import Prelude (Unit)

type V r = {ax :: String | r}

type VX = {ax :: String,ay :: String}

t1 :: forall r. V r -> String
t1 x = x.ax

kill :: ChatSendAfterEvent -> Effect Unit
kill e = runEff (kill_Player e.sender)

sub :: (ChatSendAfterEvent -> Effect Unit) ->  (ChatSendAfterEvent -> Effect Unit)
sub = subscribe (world.afterEvents.chatSend)

main :: Effect Unit
main = runEff (sub kill)