module Minecraft.Server where
import Minecraft.Utils (class Event)
import Prelude
import Data.Map
import Data.Newtype
import Data.Nullable
import Untagged.Union
import Control.Promise
import Effect (Effect) as Eff
data BlockVolumeIntersection = BlockVolumeIntersection Number
data CompoundBlockVolumeAction = CompoundBlockVolumeAction Number
data CompoundBlockVolumePositionRelativity = CompoundBlockVolumePositionRelativity Number
data Direction = Direction String
data DisplaySlotId = DisplaySlotId String
data DyeColor = DyeColor String
data EasingType = EasingType String
data EntityDamageCause = EntityDamageCause String
data EntityLifetimeState = EntityLifetimeState String
data EquipmentSlot = EquipmentSlot String
data FluidType = FluidType String
data GameMode = GameMode String
data ItemLockMode = ItemLockMode String
data MoonPhase = MoonPhase Number
data ObjectiveSortOrder = ObjectiveSortOrder Number
data ScoreboardIdentityType = ScoreboardIdentityType String
data ScriptEventSource = ScriptEventSource String
data SignSide = SignSide String
data TimeOfDay = TimeOfDay Number
data WatchdogTerminateReason = WatchdogTerminateReason String
data WeatherType = WeatherType String
type BlockFillOptions = {
  matchingBlock :: Nullable (BlockPermutation)
}
type BlockHitInformation = {
  block :: Block,
  face :: Direction,
  faceLocation :: Vector3
}
type BlockRaycastHit = {
  block :: Block,
  face :: Direction,
  faceLocation :: Vector3
}
type BlockRaycastOptions = {
  includeLiquidBlocks :: Nullable (Boolean),
  includePassableBlocks :: Nullable (Boolean),
  maxDistance :: Nullable (Int)
}
type BlockVolume = {
  from :: Vector3,
  to :: Vector3
}
type BoundingBox = {
  max :: Vector3,
  min :: Vector3
}
type CameraEaseOptions = {
  easeTime :: Nullable (Number),
  easeType :: Nullable (EasingType)
}
type CameraFadeOptions = {
  fadeColor :: Nullable (RGB),
  fadeTime :: Nullable (CameraFadeTimeOptions)
}
type CameraFadeTimeOptions = {
  fadeInTime :: Number,
  fadeOutTime :: Number,
  holdTime :: Number
}
type CompoundBlockVolumeItem = {
  action :: Nullable (CompoundBlockVolumeAction),
  locationRelativity :: Nullable (CompoundBlockVolumePositionRelativity),
  volume :: BlockVolume
}
type DimensionLocation = {
  dimension :: Dimension,
  x :: Number,
  y :: Number,
  z :: Number
}
type EntityApplyDamageByProjectileOptions = {
  damagingEntity :: Nullable (Entity),
  damagingProjectile :: Entity
}
type EntityApplyDamageOptions = {
  cause :: EntityDamageCause,
  damagingEntity :: Nullable (Entity)
}
type EntityDamageSource = {
  cause :: EntityDamageCause,
  damagingEntity :: Nullable (Entity),
  damagingProjectile :: Nullable (Entity)
}
type EntityDataDrivenTriggerEventOptions = {
  entities :: Nullable (Array (Entity)),
  entityTypes :: Nullable (Array (String)),
  eventTypes :: Nullable (Array (String))
}
type EntityEffectOptions = {
  amplifier :: Nullable (Int),
  showParticles :: Nullable (Boolean)
}
type EntityEventOptions = {
  entities :: Nullable (Array (Entity)),
  entityTypes :: Nullable (Array (String))
}
type EntityHitInformation = {
  entity :: Entity
}
type EntityQueryOptions = {
  closest :: Nullable (Int),
  excludeFamilies :: Nullable (Array (String)),
  excludeGameModes :: Nullable (Array (GameMode)),
  excludeNames :: Nullable (Array (String)),
  excludeTags :: Nullable (Array (String)),
  excludeTypes :: Nullable (Array (String)),
  families :: Nullable (Array (String)),
  farthest :: Nullable (Int),
  gameMode :: Nullable (GameMode),
  location :: Nullable (Vector3),
  maxDistance :: Nullable (Number),
  maxHorizontalRotation :: Nullable (Number),
  maxLevel :: Nullable (Int),
  maxVerticalRotation :: Nullable (Number),
  minDistance :: Nullable (Number),
  minHorizontalRotation :: Nullable (Number),
  minLevel :: Nullable (Int),
  minVerticalRotation :: Nullable (Number),
  name :: Nullable (String),
  scoreOptions :: Nullable (Array (EntityQueryScoreOptions)),
  tags :: Nullable (Array (String)),
  "type" :: Nullable (String),
  volume :: Nullable (BlockAreaSize)
}
type EntityQueryScoreOptions = {
  exclude :: Nullable (Boolean),
  maxScore :: Nullable (Int),
  minScore :: Nullable (Int),
  objective :: Nullable (String)
}
type EntityRaycastHit = {
  distance :: Number,
  entity :: Entity
}
type EntityRaycastOptions = {
  maxDistance :: Nullable (Int)
}
type ExplosionOptions = {
  allowUnderwater :: Nullable (Boolean),
  breaksBlocks :: Nullable (Boolean),
  causesFire :: Nullable (Boolean),
  source :: Nullable (Entity)
}
type MusicOptions = {
  fade :: Nullable (Number),
  loop :: Nullable (Boolean),
  volume :: Nullable (Number)
}
type NumberRange = {
  max :: Number,
  min :: Number
}
type PlayAnimationOptions = {
  blendOutTime :: Nullable (Number),
  controller :: Nullable (String),
  nextState :: Nullable (String),
  stopExpression :: Nullable (String)
}
type PlayerSoundOptions = {
  location :: Nullable (Vector3),
  pitch :: Nullable (Number),
  volume :: Nullable (Number)
}
newtype RawMessage = RawMessage {
  rawtext :: Nullable (Array (RawMessage)),
  score :: Nullable (RawMessageScore),
  text :: Nullable (String),
  translate :: Nullable (String),
  with :: Nullable ((Array (String) |+| RawMessage))
}
type RawMessageScore = {
  name :: Nullable (String),
  objective :: Nullable (String)
}
type RawText = {
  rawtext :: Nullable (Array (RawMessage))
}
type RGB = {
  blue :: Number,
  green :: Number,
  red :: Number
}
type RGBA = {
  alpha :: Number,
  blue :: Number,
  green :: Number,
  red :: Number
}
type ScoreboardObjectiveDisplayOptions = {
  objective :: ScoreboardObjective,
  sortOrder :: Nullable (ObjectiveSortOrder)
}
type ScriptCameraDefaultOptions = {
  easeOptions :: CameraEaseOptions
}
type ScriptCameraSetFacingOptions = {
  easeOptions :: Nullable (CameraEaseOptions),
  facingEntity :: Entity,
  location :: Nullable (Vector3)
}
type ScriptCameraSetLocationOptions = {
  easeOptions :: Nullable (CameraEaseOptions),
  location :: Vector3
}
type ScriptCameraSetPosOptions = {
  easeOptions :: Nullable (CameraEaseOptions),
  facingLocation :: Vector3,
  location :: Nullable (Vector3)
}
type ScriptCameraSetRotOptions = {
  easeOptions :: Nullable (CameraEaseOptions),
  location :: Nullable (Vector3),
  rotation :: Vector2
}
type ScriptEventMessageFilterOptions = {
  namespaces :: Array (String)
}
type TeleportOptions = {
  checkForBlocks :: Nullable (Boolean),
  dimension :: Nullable (Dimension),
  facingLocation :: Nullable (Vector3),
  keepVelocity :: Nullable (Boolean),
  rotation :: Nullable (Vector2)
}
type TitleDisplayOptions = {
  fadeInDuration :: Int,
  fadeOutDuration :: Int,
  stayDuration :: Int,
  subtitle :: Nullable ((Array ((RawMessage |+| String)) |+| RawMessage |+| String))
}
type Vector2 = {
  x :: Number,
  y :: Number
}
type Vector3 = {
  x :: Number,
  y :: Number,
  z :: Number
}
type WorldSoundOptions = {
  pitch :: Nullable (Number),
  volume :: Nullable (Number)
}
type Block = {
  dimension :: Dimension,
  isAir :: Boolean,
  isLiquid :: Boolean,
  isSolid :: Boolean,
  isWaterlogged :: Boolean,
  location :: Vector3,
  permutation :: BlockPermutation,
  "type" :: BlockType,
  typeId :: String,
  x :: Int,
  y :: Int,
  z :: Int
}

type BlockAreaSize = {
  x :: Int,
  y :: Int,
  z :: Int
}

type BlockBreakAfterEvent = {
  brokenBlockPermutation :: BlockPermutation,
  player :: Player,
  block :: Block,
  dimension :: Dimension
}

data BlockBreakAfterEventSignal = BlockBreakAfterEventSignal

instance Event BlockBreakAfterEventSignal BlockBreakAfterEvent where
  subscribe = subscribe_BlockBreakAfterEventSignal
  unsubscribe = unsubscribe_BlockBreakAfterEventSignal

type BlockComponent = {
  block :: Block,
  typeId :: String
}

type BlockEvent = {
  block :: Block,
  dimension :: Dimension
}

type BlockExplodeAfterEvent = {
  explodedBlockPermutation :: BlockPermutation,
  source :: Nullable (Entity),
  block :: Block,
  dimension :: Dimension
}

data BlockExplodeAfterEventSignal = BlockExplodeAfterEventSignal

instance Event BlockExplodeAfterEventSignal BlockExplodeAfterEvent where
  subscribe = subscribe_BlockExplodeAfterEventSignal
  unsubscribe = unsubscribe_BlockExplodeAfterEventSignal

type BlockInventoryComponent = {
  container :: Container,
  block :: Block,
  typeId :: String,
  componentId :: String
}

type BlockLavaContainerComponent = {
  fillLevel :: Int,
  componentId :: String
}

type BlockLiquidContainerComponent = {
  fillLevel :: Int,
  block :: Block,
  typeId :: String
}

data BlockLocationIterator = BlockLocationIterator

type BlockPermutation = {
  "type" :: BlockType
}

type BlockPistonComponent = {
  isExpanded :: Boolean,
  isExpanding :: Boolean,
  isMoving :: Boolean,
  isRetracted :: Boolean,
  isRetracting :: Boolean,
  block :: Block,
  typeId :: String,
  componentId :: String
}

type BlockPlaceAfterEvent = {
  player :: Player,
  block :: Block,
  dimension :: Dimension
}

data BlockPlaceAfterEventSignal = BlockPlaceAfterEventSignal

instance Event BlockPlaceAfterEventSignal BlockPlaceAfterEvent where
  subscribe = subscribe_BlockPlaceAfterEventSignal
  unsubscribe = unsubscribe_BlockPlaceAfterEventSignal

type BlockPotionContainerComponent = {
  fillLevel :: Int,
  block :: Block,
  typeId :: String,
  componentId :: String
}

type BlockRecordPlayerComponent = {
  block :: Block,
  typeId :: String,
  componentId :: String
}

type BlockSignComponent = {
  isWaxed :: Boolean,
  block :: Block,
  typeId :: String,
  componentId :: String
}

type BlockSnowContainerComponent = {
  fillLevel :: Int,
  block :: Block,
  typeId :: String,
  componentId :: String
}

data BlockStates = BlockStates

type BlockStateType = {
  id :: String,
  validValues :: Array ((Boolean |+| Int |+| String))
}

type BlockType = {
  canBeWaterlogged :: Boolean,
  id :: String
}

data BlockTypes = BlockTypes

data BlockVolumeUtils = BlockVolumeUtils

type BlockWaterContainerComponent = {
  fillLevel :: Int,
  block :: Block,
  typeId :: String,
  componentId :: String
}

data BoundingBoxUtils = BoundingBoxUtils

type ButtonPushAfterEvent = {
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}

data ButtonPushAfterEventSignal = ButtonPushAfterEventSignal

instance Event ButtonPushAfterEventSignal ButtonPushAfterEvent where
  subscribe = subscribe_ButtonPushAfterEventSignal
  unsubscribe = unsubscribe_ButtonPushAfterEventSignal

data Camera = Camera

type ChatSendAfterEvent = {
  message :: String,
  sender :: Player,
  sendToTargets :: Boolean
}

data ChatSendAfterEventSignal = ChatSendAfterEventSignal

instance Event ChatSendAfterEventSignal ChatSendAfterEvent where
  subscribe = subscribe_ChatSendAfterEventSignal
  unsubscribe = unsubscribe_ChatSendAfterEventSignal

type ChatSendBeforeEvent = {
  cancel :: Boolean,
  message :: String,
  sender :: Player,
  sendToTargets :: Boolean
}

data ChatSendBeforeEventSignal = ChatSendBeforeEventSignal

instance Event ChatSendBeforeEventSignal ChatSendBeforeEvent where
  subscribe = subscribe_ChatSendBeforeEventSignal
  unsubscribe = unsubscribe_ChatSendBeforeEventSignal

type CommandResult = {
  successCount :: Int
}

type Component = {
  typeId :: String
}

type CompoundBlockVolume = {
  capacity :: Int,
  volumeCount :: Int
}

type Container = {
  emptySlotsCount :: Int,
  size :: Int
}

type ContainerSlot = {
  amount :: Int,
  isStackable :: Boolean,
  keepOnDeath :: Boolean,
  lockMode :: ItemLockMode,
  maxAmount :: Int,
  nameTag :: Nullable (String),
  "type" :: ItemType,
  typeId :: Nullable (String)
}

type DataDrivenEntityTriggerAfterEvent = {
  entity :: Entity,
  id :: String
}

data DataDrivenEntityTriggerAfterEventSignal = DataDrivenEntityTriggerAfterEventSignal


type DataDrivenEntityTriggerBeforeEvent = {
  cancel :: Boolean,
  entity :: Entity,
  id :: String
}

data DataDrivenEntityTriggerBeforeEventSignal = DataDrivenEntityTriggerBeforeEventSignal


data DefinitionModifier = DefinitionModifier

type Dimension = {
  id :: String
}

type DimensionType = {
  typeId :: String
}

data DimensionTypes = DimensionTypes

data DynamicPropertiesDefinition = DynamicPropertiesDefinition

type Effect = {
  amplifier :: Int,
  displayName :: String,
  duration :: Int,
  typeId :: String
}

type EffectAddAfterEvent = {
  effect :: Effect,
  effectState :: Int,
  entity :: Entity
}

data EffectAddAfterEventSignal = EffectAddAfterEventSignal


data EffectType = EffectType

data EffectTypes = EffectTypes

type Enchantment = {
  level :: Int,
  "type" :: EnchantmentType
}

type EnchantmentList = {
  slot :: Int
}

type EnchantmentSlot = {
  all :: Int,
  armorFeet :: Int,
  armorHead :: Int,
  armorLegs :: Int,
  armorTorso :: Int,
  axe :: Int,
  bow :: Int,
  carrotStick :: Int,
  cosmeticHead :: Int,
  crossbow :: Int,
  elytra :: Int,
  fishingRod :: Int,
  flintsteel :: Int,
  gArmor :: Int,
  gDigging :: Int,
  gTool :: Int,
  hoe :: Int,
  none :: Int,
  pickaxe :: Int,
  shears :: Int,
  shield :: Int,
  shovel :: Int,
  spear :: Int,
  sword :: Int
}

type EnchantmentType = {
  id :: String,
  maxLevel :: Int
}

data EnchantmentTypes = EnchantmentTypes

newtype Entity = Entity {
  dimension :: Dimension,
  fallDistance :: Number,
  id :: String,
  isClimbing :: Boolean,
  isFalling :: Boolean,
  isInWater :: Boolean,
  isOnGround :: Boolean,
  isSneaking :: Boolean,
  isSprinting :: Boolean,
  isSwimming :: Boolean,
  lifetimeState :: EntityLifetimeState,
  location :: Vector3,
  nameTag :: String,
  scoreboardIdentity :: Nullable (ScoreboardIdentity),
  target :: Entity,
  typeId :: String
}
derive instance newtypeEntity :: Newtype Entity _
type EntityAddRiderComponent = {
  entityType :: String,
  spawnEvent :: String,
  entity :: Entity,
  componentId :: String
}

type EntityAgeableComponent = {
  duration :: Number,
  growUp :: Trigger,
  entity :: Entity,
  componentId :: String
}

type EntityAttributeComponent = {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity
}

type EntityBaseMovementComponent = {
  maxTurn :: Number,
  entity :: Entity
}

type EntityBreathableComponent = {
  breathesAir :: Boolean,
  breathesLava :: Boolean,
  breathesSolids :: Boolean,
  breathesWater :: Boolean,
  generatesBubbles :: Boolean,
  inhaleTime :: Number,
  suffocateTime :: Int,
  totalSupply :: Int,
  entity :: Entity,
  componentId :: String
}

type EntityCanClimbComponent = {
  entity :: Entity,
  componentId :: String
}

type EntityCanFlyComponent = {
  entity :: Entity,
  componentId :: String
}

type EntityCanPowerJumpComponent = {
  entity :: Entity,
  componentId :: String
}

type EntityColorComponent = {
  value :: Int,
  entity :: Entity,
  componentId :: String
}

type EntityComponent = {
  entity :: Entity,
  typeId :: String
}

type EntityDefinitionFeedItem = {
  growth :: Number,
  item :: String
}

type EntityDieAfterEvent = {
  damageSource :: EntityDamageSource,
  deadEntity :: Entity
}

data EntityDieAfterEventSignal = EntityDieAfterEventSignal


type EntityEquippableComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityFireImmuneComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityFloatsInLiquidComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityFlyingSpeedComponent = {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityFrictionModifierComponent = {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityGroundOffsetComponent = {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityHealableComponent = {
  filters :: FilterGroup,
  forceUse :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityHealthChangedAfterEvent = {
  entity :: Entity,
  newValue :: Number,
  oldValue :: Number
}

data EntityHealthChangedAfterEventSignal = EntityHealthChangedAfterEventSignal


type EntityHealthComponent = {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityHitBlockAfterEvent = {
  blockFace :: Direction,
  damagingEntity :: Entity,
  hitBlock :: Block
}

data EntityHitBlockAfterEventSignal = EntityHitBlockAfterEventSignal


type EntityHitEntityAfterEvent = {
  damagingEntity :: Entity,
  hitEntity :: Entity
}

data EntityHitEntityAfterEventSignal = EntityHitEntityAfterEventSignal


type EntityHurtAfterEvent = {
  damage :: Number,
  damageSource :: EntityDamageSource,
  hurtEntity :: Entity
}

data EntityHurtAfterEventSignal = EntityHurtAfterEventSignal


type EntityInventoryComponent = {
  additionalSlotsPerStrength :: Int,
  canBeSiphonedFrom :: Boolean,
  container :: Container,
  containerType :: String,
  inventorySize :: Int,
  private :: Boolean,
  restrictToOwner :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsBabyComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsChargedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsChestedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsDyeableComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsHiddenWhenInvisibleComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsIgnitedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsIllagerCaptainComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsSaddledComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsShakingComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsShearedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsStackableComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsStunnedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityIsTamedComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityItemComponent = {
  itemStack :: ItemStack,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

data EntityIterator = EntityIterator

type EntityLavaMovementComponent = {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityLeashableComponent = {
  softDistance :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityMarkVariantComponent = {
  value :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityMountTamingComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityMovementAmphibiousComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementBasicComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementComponent = {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementFlyComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementGenericComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementGlideComponent = {
  speedWhenTurning :: Number,
  startSpeed :: Number,
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementHoverComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementJumpComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementSkipComponent = {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityMovementSwayComponent = {
  swayAmplitude :: Number,
  swayFrequency :: Number,
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityNavigationClimbComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  componentId :: String
}

type EntityNavigationComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String
}

type EntityNavigationFloatComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityNavigationFlyComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityNavigationGenericComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityNavigationHoverComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityNavigationWalkComponent = {
  avoidDamageBlocks :: Boolean,
  avoidPortals :: Boolean,
  avoidSun :: Boolean,
  avoidWater :: Boolean,
  canBreach :: Boolean,
  canBreakDoors :: Boolean,
  canFloat :: Boolean,
  canJump :: Boolean,
  canOpenDoors :: Boolean,
  canOpenIronDoors :: Boolean,
  canPassDoors :: Boolean,
  canPathFromAir :: Boolean,
  canPathOverLava :: Boolean,
  canPathOverWater :: Boolean,
  canSink :: Boolean,
  canSwim :: Boolean,
  canWalk :: Boolean,
  canWalkInLava :: Boolean,
  isAmphibious :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityOnFireComponent = {
  onFireTicksRemaining :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityPushThroughComponent = {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityRemovedAfterEvent = {
  removedEntity :: String
}

data EntityRemovedAfterEventSignal = EntityRemovedAfterEventSignal


type EntityRideableComponent = {
  controllingSeat :: Int,
  crouchingSkipInteract :: Boolean,
  interactText :: String,
  pullInEntities :: Boolean,
  riderCanInteract :: Boolean,
  seatCount :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityRidingComponent = {
  entityRidingOn :: Entity,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityScaleComponent = {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntitySkinIdComponent = {
  value :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntitySpawnAfterEvent = {
  entity :: Entity
}

data EntitySpawnAfterEventSignal = EntitySpawnAfterEventSignal

instance Event EntitySpawnAfterEventSignal EntitySpawnAfterEvent where
  subscribe = subscribe_EntitySpawnAfterEventSignal
  unsubscribe = unsubscribe_EntitySpawnAfterEventSignal

type EntityStrengthComponent = {
  max :: Int,
  value :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityTameableComponent = {
  probability :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityType = {
  id :: String
}

data EntityTypeIterator = EntityTypeIterator

data EntityTypes = EntityTypes

type EntityUnderwaterMovementComponent = {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}

type EntityVariantComponent = {
  value :: Int,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type EntityWantsJockeyComponent = {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}

type ExplosionAfterEvent = {
  dimension :: Dimension,
  source :: Nullable (Entity)
}

data ExplosionAfterEventSignal = ExplosionAfterEventSignal

instance Event ExplosionAfterEventSignal ExplosionAfterEvent where
  subscribe = subscribe_ExplosionAfterEventSignal
  unsubscribe = unsubscribe_ExplosionAfterEventSignal

type ExplosionBeforeEvent = {
  cancel :: Boolean,
  dimension :: Dimension,
  source :: Nullable (Entity)
}

data ExplosionBeforeEventSignal = ExplosionBeforeEventSignal

instance Event ExplosionBeforeEventSignal ExplosionBeforeEvent where
  subscribe = subscribe_ExplosionBeforeEventSignal
  unsubscribe = unsubscribe_ExplosionBeforeEventSignal

type FeedItem = {
  healAmount :: Int,
  item :: String
}

type FeedItemEffect = {
  amplifier :: Int,
  chance :: Number,
  duration :: Int,
  name :: String
}

data FilterGroup = FilterGroup

type FluidContainer = {
  maxFillLevel :: Int,
  minFillLevel :: Int
}

data IButtonPushAfterEventSignal = IButtonPushAfterEventSignal

instance Event IButtonPushAfterEventSignal ButtonPushAfterEvent where
  subscribe = subscribe_IButtonPushAfterEventSignal
  unsubscribe = unsubscribe_IButtonPushAfterEventSignal

data ILeverActionAfterEventSignal = ILeverActionAfterEventSignal

instance Event ILeverActionAfterEventSignal LeverActionAfterEvent where
  subscribe = subscribe_ILeverActionAfterEventSignal
  unsubscribe = unsubscribe_ILeverActionAfterEventSignal

data IPlayerJoinAfterEventSignal = IPlayerJoinAfterEventSignal

instance Event IPlayerJoinAfterEventSignal PlayerJoinAfterEvent where
  subscribe = subscribe_IPlayerJoinAfterEventSignal
  unsubscribe = unsubscribe_IPlayerJoinAfterEventSignal

data IPlayerLeaveAfterEventSignal = IPlayerLeaveAfterEventSignal

instance Event IPlayerLeaveAfterEventSignal PlayerLeaveAfterEvent where
  subscribe = subscribe_IPlayerLeaveAfterEventSignal
  unsubscribe = unsubscribe_IPlayerLeaveAfterEventSignal

data IPlayerSpawnAfterEventSignal = IPlayerSpawnAfterEventSignal

instance Event IPlayerSpawnAfterEventSignal PlayerSpawnAfterEvent where
  subscribe = subscribe_IPlayerSpawnAfterEventSignal
  unsubscribe = unsubscribe_IPlayerSpawnAfterEventSignal

type ItemCompleteUseAfterEvent = {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Int
}

data ItemCompleteUseAfterEventSignal = ItemCompleteUseAfterEventSignal

instance Event ItemCompleteUseAfterEventSignal ItemCompleteUseAfterEvent where
  subscribe = subscribe_ItemCompleteUseAfterEventSignal
  unsubscribe = unsubscribe_ItemCompleteUseAfterEventSignal

type ItemComponent = {
  typeId :: String
}

type ItemCooldownComponent = {
  cooldownCategory :: String,
  cooldownTicks :: Int,
  typeId :: String,
  componentId :: String
}

data ItemDefinitionAfterEventSignal = ItemDefinitionAfterEventSignal

instance Event ItemDefinitionAfterEventSignal ItemDefinitionTriggeredAfterEvent where
  subscribe = subscribe_ItemDefinitionAfterEventSignal
  unsubscribe = unsubscribe_ItemDefinitionAfterEventSignal

data ItemDefinitionBeforeEventSignal = ItemDefinitionBeforeEventSignal

instance Event ItemDefinitionBeforeEventSignal ItemDefinitionTriggeredBeforeEvent where
  subscribe = subscribe_ItemDefinitionBeforeEventSignal
  unsubscribe = unsubscribe_ItemDefinitionBeforeEventSignal

type ItemDefinitionTriggeredAfterEvent = {
  eventName :: String,
  itemStack :: ItemStack,
  source :: Player
}

type ItemDefinitionTriggeredBeforeEvent = {
  cancel :: Boolean,
  eventName :: String,
  itemStack :: ItemStack,
  source :: Player
}

type ItemDurabilityComponent = {
  damage :: Int,
  maxDurability :: Int,
  typeId :: String,
  componentId :: String
}

type ItemEnchantsComponent = {
  enchantments :: EnchantmentList,
  typeId :: String,
  componentId :: String
}

type ItemFoodComponent = {
  canAlwaysEat :: Boolean,
  nutrition :: Int,
  saturationModifier :: Number,
  usingConvertsTo :: String,
  typeId :: String,
  componentId :: String
}

type ItemReleaseUseAfterEvent = {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Int
}

data ItemReleaseUseAfterEventSignal = ItemReleaseUseAfterEventSignal

instance Event ItemReleaseUseAfterEventSignal ItemReleaseUseAfterEvent where
  subscribe = subscribe_ItemReleaseUseAfterEventSignal
  unsubscribe = unsubscribe_ItemReleaseUseAfterEventSignal

type ItemStack = {
  amount :: Int,
  isStackable :: Boolean,
  keepOnDeath :: Boolean,
  lockMode :: ItemLockMode,
  maxAmount :: Int,
  nameTag :: Nullable (String),
  "type" :: ItemType,
  typeId :: String
}

type ItemStartUseAfterEvent = {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Int
}

data ItemStartUseAfterEventSignal = ItemStartUseAfterEventSignal

instance Event ItemStartUseAfterEventSignal ItemStartUseAfterEvent where
  subscribe = subscribe_ItemStartUseAfterEventSignal
  unsubscribe = unsubscribe_ItemStartUseAfterEventSignal

type ItemStartUseOnAfterEvent = {
  block :: Block,
  blockFace :: Direction,
  itemStack :: ItemStack,
  source :: Player
}

data ItemStartUseOnAfterEventSignal = ItemStartUseOnAfterEventSignal

instance Event ItemStartUseOnAfterEventSignal ItemStartUseOnAfterEvent where
  subscribe = subscribe_ItemStartUseOnAfterEventSignal
  unsubscribe = unsubscribe_ItemStartUseOnAfterEventSignal

type ItemStopUseAfterEvent = {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Int
}

data ItemStopUseAfterEventSignal = ItemStopUseAfterEventSignal

instance Event ItemStopUseAfterEventSignal ItemStopUseAfterEvent where
  subscribe = subscribe_ItemStopUseAfterEventSignal
  unsubscribe = unsubscribe_ItemStopUseAfterEventSignal

type ItemStopUseOnAfterEvent = {
  block :: Block,
  itemStack :: Nullable (ItemStack),
  source :: Player
}

data ItemStopUseOnAfterEventSignal = ItemStopUseOnAfterEventSignal

instance Event ItemStopUseOnAfterEventSignal ItemStopUseOnAfterEvent where
  subscribe = subscribe_ItemStopUseOnAfterEventSignal
  unsubscribe = unsubscribe_ItemStopUseOnAfterEventSignal

type ItemType = {
  id :: String
}

data ItemTypes = ItemTypes

type ItemUseAfterEvent = {
  itemStack :: ItemStack,
  source :: Player
}

data ItemUseAfterEventSignal = ItemUseAfterEventSignal

instance Event ItemUseAfterEventSignal ItemUseAfterEvent where
  subscribe = subscribe_ItemUseAfterEventSignal
  unsubscribe = unsubscribe_ItemUseAfterEventSignal

type ItemUseBeforeEvent = {
  cancel :: Boolean,
  itemStack :: ItemStack,
  source :: Player
}

data ItemUseBeforeEventSignal = ItemUseBeforeEventSignal

instance Event ItemUseBeforeEventSignal ItemUseBeforeEvent where
  subscribe = subscribe_ItemUseBeforeEventSignal
  unsubscribe = unsubscribe_ItemUseBeforeEventSignal

type ItemUseOnAfterEvent = {
  block :: Block,
  blockFace :: Direction,
  faceLocation :: Vector3,
  itemStack :: ItemStack,
  source :: Player
}

data ItemUseOnAfterEventSignal = ItemUseOnAfterEventSignal

instance Event ItemUseOnAfterEventSignal ItemUseOnAfterEvent where
  subscribe = subscribe_ItemUseOnAfterEventSignal
  unsubscribe = unsubscribe_ItemUseOnAfterEventSignal

type ItemUseOnBeforeEvent = {
  cancel :: Boolean,
  block :: Block,
  blockFace :: Direction,
  faceLocation :: Vector3,
  itemStack :: ItemStack,
  source :: Player
}

data ItemUseOnBeforeEventSignal = ItemUseOnBeforeEventSignal

instance Event ItemUseOnBeforeEventSignal ItemUseOnBeforeEvent where
  subscribe = subscribe_ItemUseOnBeforeEventSignal
  unsubscribe = unsubscribe_ItemUseOnBeforeEventSignal

type LeverActionAfterEvent = {
  isPowered :: Boolean,
  player :: Player,
  block :: Block,
  dimension :: Dimension
}

data LeverActionAfterEventSignal = LeverActionAfterEventSignal

instance Event LeverActionAfterEventSignal LeverActionAfterEvent where
  subscribe = subscribe_LeverActionAfterEventSignal
  unsubscribe = unsubscribe_LeverActionAfterEventSignal

type MessageReceiveAfterEvent = {
  id :: String,
  message :: String,
  player :: Player
}

type MinecraftDimensionTypes = {
  nether :: String,
  overworld :: String,
  theEnd :: String
}

data MolangVariableMap = MolangVariableMap

type NavigationResult = {
  isFullPath :: Boolean
}

type PistonActivateAfterEvent = {
  isExpanding :: Boolean,
  piston :: BlockPistonComponent,
  block :: Block,
  dimension :: Dimension
}

data PistonActivateAfterEventSignal = PistonActivateAfterEventSignal

instance Event PistonActivateAfterEventSignal PistonActivateAfterEvent where
  subscribe = subscribe_PistonActivateAfterEventSignal
  unsubscribe = unsubscribe_PistonActivateAfterEventSignal

type PistonActivateBeforeEvent = {
  cancel :: Boolean,
  isExpanding :: Boolean,
  piston :: BlockPistonComponent,
  block :: Block,
  dimension :: Dimension
}

data PistonActivateBeforeEventSignal = PistonActivateBeforeEventSignal

instance Event PistonActivateBeforeEventSignal PistonActivateBeforeEvent where
  subscribe = subscribe_PistonActivateBeforeEventSignal
  unsubscribe = unsubscribe_PistonActivateBeforeEventSignal

type Player = {
  camera :: Camera,
  isFlying :: Boolean,
  isGliding :: Boolean,
  isJumping :: Boolean,
  level :: Int,
  name :: String,
  onScreenDisplay :: ScreenDisplay,
  selectedSlot :: Int,
  totalXpNeededForNextLevel :: Int,
  xpEarnedAtCurrentLevel :: Int,
  dimension :: Dimension,
  fallDistance :: Number,
  id :: String,
  isClimbing :: Boolean,
  isFalling :: Boolean,
  isInWater :: Boolean,
  isOnGround :: Boolean,
  isSneaking :: Boolean,
  isSprinting :: Boolean,
  isSwimming :: Boolean,
  lifetimeState :: EntityLifetimeState,
  location :: Vector3,
  nameTag :: String,
  scoreboardIdentity :: Nullable (ScoreboardIdentity),
  target :: Entity,
  typeId :: String
}

data PlayerIterator = PlayerIterator

type PlayerJoinAfterEvent = {
  playerId :: String,
  playerName :: String
}

data PlayerJoinAfterEventSignal = PlayerJoinAfterEventSignal

instance Event PlayerJoinAfterEventSignal PlayerJoinAfterEvent where
  subscribe = subscribe_PlayerJoinAfterEventSignal
  unsubscribe = unsubscribe_PlayerJoinAfterEventSignal

type PlayerLeaveAfterEvent = {
  playerId :: String,
  playerName :: String
}

data PlayerLeaveAfterEventSignal = PlayerLeaveAfterEventSignal

instance Event PlayerLeaveAfterEventSignal PlayerLeaveAfterEvent where
  subscribe = subscribe_PlayerLeaveAfterEventSignal
  unsubscribe = unsubscribe_PlayerLeaveAfterEventSignal

type PlayerSpawnAfterEvent = {
  initialSpawn :: Boolean,
  player :: Player
}

data PlayerSpawnAfterEventSignal = PlayerSpawnAfterEventSignal

instance Event PlayerSpawnAfterEventSignal PlayerSpawnAfterEvent where
  subscribe = subscribe_PlayerSpawnAfterEventSignal
  unsubscribe = unsubscribe_PlayerSpawnAfterEventSignal

type PressurePlatePopAfterEvent = {
  previousRedstonePower :: Int,
  redstonePower :: Int,
  block :: Block,
  dimension :: Dimension
}

data PressurePlatePopAfterEventSignal = PressurePlatePopAfterEventSignal

instance Event PressurePlatePopAfterEventSignal PressurePlatePopAfterEvent where
  subscribe = subscribe_PressurePlatePopAfterEventSignal
  unsubscribe = unsubscribe_PressurePlatePopAfterEventSignal

type PressurePlatePushAfterEvent = {
  previousRedstonePower :: Int,
  redstonePower :: Int,
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}

data PressurePlatePushAfterEventSignal = PressurePlatePushAfterEventSignal

instance Event PressurePlatePushAfterEventSignal PressurePlatePushAfterEvent where
  subscribe = subscribe_PressurePlatePushAfterEventSignal
  unsubscribe = unsubscribe_PressurePlatePushAfterEventSignal

type ProjectileHitBlockAfterEvent = {
  dimension :: Dimension,
  hitVector :: Vector3,
  location :: Vector3,
  projectile :: Entity,
  source :: Nullable (Entity)
}

data ProjectileHitBlockAfterEventSignal = ProjectileHitBlockAfterEventSignal

instance Event ProjectileHitBlockAfterEventSignal ProjectileHitBlockAfterEvent where
  subscribe = subscribe_ProjectileHitBlockAfterEventSignal
  unsubscribe = unsubscribe_ProjectileHitBlockAfterEventSignal

type ProjectileHitEntityAfterEvent = {
  dimension :: Dimension,
  hitVector :: Vector3,
  location :: Vector3,
  projectile :: Entity,
  source :: Nullable (Entity)
}

data ProjectileHitEntityAfterEventSignal = ProjectileHitEntityAfterEventSignal

instance Event ProjectileHitEntityAfterEventSignal ProjectileHitEntityAfterEvent where
  subscribe = subscribe_ProjectileHitEntityAfterEventSignal
  unsubscribe = unsubscribe_ProjectileHitEntityAfterEventSignal

data PropertyRegistry = PropertyRegistry

data Scoreboard = Scoreboard

type ScoreboardIdentity = {
  displayName :: String,
  id :: Int,
  "type" :: ScoreboardIdentityType
}

type ScoreboardObjective = {
  displayName :: String,
  id :: String
}

type ScoreboardScoreInfo = {
  participant :: ScoreboardIdentity,
  score :: Int
}

data ScreenDisplay = ScreenDisplay

type ScriptEventCommandMessageAfterEvent = {
  id :: String,
  initiator :: Nullable (Entity),
  message :: String,
  sourceBlock :: Nullable (Block),
  sourceEntity :: Nullable (Entity),
  sourceType :: ScriptEventSource
}

data ScriptEventCommandMessageAfterEventSignal = ScriptEventCommandMessageAfterEventSignal


type Seat = {
  lockRiderRotation :: Number,
  maxRiderCount :: Int,
  minRiderCount :: Int,
  position :: Vector3
}

data ServerMessageAfterEventSignal = ServerMessageAfterEventSignal

instance Event ServerMessageAfterEventSignal MessageReceiveAfterEvent where
  subscribe = subscribe_ServerMessageAfterEventSignal
  unsubscribe = unsubscribe_ServerMessageAfterEventSignal

type System = {
  afterEvents :: SystemAfterEvents,
  beforeEvents :: SystemBeforeEvents,
  currentTick :: Int
}

type SystemAfterEvents = {
  scriptEventReceive :: ScriptEventCommandMessageAfterEventSignal
}

type SystemBeforeEvents = {
  watchdogTerminate :: WatchdogTerminateBeforeEventSignal
}

type TargetBlockHitAfterEvent = {
  hitVector :: Vector3,
  previousRedstonePower :: Int,
  redstonePower :: Int,
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}

data TargetBlockHitAfterEventSignal = TargetBlockHitAfterEventSignal

instance Event TargetBlockHitAfterEventSignal TargetBlockHitAfterEvent where
  subscribe = subscribe_TargetBlockHitAfterEventSignal
  unsubscribe = unsubscribe_TargetBlockHitAfterEventSignal

type Trigger = {
  eventName :: String
}

type TripWireTripAfterEvent = {
  isPowered :: Boolean,
  sources :: Array (Entity),
  block :: Block,
  dimension :: Dimension
}

data TripWireTripAfterEventSignal = TripWireTripAfterEventSignal

instance Event TripWireTripAfterEventSignal TripWireTripAfterEvent where
  subscribe = subscribe_TripWireTripAfterEventSignal
  unsubscribe = unsubscribe_TripWireTripAfterEventSignal

newtype Vector = Vector {
  x :: Number,
  y :: Number,
  z :: Number,
  back :: Vector,
  down :: Vector,
  forward :: Vector,
  left :: Vector,
  one :: Vector,
  right :: Vector,
  up :: Vector,
  zero :: Vector
}
derive instance newtypeVector :: Newtype Vector _
type WatchdogTerminateBeforeEvent = {
  cancel :: Boolean,
  terminateReason :: WatchdogTerminateReason
}

data WatchdogTerminateBeforeEventSignal = WatchdogTerminateBeforeEventSignal

instance Event WatchdogTerminateBeforeEventSignal WatchdogTerminateBeforeEvent where
  subscribe = subscribe_WatchdogTerminateBeforeEventSignal
  unsubscribe = unsubscribe_WatchdogTerminateBeforeEventSignal

type WeatherChangeAfterEvent = {
  dimension :: String,
  lightning :: Boolean,
  raining :: Boolean
}

data WeatherChangeAfterEventSignal = WeatherChangeAfterEventSignal

instance Event WeatherChangeAfterEventSignal WeatherChangeAfterEvent where
  subscribe = subscribe_WeatherChangeAfterEventSignal
  unsubscribe = unsubscribe_WeatherChangeAfterEventSignal

type World = {
  afterEvents :: WorldAfterEvents,
  beforeEvents :: WorldBeforeEvents,
  scoreboard :: Scoreboard
}

type WorldAfterEvents = {
  blockBreak :: BlockBreakAfterEventSignal,
  blockExplode :: BlockExplodeAfterEventSignal,
  blockPlace :: BlockPlaceAfterEventSignal,
  buttonPush :: ButtonPushAfterEventSignal,
  chatSend :: ChatSendAfterEventSignal,
  dataDrivenEntityTriggerEvent :: DataDrivenEntityTriggerAfterEventSignal,
  effectAdd :: EffectAddAfterEventSignal,
  entityDie :: EntityDieAfterEventSignal,
  entityHealthChanged :: EntityHealthChangedAfterEventSignal,
  entityHitBlock :: EntityHitBlockAfterEventSignal,
  entityHitEntity :: EntityHitEntityAfterEventSignal,
  entityHurt :: EntityHurtAfterEventSignal,
  entityRemoved :: EntityRemovedAfterEventSignal,
  entitySpawn :: EntitySpawnAfterEventSignal,
  explosion :: ExplosionAfterEventSignal,
  itemCompleteUse :: ItemCompleteUseAfterEventSignal,
  itemDefinitionEvent :: ItemDefinitionAfterEventSignal,
  itemReleaseUse :: ItemReleaseUseAfterEventSignal,
  itemStartUse :: ItemStartUseAfterEventSignal,
  itemStartUseOn :: ItemStartUseOnAfterEventSignal,
  itemStopUse :: ItemStopUseAfterEventSignal,
  itemStopUseOn :: ItemStopUseOnAfterEventSignal,
  itemUse :: ItemUseAfterEventSignal,
  itemUseOn :: ItemUseOnAfterEventSignal,
  leverAction :: LeverActionAfterEventSignal,
  messageReceive :: ServerMessageAfterEventSignal,
  pistonActivate :: PistonActivateAfterEventSignal,
  playerJoin :: PlayerJoinAfterEventSignal,
  playerLeave :: PlayerLeaveAfterEventSignal,
  playerSpawn :: PlayerSpawnAfterEventSignal,
  pressurePlatePop :: PressurePlatePopAfterEventSignal,
  pressurePlatePush :: PressurePlatePushAfterEventSignal,
  projectileHitBlock :: ProjectileHitBlockAfterEventSignal,
  projectileHitEntity :: ProjectileHitEntityAfterEventSignal,
  targetBlockHit :: TargetBlockHitAfterEventSignal,
  tripWireTrip :: TripWireTripAfterEventSignal,
  weatherChange :: WeatherChangeAfterEventSignal,
  worldInitialize :: WorldInitializeAfterEventSignal
}

type WorldBeforeEvents = {
  chatSend :: ChatSendBeforeEventSignal,
  dataDrivenEntityTriggerEvent :: DataDrivenEntityTriggerBeforeEventSignal,
  explosion :: ExplosionBeforeEventSignal,
  itemDefinitionEvent :: ItemDefinitionBeforeEventSignal,
  itemUse :: ItemUseBeforeEventSignal,
  itemUseOn :: ItemUseOnBeforeEventSignal,
  pistonActivate :: PistonActivateBeforeEventSignal
}

type WorldInitializeAfterEvent = {
  propertyRegistry :: PropertyRegistry
}

data WorldInitializeAfterEventSignal = WorldInitializeAfterEventSignal

instance Event WorldInitializeAfterEventSignal WorldInitializeAfterEvent where
  subscribe = subscribe_WorldInitializeAfterEventSignal
  unsubscribe = unsubscribe_WorldInitializeAfterEventSignal

foreign import canPlace :: Block -> (BlockPermutation |+| BlockType |+| String) -> Nullable (Direction) -> Boolean
foreign import getComponent_Block :: Block -> String -> Nullable (BlockComponent)
foreign import getItemStack_Block :: Block -> Int -> Boolean -> ItemStack
foreign import getRedstonePower :: Block -> Nullable (Int)
foreign import getTags_Block :: Block -> Array (String)
foreign import hasTag_Block :: Block -> String -> Boolean
foreign import isValid_Block :: Block -> Boolean
foreign import setPermutation :: Block -> BlockPermutation -> Eff.Effect Unit
foreign import setType :: Block -> (BlockType |+| String) -> Eff.Effect Unit
foreign import trySetPermutation :: Block -> BlockPermutation -> Boolean
foreign import mk_BlockAreaSize :: Number -> Number -> Number -> BlockAreaSize
foreign import equals_BlockAreaSize :: BlockAreaSize -> BlockAreaSize -> Boolean
foreign import subscribe_BlockBreakAfterEventSignal :: BlockBreakAfterEventSignal -> (BlockBreakAfterEvent -> Eff.Effect Unit) -> (BlockBreakAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_BlockBreakAfterEventSignal :: BlockBreakAfterEventSignal -> (BlockBreakAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_BlockComponent :: BlockComponent -> Boolean
foreign import subscribe_BlockExplodeAfterEventSignal :: BlockExplodeAfterEventSignal -> (BlockExplodeAfterEvent -> Eff.Effect Unit) -> (BlockExplodeAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_BlockExplodeAfterEventSignal :: BlockExplodeAfterEventSignal -> (BlockExplodeAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_BlockInventoryComponent :: BlockInventoryComponent -> Boolean
foreign import isValidLiquid_BlockLavaContainerComponent :: BlockLavaContainerComponent -> Boolean
foreign import isValidLiquid_BlockLiquidContainerComponent :: BlockLiquidContainerComponent -> Boolean
foreign import isValid_BlockLiquidContainerComponent :: BlockLiquidContainerComponent -> Boolean
foreign import clone_BlockPermutation :: BlockPermutation -> BlockPermutation
foreign import getAllStates :: BlockPermutation -> Map String (Boolean |+| Int |+| String)
foreign import getItemStack_BlockPermutation :: BlockPermutation -> Int -> ItemStack
foreign import getState :: BlockPermutation -> String -> Nullable ((Boolean |+| Int |+| String))
foreign import getTags_BlockPermutation :: BlockPermutation -> Array (String)
foreign import hasTag_BlockPermutation :: BlockPermutation -> String -> Boolean
foreign import matches :: BlockPermutation -> String -> Nullable (Map String (Boolean |+| Int |+| String)) -> Boolean
foreign import resolve :: String -> Nullable (Map String (Boolean |+| Int |+| String)) -> BlockPermutation
foreign import withState :: BlockPermutation -> String -> (Boolean |+| Int |+| String) -> BlockPermutation
foreign import getAttachedBlocks :: BlockPistonComponent -> Array (Vector3)
foreign import isValid_BlockPistonComponent :: BlockPistonComponent -> Boolean
foreign import subscribe_BlockPlaceAfterEventSignal :: BlockPlaceAfterEventSignal -> (BlockPlaceAfterEvent -> Eff.Effect Unit) -> (BlockPlaceAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_BlockPlaceAfterEventSignal :: BlockPlaceAfterEventSignal -> (BlockPlaceAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setPotionType :: BlockPotionContainerComponent -> ItemStack -> Eff.Effect Unit
foreign import isValidLiquid_BlockPotionContainerComponent :: BlockPotionContainerComponent -> Boolean
foreign import isValid_BlockPotionContainerComponent :: BlockPotionContainerComponent -> Boolean
foreign import clearRecord :: BlockRecordPlayerComponent -> Eff.Effect Unit
foreign import isPlaying :: BlockRecordPlayerComponent -> Boolean
foreign import setRecord :: BlockRecordPlayerComponent -> (ItemType |+| String) -> Eff.Effect Unit
foreign import isValid_BlockRecordPlayerComponent :: BlockRecordPlayerComponent -> Boolean
foreign import getRawText :: BlockSignComponent -> SignSide -> Nullable (RawText)
foreign import getText :: BlockSignComponent -> SignSide -> Nullable (String)
foreign import getTextDyeColor :: BlockSignComponent -> SignSide -> Nullable (DyeColor)
foreign import setText :: BlockSignComponent -> (RawMessage |+| RawText |+| String) -> SignSide -> Eff.Effect Unit
foreign import setTextDyeColor :: BlockSignComponent -> Nullable (DyeColor) -> SignSide -> Eff.Effect Unit
foreign import setWaxed :: BlockSignComponent -> Eff.Effect Unit
foreign import isValid_BlockSignComponent :: BlockSignComponent -> Boolean
foreign import isValidLiquid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import isValid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import get_BlockStates :: String -> BlockStateType
foreign import getAll_BlockStates :: Array (BlockStateType)
foreign import get_BlockTypes :: String -> Nullable (BlockType)
foreign import getAll_BlockTypes :: Array (BlockType)
foreign import doesLocationTouchFaces :: BlockVolume -> Vector3 -> Boolean
foreign import doesVolumeTouchFaces :: BlockVolume -> BlockVolume -> Boolean
foreign import equals_BlockVolumeUtils :: BlockVolume -> BlockVolume -> Boolean
foreign import getBlockLocationIterator_BlockVolumeUtils :: BlockVolume -> BlockLocationIterator
foreign import getBoundingBox_BlockVolumeUtils :: BlockVolume -> BoundingBox
foreign import getCapacity :: BlockVolume -> Int
foreign import getMax_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import getMin_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import getSpan_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import intersects_BlockVolumeUtils :: BlockVolume -> BlockVolume -> BlockVolumeIntersection
foreign import isInside_BlockVolumeUtils :: BlockVolume -> Vector3 -> Boolean
foreign import translate_BlockVolumeUtils :: BlockVolume -> Vector3 -> BlockVolume
foreign import addDye :: BlockWaterContainerComponent -> ItemType -> Eff.Effect Unit
foreign import getCustomColor :: BlockWaterContainerComponent -> RGBA
foreign import setCustomColor :: BlockWaterContainerComponent -> RGBA -> Eff.Effect Unit
foreign import isValidLiquid_BlockWaterContainerComponent :: BlockWaterContainerComponent -> Boolean
foreign import isValid_BlockWaterContainerComponent :: BlockWaterContainerComponent -> Boolean
foreign import createValid :: Vector3 -> Vector3 -> BoundingBox
foreign import dilate :: BoundingBox -> Vector3 -> BoundingBox
foreign import equals_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Boolean
foreign import expand :: BoundingBox -> BoundingBox -> BoundingBox
foreign import getCenter :: BoundingBox -> Vector3
foreign import getIntersection :: BoundingBox -> BoundingBox -> Nullable (BoundingBox)
foreign import getSpan_BoundingBoxUtils :: BoundingBox -> Vector3
foreign import intersects_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Boolean
foreign import isInside_BoundingBoxUtils :: BoundingBox -> Vector3 -> Boolean
foreign import isValid_BoundingBoxUtils :: BoundingBox -> Boolean
foreign import translate_BoundingBoxUtils :: BoundingBox -> Vector3 -> BoundingBox
foreign import subscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> (ButtonPushAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clear_Camera :: Camera -> Eff.Effect Unit
foreign import fade :: Camera -> Nullable (CameraFadeOptions) -> Eff.Effect Unit
foreign import setCamera :: Camera -> String -> Nullable (Nullable ((ScriptCameraDefaultOptions |+| ScriptCameraSetFacingOptions |+| ScriptCameraSetLocationOptions |+| ScriptCameraSetPosOptions |+| ScriptCameraSetRotOptions))) -> Eff.Effect Unit
foreign import getTargets_ChatSendAfterEvent :: ChatSendAfterEvent -> Array (Player)
foreign import subscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> (ChatSendAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setTargets :: ChatSendBeforeEvent -> Array (Player) -> Eff.Effect Unit
foreign import getTargets_ChatSendBeforeEvent :: ChatSendBeforeEvent -> Array (Player)
foreign import subscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> (ChatSendBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_Component :: Component -> Boolean
foreign import clear_CompoundBlockVolume :: CompoundBlockVolume -> Eff.Effect Unit
foreign import mk_CompoundBlockVolume :: Nullable (Vector3) -> CompoundBlockVolume
foreign import getBlockLocationIterator_CompoundBlockVolume :: CompoundBlockVolume -> BlockLocationIterator
foreign import getBoundingBox_CompoundBlockVolume :: CompoundBlockVolume -> BoundingBox
foreign import getMax_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getMin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getOrigin :: CompoundBlockVolume -> Vector3
foreign import isEmpty :: CompoundBlockVolume -> Boolean
foreign import isInside_CompoundBlockVolume :: CompoundBlockVolume -> Vector3 -> Boolean
foreign import peekLastVolume :: CompoundBlockVolume -> Nullable (CompoundBlockVolumePositionRelativity) -> Nullable (CompoundBlockVolumeItem)
foreign import popVolume :: CompoundBlockVolume -> Boolean
foreign import pushVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Eff.Effect Unit
foreign import replaceOrAddLastVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Boolean
foreign import setOrigin :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
foreign import translateOrigin :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
foreign import addItem :: Container -> ItemStack -> ItemStack
foreign import clearAll :: Container -> Eff.Effect Unit
foreign import getItem_Container :: Container -> Int -> Nullable (ItemStack)
foreign import getSlot :: Container -> Int -> ContainerSlot
foreign import isValid_Container :: Container -> Boolean
foreign import moveItem :: Container -> Int -> Int -> Container -> Eff.Effect Unit
foreign import setItem_Container :: Container -> Int -> Nullable (ItemStack) -> Eff.Effect Unit
foreign import swapItems :: Container -> Int -> Int -> Container -> Eff.Effect Unit
foreign import transferItem :: Container -> Int -> Container -> ItemStack
foreign import getItem_ContainerSlot :: ContainerSlot -> Nullable (ItemStack)
foreign import getLore_ContainerSlot :: ContainerSlot -> Array (String)
foreign import getTags_ContainerSlot :: ContainerSlot -> Array (String)
foreign import hasTag_ContainerSlot :: ContainerSlot -> String -> Boolean
foreign import isStackableWith_ContainerSlot :: ContainerSlot -> ItemStack -> Boolean
foreign import isValid_ContainerSlot :: ContainerSlot -> Boolean
foreign import setCanDestroy_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import setCanPlaceOn_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import setItem_ContainerSlot :: ContainerSlot -> Nullable (ItemStack) -> Eff.Effect Unit
foreign import setLore_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import getModifiers_DataDrivenEntityTriggerAfterEvent :: DataDrivenEntityTriggerAfterEvent -> Array (DefinitionModifier)
foreign import subscribe_DataDrivenEntityTriggerAfterEventSignal :: DataDrivenEntityTriggerAfterEventSignal -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit) -> Nullable (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_DataDrivenEntityTriggerAfterEventSignal :: DataDrivenEntityTriggerAfterEventSignal -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getModifiers_DataDrivenEntityTriggerBeforeEvent :: DataDrivenEntityTriggerBeforeEvent -> Array (DefinitionModifier)
foreign import setModifiers :: DataDrivenEntityTriggerBeforeEvent -> Array (DefinitionModifier) -> Eff.Effect Unit
foreign import subscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Nullable (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import mk_DefinitionModifier :: DefinitionModifier
foreign import getComponentGroupsToAdd :: DefinitionModifier -> Array (String)
foreign import getComponentGroupsToRemove :: DefinitionModifier -> Array (String)
foreign import getTriggers :: DefinitionModifier -> Array (Trigger)
foreign import setComponentGroupsToAdd :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setComponentGroupsToRemove :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setTriggers :: DefinitionModifier -> Array (Trigger) -> Eff.Effect Unit
foreign import createExplosion :: Dimension -> Vector3 -> Number -> Nullable (ExplosionOptions) -> Eff.Effect Unit
foreign import fillBlocks :: Dimension -> Vector3 -> Vector3 -> (BlockPermutation |+| BlockType |+| String) -> Nullable (BlockFillOptions) -> Int
foreign import getBlock :: Dimension -> Vector3 -> Nullable (Block)
foreign import getBlockFromRay :: Dimension -> Vector3 -> Vector3 -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
foreign import getEntities :: Dimension -> Nullable (EntityQueryOptions) -> Array (Entity)
foreign import getEntitiesAtBlockLocation :: Dimension -> Vector3 -> Array (Entity)
foreign import getEntitiesFromRay :: Dimension -> Vector3 -> Vector3 -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
foreign import getPlayers_Dimension :: Dimension -> Nullable (EntityQueryOptions) -> Array (Player)
foreign import runCommand_Dimension :: Dimension -> String -> CommandResult
foreign import runCommandAsync_Dimension :: Dimension -> String -> Promise (CommandResult)
foreign import setWeather :: Dimension -> WeatherType -> Eff.Effect Unit
foreign import spawnEntity :: Dimension -> String -> Vector3 -> Entity
foreign import spawnItem :: Dimension -> ItemStack -> Vector3 -> Entity
foreign import spawnParticle :: Dimension -> String -> Vector3 -> Nullable (MolangVariableMap) -> Eff.Effect Unit
foreign import get_DimensionTypes :: String -> Nullable (DimensionType)
foreign import getAll_DimensionTypes :: Array (DimensionType)
foreign import mk_DynamicPropertiesDefinition :: DynamicPropertiesDefinition
foreign import defineBoolean :: DynamicPropertiesDefinition -> String -> Nullable (Boolean) -> DynamicPropertiesDefinition
foreign import defineNumber :: DynamicPropertiesDefinition -> String -> Nullable (Number) -> DynamicPropertiesDefinition
foreign import defineString :: DynamicPropertiesDefinition -> String -> Int -> Nullable (String) -> DynamicPropertiesDefinition
foreign import defineVector :: DynamicPropertiesDefinition -> String -> Nullable (Vector3) -> DynamicPropertiesDefinition
foreign import isValid_Effect :: Effect -> Boolean
foreign import subscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EffectAddAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getName :: EffectType -> String
foreign import get_EffectTypes :: String -> Nullable (EffectType)
foreign import getAll_EffectTypes :: Array (EffectType)
foreign import mk_Enchantment :: (EnchantmentType |+| String) -> Int -> Enchantment
foreign import addEnchantment :: EnchantmentList -> Enchantment -> Boolean
foreign import canAddEnchantment :: EnchantmentList -> Enchantment -> Boolean
foreign import mk_EnchantmentList :: Int -> EnchantmentList
foreign import getEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Nullable (Enchantment)
foreign import hasEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Int
foreign import removeEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Eff.Effect Unit
foreign import get_EnchantmentTypes :: String -> Nullable (EnchantmentType)
foreign import addEffect_Entity :: Entity -> (EffectType |+| String) -> Int -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
foreign import addTag_Entity :: Entity -> String -> Boolean
foreign import applyDamage_Entity :: Entity -> Number -> Nullable ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
foreign import applyImpulse_Entity :: Entity -> Vector3 -> Eff.Effect Unit
foreign import applyKnockback_Entity :: Entity -> Number -> Number -> Number -> Number -> Eff.Effect Unit
foreign import clearVelocity_Entity :: Entity -> Eff.Effect Unit
foreign import extinguishFire_Entity :: Entity -> Nullable (Boolean) -> Boolean
foreign import getBlockFromViewDirection_Entity :: Entity -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
foreign import getComponent_Entity :: Entity -> String -> Nullable (EntityComponent)
foreign import getComponents_Entity :: Entity -> Array (EntityComponent)
foreign import getDynamicProperty_Entity :: Entity -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
foreign import getEffect_Entity :: Entity -> (EffectType |+| String) -> Nullable (Effect)
foreign import getEffects_Entity :: Entity -> Array (Effect)
foreign import getEntitiesFromViewDirection_Entity :: Entity -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
foreign import getHeadLocation_Entity :: Entity -> Vector3
foreign import getRotation_Entity :: Entity -> Vector2
foreign import getTags_Entity :: Entity -> Array (String)
foreign import getVelocity_Entity :: Entity -> Vector3
foreign import getViewDirection_Entity :: Entity -> Vector3
foreign import hasComponent_Entity :: Entity -> String -> Boolean
foreign import hasTag_Entity :: Entity -> String -> Boolean
foreign import isValid_Entity :: Entity -> Boolean
foreign import kill_Entity :: Entity -> Boolean
foreign import playAnimation_Entity :: Entity -> String -> Nullable (PlayAnimationOptions) -> Eff.Effect Unit
foreign import remove_Entity :: Entity -> Eff.Effect Unit
foreign import removeDynamicProperty_Entity :: Entity -> String -> Boolean
foreign import removeEffect_Entity :: Entity -> (EffectType |+| String) -> Boolean
foreign import removeTag_Entity :: Entity -> String -> Boolean
foreign import runCommand_Entity :: Entity -> String -> CommandResult
foreign import runCommandAsync_Entity :: Entity -> String -> Promise (CommandResult)
foreign import setDynamicProperty_Entity :: Entity -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setOnFire_Entity :: Entity -> Int -> Nullable (Boolean) -> Boolean
foreign import setRotation_Entity :: Entity -> Vector2 -> Eff.Effect Unit
foreign import teleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Eff.Effect Unit
foreign import triggerEvent_Entity :: Entity -> String -> Eff.Effect Unit
foreign import tryTeleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Boolean
foreign import getDropItems :: EntityAgeableComponent -> Array (String)
foreign import getFeedItems_EntityAgeableComponent :: EntityAgeableComponent -> Array (EntityDefinitionFeedItem)
foreign import resetToDefaultValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityAttributeComponent :: EntityAttributeComponent -> Number -> Boolean
foreign import getBreatheBlocks :: EntityBreathableComponent -> Array (BlockPermutation)
foreign import getNonBreatheBlocks :: EntityBreathableComponent -> Array (BlockPermutation)
foreign import setAirSupply :: EntityBreathableComponent -> Int -> Eff.Effect Unit
foreign import isValid_EntityComponent :: EntityComponent -> Boolean
foreign import subscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityDieAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getEquipment :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack)
foreign import getEquipmentSlot :: EntityEquippableComponent -> EquipmentSlot -> ContainerSlot
foreign import setEquipment :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack) -> Boolean
foreign import isValid_EntityEquippableComponent :: EntityEquippableComponent -> Boolean
foreign import isValid_EntityFireImmuneComponent :: EntityFireImmuneComponent -> Boolean
foreign import isValid_EntityFloatsInLiquidComponent :: EntityFloatsInLiquidComponent -> Boolean
foreign import isValid_EntityFlyingSpeedComponent :: EntityFlyingSpeedComponent -> Boolean
foreign import isValid_EntityFrictionModifierComponent :: EntityFrictionModifierComponent -> Boolean
foreign import isValid_EntityGroundOffsetComponent :: EntityGroundOffsetComponent -> Boolean
foreign import getFeedItems_EntityHealableComponent :: EntityHealableComponent -> Array (FeedItem)
foreign import isValid_EntityHealableComponent :: EntityHealableComponent -> Boolean
foreign import subscribe_EntityHealthChangedAfterEventSignal :: EntityHealthChangedAfterEventSignal -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityHealthChangedAfterEventSignal :: EntityHealthChangedAfterEventSignal -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import resetToDefaultValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityHealthComponent :: EntityHealthComponent -> Number -> Boolean
foreign import subscribe_EntityHitBlockAfterEventSignal :: EntityHitBlockAfterEventSignal -> (EntityHitBlockAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHitBlockAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityHitBlockAfterEventSignal :: EntityHitBlockAfterEventSignal -> (EntityHitBlockAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_EntityHitEntityAfterEventSignal :: EntityHitEntityAfterEventSignal -> (EntityHitEntityAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHitEntityAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityHitEntityAfterEventSignal :: EntityHitEntityAfterEventSignal -> (EntityHitEntityAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_EntityHurtAfterEventSignal :: EntityHurtAfterEventSignal -> (EntityHurtAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHurtAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityHurtAfterEventSignal :: EntityHurtAfterEventSignal -> (EntityHurtAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_EntityInventoryComponent :: EntityInventoryComponent -> Boolean
foreign import isValid_EntityIsBabyComponent :: EntityIsBabyComponent -> Boolean
foreign import isValid_EntityIsChargedComponent :: EntityIsChargedComponent -> Boolean
foreign import isValid_EntityIsChestedComponent :: EntityIsChestedComponent -> Boolean
foreign import isValid_EntityIsDyeableComponent :: EntityIsDyeableComponent -> Boolean
foreign import isValid_EntityIsHiddenWhenInvisibleComponent :: EntityIsHiddenWhenInvisibleComponent -> Boolean
foreign import isValid_EntityIsIgnitedComponent :: EntityIsIgnitedComponent -> Boolean
foreign import isValid_EntityIsIllagerCaptainComponent :: EntityIsIllagerCaptainComponent -> Boolean
foreign import isValid_EntityIsSaddledComponent :: EntityIsSaddledComponent -> Boolean
foreign import isValid_EntityIsShakingComponent :: EntityIsShakingComponent -> Boolean
foreign import isValid_EntityIsShearedComponent :: EntityIsShearedComponent -> Boolean
foreign import isValid_EntityIsStackableComponent :: EntityIsStackableComponent -> Boolean
foreign import isValid_EntityIsStunnedComponent :: EntityIsStunnedComponent -> Boolean
foreign import isValid_EntityIsTamedComponent :: EntityIsTamedComponent -> Boolean
foreign import isValid_EntityItemComponent :: EntityItemComponent -> Boolean
foreign import resetToDefaultValue_EntityLavaMovementComponent :: EntityLavaMovementComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityLavaMovementComponent :: EntityLavaMovementComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityLavaMovementComponent :: EntityLavaMovementComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityLavaMovementComponent :: EntityLavaMovementComponent -> Number -> Boolean
foreign import leash :: EntityLeashableComponent -> Entity -> Eff.Effect Unit
foreign import unleash :: EntityLeashableComponent -> Eff.Effect Unit
foreign import isValid_EntityLeashableComponent :: EntityLeashableComponent -> Boolean
foreign import isValid_EntityMarkVariantComponent :: EntityMarkVariantComponent -> Boolean
foreign import setTamed :: EntityMountTamingComponent -> Boolean -> Eff.Effect Unit
foreign import isValid_EntityMountTamingComponent :: EntityMountTamingComponent -> Boolean
foreign import resetToDefaultValue_EntityMovementComponent :: EntityMovementComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityMovementComponent :: EntityMovementComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityMovementComponent :: EntityMovementComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityMovementComponent :: EntityMovementComponent -> Number -> Boolean
foreign import isValid_EntityNavigationComponent :: EntityNavigationComponent -> Boolean
foreign import isValid_EntityNavigationFloatComponent :: EntityNavigationFloatComponent -> Boolean
foreign import isValid_EntityNavigationFlyComponent :: EntityNavigationFlyComponent -> Boolean
foreign import isValid_EntityNavigationGenericComponent :: EntityNavigationGenericComponent -> Boolean
foreign import isValid_EntityNavigationHoverComponent :: EntityNavigationHoverComponent -> Boolean
foreign import isValid_EntityNavigationWalkComponent :: EntityNavigationWalkComponent -> Boolean
foreign import isValid_EntityOnFireComponent :: EntityOnFireComponent -> Boolean
foreign import isValid_EntityPushThroughComponent :: EntityPushThroughComponent -> Boolean
foreign import subscribe_EntityRemovedAfterEventSignal :: EntityRemovedAfterEventSignal -> (EntityRemovedAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityRemovedAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityRemovedAfterEventSignal :: EntityRemovedAfterEventSignal -> (EntityRemovedAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import addRider :: EntityRideableComponent -> Entity -> Boolean
foreign import ejectRider :: EntityRideableComponent -> Entity -> Eff.Effect Unit
foreign import ejectRiders :: EntityRideableComponent -> Eff.Effect Unit
foreign import getFamilyTypes :: EntityRideableComponent -> Array (String)
foreign import getRiders :: EntityRideableComponent -> Array (Entity)
foreign import getSeats :: EntityRideableComponent -> Array (Seat)
foreign import isValid_EntityRideableComponent :: EntityRideableComponent -> Boolean
foreign import isValid_EntityRidingComponent :: EntityRidingComponent -> Boolean
foreign import isValid_EntityScaleComponent :: EntityScaleComponent -> Boolean
foreign import isValid_EntitySkinIdComponent :: EntitySkinIdComponent -> Boolean
foreign import subscribe_EntitySpawnAfterEventSignal :: EntitySpawnAfterEventSignal -> (EntitySpawnAfterEvent -> Eff.Effect Unit) -> (EntitySpawnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntitySpawnAfterEventSignal :: EntitySpawnAfterEventSignal -> (EntitySpawnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_EntityStrengthComponent :: EntityStrengthComponent -> Boolean
foreign import getTameItems :: EntityTameableComponent -> Array (String)
foreign import tame :: EntityTameableComponent -> Boolean
foreign import isValid_EntityTameableComponent :: EntityTameableComponent -> Boolean
foreign import get_EntityTypes :: String -> EntityType
foreign import getAll_EntityTypes :: EntityTypeIterator
foreign import resetToDefaultValue_EntityUnderwaterMovementComponent :: EntityUnderwaterMovementComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityUnderwaterMovementComponent :: EntityUnderwaterMovementComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityUnderwaterMovementComponent :: EntityUnderwaterMovementComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityUnderwaterMovementComponent :: EntityUnderwaterMovementComponent -> Number -> Boolean
foreign import isValid_EntityVariantComponent :: EntityVariantComponent -> Boolean
foreign import isValid_EntityWantsJockeyComponent :: EntityWantsJockeyComponent -> Boolean
foreign import getImpactedBlocks_ExplosionAfterEvent :: ExplosionAfterEvent -> Array (Vector3)
foreign import subscribe_ExplosionAfterEventSignal :: ExplosionAfterEventSignal -> (ExplosionAfterEvent -> Eff.Effect Unit) -> (ExplosionAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ExplosionAfterEventSignal :: ExplosionAfterEventSignal -> (ExplosionAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setImpactedBlocks :: ExplosionBeforeEvent -> Array (Vector3) -> Eff.Effect Unit
foreign import getImpactedBlocks_ExplosionBeforeEvent :: ExplosionBeforeEvent -> Array (Vector3)
foreign import subscribe_ExplosionBeforeEventSignal :: ExplosionBeforeEventSignal -> (ExplosionBeforeEvent -> Eff.Effect Unit) -> (ExplosionBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ExplosionBeforeEventSignal :: ExplosionBeforeEventSignal -> (ExplosionBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getEffects_FeedItem :: FeedItem -> Array (FeedItemEffect)
foreign import subscribe_IButtonPushAfterEventSignal :: IButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> (ButtonPushAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_IButtonPushAfterEventSignal :: IButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ILeverActionAfterEventSignal :: ILeverActionAfterEventSignal -> (LeverActionAfterEvent -> Eff.Effect Unit) -> (LeverActionAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ILeverActionAfterEventSignal :: ILeverActionAfterEventSignal -> (LeverActionAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_IPlayerJoinAfterEventSignal :: IPlayerJoinAfterEventSignal -> (PlayerJoinAfterEvent -> Eff.Effect Unit) -> (PlayerJoinAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_IPlayerJoinAfterEventSignal :: IPlayerJoinAfterEventSignal -> (PlayerJoinAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_IPlayerLeaveAfterEventSignal :: IPlayerLeaveAfterEventSignal -> (PlayerLeaveAfterEvent -> Eff.Effect Unit) -> (PlayerLeaveAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_IPlayerLeaveAfterEventSignal :: IPlayerLeaveAfterEventSignal -> (PlayerLeaveAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_IPlayerSpawnAfterEventSignal :: IPlayerSpawnAfterEventSignal -> (PlayerSpawnAfterEvent -> Eff.Effect Unit) -> (PlayerSpawnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_IPlayerSpawnAfterEventSignal :: IPlayerSpawnAfterEventSignal -> (PlayerSpawnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemCompleteUseAfterEventSignal :: ItemCompleteUseAfterEventSignal -> (ItemCompleteUseAfterEvent -> Eff.Effect Unit) -> (ItemCompleteUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemCompleteUseAfterEventSignal :: ItemCompleteUseAfterEventSignal -> (ItemCompleteUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_ItemComponent :: ItemComponent -> Boolean
foreign import startCooldown :: ItemCooldownComponent -> Player -> Eff.Effect Unit
foreign import isValid_ItemCooldownComponent :: ItemCooldownComponent -> Boolean
foreign import subscribe_ItemDefinitionAfterEventSignal :: ItemDefinitionAfterEventSignal -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit) -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemDefinitionAfterEventSignal :: ItemDefinitionAfterEventSignal -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemDefinitionBeforeEventSignal :: ItemDefinitionBeforeEventSignal -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit) -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemDefinitionBeforeEventSignal :: ItemDefinitionBeforeEventSignal -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getDamageChance :: ItemDurabilityComponent -> Int -> Int
foreign import getDamageRange :: ItemDurabilityComponent -> NumberRange
foreign import isValid_ItemDurabilityComponent :: ItemDurabilityComponent -> Boolean
foreign import removeAllEnchantments :: ItemEnchantsComponent -> Eff.Effect Unit
foreign import isValid_ItemEnchantsComponent :: ItemEnchantsComponent -> Boolean
foreign import isValid_ItemFoodComponent :: ItemFoodComponent -> Boolean
foreign import subscribe_ItemReleaseUseAfterEventSignal :: ItemReleaseUseAfterEventSignal -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit) -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemReleaseUseAfterEventSignal :: ItemReleaseUseAfterEventSignal -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clone_ItemStack :: ItemStack -> ItemStack
foreign import mk_ItemStack :: (ItemType |+| String) -> Int -> ItemStack
foreign import getComponent_ItemStack :: ItemStack -> String -> Nullable (ItemComponent)
foreign import getComponents_ItemStack :: ItemStack -> Array (ItemComponent)
foreign import getLore_ItemStack :: ItemStack -> Array (String)
foreign import getTags_ItemStack :: ItemStack -> Array (String)
foreign import hasComponent_ItemStack :: ItemStack -> String -> Boolean
foreign import hasTag_ItemStack :: ItemStack -> String -> Boolean
foreign import isStackableWith_ItemStack :: ItemStack -> ItemStack -> Boolean
foreign import setCanDestroy_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import setCanPlaceOn_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import setLore_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
foreign import triggerEvent_ItemStack :: ItemStack -> String -> Eff.Effect Unit
foreign import subscribe_ItemStartUseAfterEventSignal :: ItemStartUseAfterEventSignal -> (ItemStartUseAfterEvent -> Eff.Effect Unit) -> (ItemStartUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemStartUseAfterEventSignal :: ItemStartUseAfterEventSignal -> (ItemStartUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemStartUseOnAfterEventSignal :: ItemStartUseOnAfterEventSignal -> (ItemStartUseOnAfterEvent -> Eff.Effect Unit) -> (ItemStartUseOnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemStartUseOnAfterEventSignal :: ItemStartUseOnAfterEventSignal -> (ItemStartUseOnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemStopUseAfterEventSignal :: ItemStopUseAfterEventSignal -> (ItemStopUseAfterEvent -> Eff.Effect Unit) -> (ItemStopUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemStopUseAfterEventSignal :: ItemStopUseAfterEventSignal -> (ItemStopUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemStopUseOnAfterEventSignal :: ItemStopUseOnAfterEventSignal -> (ItemStopUseOnAfterEvent -> Eff.Effect Unit) -> (ItemStopUseOnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemStopUseOnAfterEventSignal :: ItemStopUseOnAfterEventSignal -> (ItemStopUseOnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import get_ItemTypes :: String -> ItemType
foreign import getAll_ItemTypes :: Array (ItemType)
foreign import subscribe_ItemUseAfterEventSignal :: ItemUseAfterEventSignal -> (ItemUseAfterEvent -> Eff.Effect Unit) -> (ItemUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemUseAfterEventSignal :: ItemUseAfterEventSignal -> (ItemUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemUseBeforeEventSignal :: ItemUseBeforeEventSignal -> (ItemUseBeforeEvent -> Eff.Effect Unit) -> (ItemUseBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemUseBeforeEventSignal :: ItemUseBeforeEventSignal -> (ItemUseBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemUseOnAfterEventSignal :: ItemUseOnAfterEventSignal -> (ItemUseOnAfterEvent -> Eff.Effect Unit) -> (ItemUseOnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemUseOnAfterEventSignal :: ItemUseOnAfterEventSignal -> (ItemUseOnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemUseOnBeforeEventSignal :: ItemUseOnBeforeEventSignal -> (ItemUseOnBeforeEvent -> Eff.Effect Unit) -> (ItemUseOnBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemUseOnBeforeEventSignal :: ItemUseOnBeforeEventSignal -> (ItemUseOnBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_LeverActionAfterEventSignal :: LeverActionAfterEventSignal -> (LeverActionAfterEvent -> Eff.Effect Unit) -> (LeverActionAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_LeverActionAfterEventSignal :: LeverActionAfterEventSignal -> (LeverActionAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import mk_MolangVariableMap :: MolangVariableMap
foreign import setColorRGB :: MolangVariableMap -> String -> RGB -> Eff.Effect Unit
foreign import setColorRGBA :: MolangVariableMap -> String -> RGBA -> Eff.Effect Unit
foreign import setFloat :: MolangVariableMap -> String -> Number -> Eff.Effect Unit
foreign import setSpeedAndDirection :: MolangVariableMap -> String -> Number -> Vector3 -> Eff.Effect Unit
foreign import setVector3 :: MolangVariableMap -> String -> Vector3 -> Eff.Effect Unit
foreign import getPath :: NavigationResult -> Array (Vector3)
foreign import subscribe_PistonActivateAfterEventSignal :: PistonActivateAfterEventSignal -> (PistonActivateAfterEvent -> Eff.Effect Unit) -> (PistonActivateAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PistonActivateAfterEventSignal :: PistonActivateAfterEventSignal -> (PistonActivateAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PistonActivateBeforeEventSignal :: PistonActivateBeforeEventSignal -> (PistonActivateBeforeEvent -> Eff.Effect Unit) -> (PistonActivateBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_PistonActivateBeforeEventSignal :: PistonActivateBeforeEventSignal -> (PistonActivateBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import addExperience :: Player -> Int -> Int
foreign import addLevels :: Player -> Int -> Int
foreign import getItemCooldown :: Player -> String -> Int
foreign import getSpawnPoint :: Player -> Nullable (DimensionLocation)
foreign import getTotalXp :: Player -> Int
foreign import isOp :: Player -> Boolean
foreign import playSound_Player :: Player -> String -> Nullable (PlayerSoundOptions) -> Eff.Effect Unit
foreign import postClientMessage :: Player -> String -> String -> Eff.Effect Unit
foreign import resetLevel :: Player -> Eff.Effect Unit
foreign import sendMessage_Player :: Player -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setOp :: Player -> Boolean -> Eff.Effect Unit
foreign import setSpawnPoint :: Player -> Nullable (DimensionLocation) -> Eff.Effect Unit
foreign import startItemCooldown :: Player -> String -> Int -> Eff.Effect Unit
foreign import addEffect_Player :: Player -> (EffectType |+| String) -> Int -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
foreign import addTag_Player :: Player -> String -> Boolean
foreign import applyDamage_Player :: Player -> Number -> Nullable ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
foreign import applyImpulse_Player :: Player -> Vector3 -> Eff.Effect Unit
foreign import applyKnockback_Player :: Player -> Number -> Number -> Number -> Number -> Eff.Effect Unit
foreign import clearVelocity_Player :: Player -> Eff.Effect Unit
foreign import extinguishFire_Player :: Player -> Nullable (Boolean) -> Boolean
foreign import getBlockFromViewDirection_Player :: Player -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
foreign import getComponent_Player :: Player -> String -> Nullable (EntityComponent)
foreign import getComponents_Player :: Player -> Array (EntityComponent)
foreign import getDynamicProperty_Player :: Player -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
foreign import getEffect_Player :: Player -> (EffectType |+| String) -> Nullable (Effect)
foreign import getEffects_Player :: Player -> Array (Effect)
foreign import getEntitiesFromViewDirection_Player :: Player -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
foreign import getHeadLocation_Player :: Player -> Vector3
foreign import getRotation_Player :: Player -> Vector2
foreign import getTags_Player :: Player -> Array (String)
foreign import getVelocity_Player :: Player -> Vector3
foreign import getViewDirection_Player :: Player -> Vector3
foreign import hasComponent_Player :: Player -> String -> Boolean
foreign import hasTag_Player :: Player -> String -> Boolean
foreign import isValid_Player :: Player -> Boolean
foreign import kill_Player :: Player -> Boolean
foreign import playAnimation_Player :: Player -> String -> Nullable (PlayAnimationOptions) -> Eff.Effect Unit
foreign import remove_Player :: Player -> Eff.Effect Unit
foreign import removeDynamicProperty_Player :: Player -> String -> Boolean
foreign import removeEffect_Player :: Player -> (EffectType |+| String) -> Boolean
foreign import removeTag_Player :: Player -> String -> Boolean
foreign import runCommand_Player :: Player -> String -> CommandResult
foreign import runCommandAsync_Player :: Player -> String -> Promise (CommandResult)
foreign import setDynamicProperty_Player :: Player -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setOnFire_Player :: Player -> Int -> Nullable (Boolean) -> Boolean
foreign import setRotation_Player :: Player -> Vector2 -> Eff.Effect Unit
foreign import teleport_Player :: Player -> Vector3 -> Nullable (TeleportOptions) -> Eff.Effect Unit
foreign import triggerEvent_Player :: Player -> String -> Eff.Effect Unit
foreign import tryTeleport_Player :: Player -> Vector3 -> Nullable (TeleportOptions) -> Boolean
foreign import subscribe_PlayerJoinAfterEventSignal :: PlayerJoinAfterEventSignal -> (PlayerJoinAfterEvent -> Eff.Effect Unit) -> (PlayerJoinAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PlayerJoinAfterEventSignal :: PlayerJoinAfterEventSignal -> (PlayerJoinAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PlayerLeaveAfterEventSignal :: PlayerLeaveAfterEventSignal -> (PlayerLeaveAfterEvent -> Eff.Effect Unit) -> (PlayerLeaveAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PlayerLeaveAfterEventSignal :: PlayerLeaveAfterEventSignal -> (PlayerLeaveAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PlayerSpawnAfterEventSignal :: PlayerSpawnAfterEventSignal -> (PlayerSpawnAfterEvent -> Eff.Effect Unit) -> (PlayerSpawnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PlayerSpawnAfterEventSignal :: PlayerSpawnAfterEventSignal -> (PlayerSpawnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PressurePlatePopAfterEventSignal :: PressurePlatePopAfterEventSignal -> (PressurePlatePopAfterEvent -> Eff.Effect Unit) -> (PressurePlatePopAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PressurePlatePopAfterEventSignal :: PressurePlatePopAfterEventSignal -> (PressurePlatePopAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PressurePlatePushAfterEventSignal :: PressurePlatePushAfterEventSignal -> (PressurePlatePushAfterEvent -> Eff.Effect Unit) -> (PressurePlatePushAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PressurePlatePushAfterEventSignal :: PressurePlatePushAfterEventSignal -> (PressurePlatePushAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getBlockHit :: ProjectileHitBlockAfterEvent -> BlockHitInformation
foreign import subscribe_ProjectileHitBlockAfterEventSignal :: ProjectileHitBlockAfterEventSignal -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit) -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ProjectileHitBlockAfterEventSignal :: ProjectileHitBlockAfterEventSignal -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getEntityHit :: ProjectileHitEntityAfterEvent -> EntityHitInformation
foreign import subscribe_ProjectileHitEntityAfterEventSignal :: ProjectileHitEntityAfterEventSignal -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit) -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ProjectileHitEntityAfterEventSignal :: ProjectileHitEntityAfterEventSignal -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import registerEntityTypeDynamicProperties :: PropertyRegistry -> DynamicPropertiesDefinition -> (EntityType |+| String) -> Eff.Effect Unit
foreign import registerWorldDynamicProperties :: PropertyRegistry -> DynamicPropertiesDefinition -> Eff.Effect Unit
foreign import addObjective :: Scoreboard -> String -> String -> ScoreboardObjective
foreign import clearObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjective)
foreign import getObjective :: Scoreboard -> String -> Nullable (ScoreboardObjective)
foreign import getObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjectiveDisplayOptions)
foreign import getObjectives :: Scoreboard -> Array (ScoreboardObjective)
foreign import getParticipants_Scoreboard :: Scoreboard -> Array (ScoreboardIdentity)
foreign import removeObjective :: Scoreboard -> (ScoreboardObjective |+| String) -> Boolean
foreign import setObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> ScoreboardObjectiveDisplayOptions -> ScoreboardObjective
foreign import getEntity_ScoreboardIdentity :: ScoreboardIdentity -> Entity
foreign import isValid_ScoreboardIdentity :: ScoreboardIdentity -> Boolean
foreign import addScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Int -> Int
foreign import getParticipants_ScoreboardObjective :: ScoreboardObjective -> Array (ScoreboardIdentity)
foreign import getScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Nullable (Int)
foreign import getScores :: ScoreboardObjective -> Array (ScoreboardScoreInfo)
foreign import hasParticipant :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import isValid_ScoreboardObjective :: ScoreboardObjective -> Boolean
foreign import removeParticipant :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import setScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Int -> Eff.Effect Unit
foreign import isValid_ScreenDisplay :: ScreenDisplay -> Boolean
foreign import setActionBar :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setTitle :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Nullable (TitleDisplayOptions) -> Eff.Effect Unit
foreign import updateSubtitle :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import subscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Nullable (ScriptEventMessageFilterOptions) -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> (MessageReceiveAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clearRun :: System -> Int -> Eff.Effect Unit
foreign import run :: System -> (Unit -> Eff.Effect Unit) -> Int
foreign import runInterval :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Int) -> Int
foreign import runTimeout :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Int) -> Int
foreign import subscribe_TargetBlockHitAfterEventSignal :: TargetBlockHitAfterEventSignal -> (TargetBlockHitAfterEvent -> Eff.Effect Unit) -> (TargetBlockHitAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_TargetBlockHitAfterEventSignal :: TargetBlockHitAfterEventSignal -> (TargetBlockHitAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import mk_Trigger :: String -> Trigger
foreign import subscribe_TripWireTripAfterEventSignal :: TripWireTripAfterEventSignal -> (TripWireTripAfterEvent -> Eff.Effect Unit) -> (TripWireTripAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_TripWireTripAfterEventSignal :: TripWireTripAfterEventSignal -> (TripWireTripAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import add :: Vector3 -> Vector3 -> Vector
foreign import mk_Vector :: Number -> Number -> Number -> Vector
foreign import cross :: Vector3 -> Vector3 -> Vector
foreign import distance :: Vector3 -> Vector3 -> Number
foreign import divide :: Vector3 -> (Number |+| Vector3) -> Vector
foreign import equals_Vector :: Vector -> Vector -> Boolean
foreign import length :: Vector -> Number
foreign import lengthSquared :: Vector -> Number
foreign import lerp :: Vector3 -> Vector3 -> Number -> Vector
foreign import max :: Vector3 -> Vector3 -> Vector
foreign import min :: Vector3 -> Vector3 -> Vector
foreign import multiply :: Vector3 -> (Number |+| Vector3) -> Vector
foreign import normalized :: Vector -> Vector
foreign import slerp :: Vector3 -> Vector3 -> Number -> Vector
foreign import subtract :: Vector3 -> Vector3 -> Vector
foreign import subscribe_WatchdogTerminateBeforeEventSignal :: WatchdogTerminateBeforeEventSignal -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit) -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_WatchdogTerminateBeforeEventSignal :: WatchdogTerminateBeforeEventSignal -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_WeatherChangeAfterEventSignal :: WeatherChangeAfterEventSignal -> (WeatherChangeAfterEvent -> Eff.Effect Unit) -> (WeatherChangeAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_WeatherChangeAfterEventSignal :: WeatherChangeAfterEventSignal -> (WeatherChangeAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import broadcastClientMessage :: World -> String -> String -> Eff.Effect Unit
foreign import getAbsoluteTime :: World -> Int
foreign import getAllPlayers :: World -> Array (Player)
foreign import getDay :: World -> Int
foreign import getDefaultSpawnLocation :: World -> Vector3
foreign import getDimension :: World -> String -> Dimension
foreign import getDynamicProperty_World :: World -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
foreign import getEntity_World :: World -> String -> Nullable (Entity)
foreign import getMoonPhase :: World -> MoonPhase
foreign import getPlayers_World :: World -> Nullable (EntityQueryOptions) -> Array (Player)
foreign import getTimeOfDay :: World -> Int
foreign import playMusic :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
foreign import playSound_World :: World -> String -> Vector3 -> Nullable (WorldSoundOptions) -> Eff.Effect Unit
foreign import queueMusic :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
foreign import removeDynamicProperty_World :: World -> String -> Boolean
foreign import sendMessage_World :: World -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setAbsoluteTime :: World -> Int -> Eff.Effect Unit
foreign import setDefaultSpawnLocation :: World -> Vector3 -> Eff.Effect Unit
foreign import setDynamicProperty_World :: World -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setTimeOfDay :: World -> (Int |+| TimeOfDay) -> Eff.Effect Unit
foreign import stopMusic :: World -> Eff.Effect Unit
foreign import subscribe_WorldInitializeAfterEventSignal :: WorldInitializeAfterEventSignal -> (WorldInitializeAfterEvent -> Eff.Effect Unit) -> (WorldInitializeAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_WorldInitializeAfterEventSignal :: WorldInitializeAfterEventSignal -> (WorldInitializeAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import system :: System
foreign import world :: World