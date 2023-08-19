module Test.Spawn where

import Prelude
import Minecraft.Server
import Minecraft.Utils
import Data.Int
import Data.List (List, range, filter)
import Effect (Effect)

overworld :: Dimension
overworld = getDimension_World world "overworld"

spawn_entity :: BlockPlaceAfterEvent -> Effect Unit
spawn_entity e = run $ spawnEntity_Dimension overworld "minecraft:pig" e.block.location

sub_block_place = subscribe_BlockPlaceAfterEventSignal world.afterEvents.blockPlace

main :: Effect Unit
main = run (sub_block_place spawn_entity)