module Test.Sphere where

import Data.Maybe
import Minecraft.Server
import Minecraft.Utils
import Prelude

import Control.Alternative (guard)
import Data.Int (toNumber)
import Data.List (List, range)
import Effect (Effect)
import Untagged.Union (asOneOf)

overworld :: Dimension
overworld = getDimension world "overworld"

sphere :: Int -> Vector3 -> List Vector3
sphere r v = do
  x <- range (-r) r
  y <- range (-r) r
  z <- range (-r) r
  guard $ x * x + y * y + z * z < r * r
  pure $ { x: toNumber x + v.x, y: toNumber y + v.y, z: toNumber z + v.z }

set_block :: BlockType -> Vector3 -> Effect Unit
set_block b v = case getBlock overworld v of
  Just block -> setType block (asOneOf b)
  Nothing -> pure unit

on_place :: BlockPlaceAfterEvent -> Effect Unit
on_place e = runEff $ map (set_block (e.block.type)) (sphere 4 (e.block.location))

sub_block_place :: (BlockPlaceAfterEvent -> Effect Unit) -> (BlockPlaceAfterEvent -> Effect Unit)
sub_block_place = subscribe (world.afterEvents.blockPlace)

main :: Effect Unit
main = runEff (sub_block_place on_place)
