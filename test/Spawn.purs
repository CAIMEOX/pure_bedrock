module Test.Spawn where

import Prelude
import Minecraft.Server
import Minecraft.Utils
import Data.Int
import Data.List (List, range, filter)
import Effect (Effect)

overworld :: Dimension
overworld = getDimension world "overworld"

spawn_entity :: BlockPlaceAfterEvent -> Effect Unit
spawn_entity e = runEff $ spawnEntity overworld "minecraft:pig" e.block.location

sub_block_place = subscribe world.afterEvents.blockPlace

main :: Effect Unit
main = runEff (sub_block_place spawn_entity)
