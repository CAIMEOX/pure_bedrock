module Test.Main where

import Prelude
import Effect (Effect)
import Minecraft.Utils
import Minecraft.Server

kill e = runEff (kill_Player $ e.sender)
    
sub1 = subscribe (world.beforeEvents.chatSend)
sub = subscribe (world.afterEvents.chatSend)

main :: Effect Unit
main = runEff (sub $ kill)
