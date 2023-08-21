module Minecraft.Server.Gametest where
import Minecraft.Server
import Prelude (Unit)
import Data.Maybe (Maybe)
import Data.Nullable
import Untagged.Union (type (|+|))
import Control.Promise (Promise)
import Effect (Effect) as Eff
data GameTestErrorType = GameTestErrorType String
type GameTestErrorContext = {
  absolutePosition :: Vector3,
  relativePosition :: Vector3,
  tickCount :: Int
}
type FenceConnectivity = {
  east :: Boolean,
  north :: Boolean,
  south :: Boolean,
  west :: Boolean
}

data GameTestSequence = GameTestSequence

data RegistrationBuilder = RegistrationBuilder

type SculkSpreader = {
  maxCharge :: Int
}

type SimulatedPlayer = {
  headRotation :: Vector2,
  isSprinting :: Boolean
}

type Tags = {
  suiteAll :: String,
  suiteDebug :: String,
  suiteDefault :: String,
  suiteDisabled :: String
}

data Test = Test

foreign import thenExecute :: GameTestSequence -> (Unit -> Eff.Effect Unit) -> GameTestSequence
foreign import thenExecuteAfter :: GameTestSequence -> Int -> (Unit -> Eff.Effect Unit) -> GameTestSequence
foreign import thenExecuteFor :: GameTestSequence -> Int -> (Unit -> Eff.Effect Unit) -> GameTestSequence
foreign import thenFail :: GameTestSequence -> String -> Eff.Effect Unit
foreign import thenIdle :: GameTestSequence -> Int -> GameTestSequence
foreign import thenSucceed :: GameTestSequence -> Eff.Effect Unit
foreign import thenWait :: GameTestSequence -> (Unit -> Eff.Effect Unit) -> GameTestSequence
foreign import thenWaitAfter :: GameTestSequence -> Int -> (Unit -> Eff.Effect Unit) -> GameTestSequence
foreign import batch :: RegistrationBuilder -> String -> RegistrationBuilder
foreign import maxAttempts :: RegistrationBuilder -> Int -> RegistrationBuilder
foreign import maxTicks :: RegistrationBuilder -> Int -> RegistrationBuilder
foreign import padding :: RegistrationBuilder -> Int -> RegistrationBuilder
foreign import required :: RegistrationBuilder -> Boolean -> RegistrationBuilder
foreign import requiredSuccessfulAttempts :: RegistrationBuilder -> Int -> RegistrationBuilder
foreign import rotateTest :: RegistrationBuilder -> Boolean -> RegistrationBuilder
foreign import setupTicks :: RegistrationBuilder -> Int -> RegistrationBuilder
foreign import structureName :: RegistrationBuilder -> String -> RegistrationBuilder
foreign import tag :: RegistrationBuilder -> String -> RegistrationBuilder
foreign import addCursorsWithOffset :: SculkSpreader -> Vector3 -> Int -> Eff.Effect Unit
foreign import getCursorPosition :: SculkSpreader -> Int -> Vector3
foreign import getNumberOfCursors :: SculkSpreader -> Int
foreign import getTotalCharge :: SculkSpreader -> Int
foreign import attack :: SimulatedPlayer -> Boolean
foreign import attackEntity :: SimulatedPlayer -> Entity -> Boolean
foreign import breakBlock :: SimulatedPlayer -> Vector3 -> Direction -> Boolean
foreign import disconnect :: SimulatedPlayer -> Eff.Effect Unit
foreign import dropSelectedItem :: SimulatedPlayer -> Boolean
foreign import fly :: SimulatedPlayer -> Eff.Effect Unit
foreign import giveItem :: SimulatedPlayer -> ItemStack -> Boolean -> Boolean
foreign import glide :: SimulatedPlayer -> Boolean
foreign import interact :: SimulatedPlayer -> Boolean
foreign import interactWithBlock :: SimulatedPlayer -> Vector3 -> Direction -> Boolean
foreign import interactWithEntity :: SimulatedPlayer -> Entity -> Boolean
foreign import jump :: SimulatedPlayer -> Boolean
foreign import lookAtBlock :: SimulatedPlayer -> Vector3 -> Eff.Effect Unit
foreign import lookAtEntity :: SimulatedPlayer -> Entity -> Eff.Effect Unit
foreign import lookAtLocation :: SimulatedPlayer -> Vector3 -> Eff.Effect Unit
foreign import move :: SimulatedPlayer -> Number -> Number -> Number -> Eff.Effect Unit
foreign import moveRelative :: SimulatedPlayer -> Number -> Number -> Number -> Eff.Effect Unit
foreign import moveToBlock :: SimulatedPlayer -> Vector3 -> Number -> Eff.Effect Unit
foreign import moveToLocation :: SimulatedPlayer -> Vector3 -> Number -> Eff.Effect Unit
foreign import navigateToBlock :: SimulatedPlayer -> Vector3 -> Number -> NavigationResult
foreign import navigateToEntity :: SimulatedPlayer -> Entity -> Number -> NavigationResult
foreign import navigateToLocation :: SimulatedPlayer -> Vector3 -> Number -> NavigationResult
foreign import navigateToLocations :: SimulatedPlayer -> Array (Vector3) -> Number -> Eff.Effect Unit
foreign import respawn :: SimulatedPlayer -> Boolean
foreign import rotateBody :: SimulatedPlayer -> Number -> Eff.Effect Unit
foreign import setBodyRotation :: SimulatedPlayer -> Number -> Eff.Effect Unit
foreign import setGameMode :: SimulatedPlayer -> GameMode -> Eff.Effect Unit
foreign import setItem :: SimulatedPlayer -> ItemStack -> Int -> Boolean -> Boolean
foreign import stopBreakingBlock :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopFlying :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopGliding :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopInteracting :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopMoving :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopSwimming :: SimulatedPlayer -> Eff.Effect Unit
foreign import stopUsingItem :: SimulatedPlayer -> Eff.Effect Unit
foreign import swim :: SimulatedPlayer -> Eff.Effect Unit
foreign import useItem :: SimulatedPlayer -> ItemStack -> Boolean
foreign import useItemInSlot :: SimulatedPlayer -> Int -> Boolean
foreign import _prim_useItemInSlotOnBlock :: SimulatedPlayer -> Int -> Vector3 -> Direction -> Nullable (Vector3) -> Boolean
useItemInSlotOnBlock :: SimulatedPlayer -> Int -> Vector3 -> Direction -> Maybe (Vector3) -> Boolean
useItemInSlotOnBlock a b c d e =  (_prim_useItemInSlotOnBlock a b c d (toNullable e))
foreign import _prim_useItemOnBlock :: SimulatedPlayer -> ItemStack -> Vector3 -> Direction -> Nullable (Vector3) -> Boolean
useItemOnBlock :: SimulatedPlayer -> ItemStack -> Vector3 -> Direction -> Maybe (Vector3) -> Boolean
useItemOnBlock a b c d e =  (_prim_useItemOnBlock a b c d (toNullable e))
foreign import assert :: Test -> Boolean -> String -> Eff.Effect Unit
foreign import assertBlockPresent :: Test -> (BlockType |+| String) -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertBlockState :: Test -> Vector3 -> (Block -> Boolean) -> Eff.Effect Unit
foreign import assertCanReachLocation :: Test -> Entity -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertContainerContains :: Test -> ItemStack -> Vector3 -> Eff.Effect Unit
foreign import assertContainerEmpty :: Test -> Vector3 -> Eff.Effect Unit
foreign import assertEntityHasArmor :: Test -> String -> Int -> String -> Int -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertEntityHasComponent :: Test -> String -> String -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertEntityInstancePresent :: Test -> Entity -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertEntityInstancePresentInArea :: Test -> Entity -> Boolean -> Eff.Effect Unit
foreign import assertEntityPresent :: Test -> String -> Vector3 -> Number -> Boolean -> Eff.Effect Unit
foreign import assertEntityPresentInArea :: Test -> String -> Boolean -> Eff.Effect Unit
foreign import assertEntityState :: Test -> Vector3 -> String -> (Entity -> Boolean) -> Eff.Effect Unit
foreign import assertEntityTouching :: Test -> String -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertIsWaterlogged :: Test -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import assertItemEntityCountIs :: Test -> (ItemType |+| String) -> Vector3 -> Number -> Int -> Eff.Effect Unit
foreign import assertItemEntityPresent :: Test -> (ItemType |+| String) -> Vector3 -> Number -> Boolean -> Eff.Effect Unit
foreign import assertRedstonePower :: Test -> Vector3 -> Int -> Eff.Effect Unit
foreign import destroyBlock :: Test -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import fail :: Test -> String -> Eff.Effect Unit
foreign import failIf :: Test -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getBlock :: Test -> Vector3 -> Block
foreign import getDimension :: Test -> Dimension
foreign import getFenceConnectivity :: Test -> Vector3 -> FenceConnectivity
foreign import getSculkSpreader :: Test -> Vector3 -> SculkSpreader
foreign import getTestDirection :: Test -> Direction
foreign import idle :: Test -> Int -> Promise (Eff.Effect Unit)
foreign import killAllEntities :: Test -> Eff.Effect Unit
foreign import onPlayerJump :: Test -> Entity -> Int -> Eff.Effect Unit
foreign import pressButton :: Test -> Vector3 -> Eff.Effect Unit
foreign import print :: Test -> String -> Eff.Effect Unit
foreign import pullLever :: Test -> Vector3 -> Eff.Effect Unit
foreign import pulseRedstone :: Test -> Vector3 -> Int -> Eff.Effect Unit
foreign import relativeBlockLocation :: Test -> Vector3 -> Vector3
foreign import relativeLocation :: Test -> Vector3 -> Vector3
foreign import removeSimulatedPlayer :: Test -> SimulatedPlayer -> Eff.Effect Unit
foreign import rotateDirection :: Test -> Direction -> Direction
foreign import rotateVector :: Test -> Vector3 -> Vector3
foreign import runAfterDelay :: Test -> Int -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import runAtTickTime :: Test -> Int -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setBlockPermutation :: Test -> BlockPermutation -> Vector3 -> Eff.Effect Unit
foreign import setBlockType :: Test -> (BlockType |+| String) -> Vector3 -> Eff.Effect Unit
foreign import setFluidContainer :: Test -> Vector3 -> FluidType -> Eff.Effect Unit
foreign import setTntFuse :: Test -> Entity -> Int -> Eff.Effect Unit
foreign import spawn :: Test -> String -> Vector3 -> Entity
foreign import spawnAtLocation :: Test -> String -> Vector3 -> Entity
foreign import spawnItem :: Test -> ItemStack -> Vector3 -> Entity
foreign import spawnSimulatedPlayer :: Test -> Vector3 -> String -> GameMode -> SimulatedPlayer
foreign import spawnWithoutBehaviors :: Test -> String -> Vector3 -> Entity
foreign import spawnWithoutBehaviorsAtLocation :: Test -> String -> Vector3 -> Entity
foreign import spreadFromFaceTowardDirection :: Test -> Vector3 -> Direction -> Direction -> Eff.Effect Unit
foreign import startSequence :: Test -> GameTestSequence
foreign import succeed :: Test -> Eff.Effect Unit
foreign import succeedIf :: Test -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import succeedOnTick :: Test -> Int -> Eff.Effect Unit
foreign import succeedOnTickWhen :: Test -> Int -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import succeedWhen :: Test -> (Unit -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import succeedWhenBlockPresent :: Test -> (BlockType |+| String) -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import succeedWhenEntityHasComponent :: Test -> String -> String -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import succeedWhenEntityPresent :: Test -> String -> Vector3 -> Boolean -> Eff.Effect Unit
foreign import triggerInternalBlockEvent :: Test -> Vector3 -> String -> Array (Number) -> Eff.Effect Unit
foreign import until :: Test -> (Unit -> Eff.Effect Unit) -> Promise (Eff.Effect Unit)
foreign import walkTo :: Test -> Entity -> Vector3 -> Number -> Eff.Effect Unit
foreign import walkToLocation :: Test -> Entity -> Vector3 -> Number -> Eff.Effect Unit
foreign import worldBlockLocation :: Test -> Vector3 -> Vector3
foreign import worldLocation :: Test -> Vector3 -> Vector3