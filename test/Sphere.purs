module Test.Sphere where

import Prelude
import Data.List (List, range)
import Data.Int (toNumber)
import Minecraft.Server 
import Minecraft.Utils
import Untagged.Union (asOneOf)
import Data.Nullable (toMaybe)
import Data.Maybe
import Control.Alternative (guard)
import Effect (Effect)

overworld :: Dimension
overworld = getDimension_World world "overworld"

sphere :: Int -> Vector3 -> List Vector3
sphere r v = do
    x <- range (-r) r
    y <- range (-r) r
    z <- range (-r) r
    guard $ x * x + y * y + z * z < r * r
    pure $ {x:toNumber x + v.x,  y: toNumber y + v.y, z:toNumber z + v.z}

set_block :: BlockType -> Vector3 -> Effect Unit
set_block b v = case toMaybe $ getBlock_Dimension overworld v of 
    Just block -> setType_Block block (asOneOf b)
    Nothing -> pure unit

on_place :: BlockPlaceAfterEvent -> Effect Unit
on_place e = run $ map (set_block (e.block.type)) (sphere 4 (e.block.location))

sub_block_place = subscribe_BlockPlaceAfterEventSignal (world.afterEvents.blockPlace)
main :: Effect Unit
main = run (sub_block_place on_place)