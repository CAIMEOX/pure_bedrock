module Minecraft.Server where
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
newtype BlockFillOptions = BlockFillOptions {
  matchingBlock :: Nullable (BlockPermutation)
}
newtype BlockHitInformation = BlockHitInformation {
  block :: Block,
  face :: Direction,
  faceLocation :: Vector3
}
newtype BlockRaycastHit = BlockRaycastHit {
  block :: Block,
  face :: Direction,
  faceLocation :: Vector3
}
newtype BlockRaycastOptions = BlockRaycastOptions {
  includeLiquidBlocks :: Nullable (Boolean),
  includePassableBlocks :: Nullable (Boolean),
  maxDistance :: Nullable (Number)
}
newtype BlockVolume = BlockVolume {
  from :: Vector3,
  to :: Vector3
}
newtype BoundingBox = BoundingBox {
  max :: Vector3,
  min :: Vector3
}
newtype CameraEaseOptions = CameraEaseOptions {
  easeTime :: Nullable (Number),
  easeType :: Nullable (EasingType)
}
newtype CameraFadeOptions = CameraFadeOptions {
  fadeColor :: Nullable (RGB),
  fadeTime :: Nullable (CameraFadeTimeOptions)
}
newtype CameraFadeTimeOptions = CameraFadeTimeOptions {
  fadeInTime :: Number,
  fadeOutTime :: Number,
  holdTime :: Number
}
newtype CompoundBlockVolumeItem = CompoundBlockVolumeItem {
  action :: Nullable (CompoundBlockVolumeAction),
  locationRelativity :: Nullable (CompoundBlockVolumePositionRelativity),
  volume :: BlockVolume
}
newtype DimensionLocation = DimensionLocation {
  dimension :: Dimension,
  x :: Number,
  y :: Number,
  z :: Number
}
newtype EntityApplyDamageByProjectileOptions = EntityApplyDamageByProjectileOptions {
  damagingEntity :: Nullable (Entity),
  damagingProjectile :: Entity
}
newtype EntityApplyDamageOptions = EntityApplyDamageOptions {
  cause :: EntityDamageCause,
  damagingEntity :: Nullable (Entity)
}
newtype EntityDamageSource = EntityDamageSource {
  cause :: EntityDamageCause,
  damagingEntity :: Nullable (Entity),
  damagingProjectile :: Nullable (Entity)
}
newtype EntityDataDrivenTriggerEventOptions = EntityDataDrivenTriggerEventOptions {
  entities :: Nullable (Array (Entity)),
  entityTypes :: Nullable (Array (String)),
  eventTypes :: Nullable (Array (String))
}
newtype EntityEffectOptions = EntityEffectOptions {
  amplifier :: Nullable (Number),
  showParticles :: Nullable (Boolean)
}
newtype EntityEventOptions = EntityEventOptions {
  entities :: Nullable (Array (Entity)),
  entityTypes :: Nullable (Array (String))
}
newtype EntityHitInformation = EntityHitInformation {
  entity :: Entity
}
newtype EntityQueryOptions = EntityQueryOptions {
  closest :: Nullable (Number),
  excludeFamilies :: Nullable (Array (String)),
  excludeGameModes :: Nullable (Array (GameMode)),
  excludeNames :: Nullable (Array (String)),
  excludeTags :: Nullable (Array (String)),
  excludeTypes :: Nullable (Array (String)),
  families :: Nullable (Array (String)),
  farthest :: Nullable (Number),
  gameMode :: Nullable (GameMode),
  location :: Nullable (Vector3),
  maxDistance :: Nullable (Number),
  maxHorizontalRotation :: Nullable (Number),
  maxLevel :: Nullable (Number),
  maxVerticalRotation :: Nullable (Number),
  minDistance :: Nullable (Number),
  minHorizontalRotation :: Nullable (Number),
  minLevel :: Nullable (Number),
  minVerticalRotation :: Nullable (Number),
  name :: Nullable (String),
  scoreOptions :: Nullable (Array (EntityQueryScoreOptions)),
  tags :: Nullable (Array (String)),
  "type" :: Nullable (String),
  volume :: Nullable (BlockAreaSize)
}
newtype EntityQueryScoreOptions = EntityQueryScoreOptions {
  exclude :: Nullable (Boolean),
  maxScore :: Nullable (Number),
  minScore :: Nullable (Number),
  objective :: Nullable (String)
}
newtype EntityRaycastHit = EntityRaycastHit {
  distance :: Number,
  entity :: Entity
}
newtype EntityRaycastOptions = EntityRaycastOptions {
  maxDistance :: Nullable (Number)
}
newtype ExplosionOptions = ExplosionOptions {
  allowUnderwater :: Nullable (Boolean),
  breaksBlocks :: Nullable (Boolean),
  causesFire :: Nullable (Boolean),
  source :: Nullable (Entity)
}
newtype MusicOptions = MusicOptions {
  fade :: Nullable (Number),
  loop :: Nullable (Boolean),
  volume :: Nullable (Number)
}
newtype NumberRange = NumberRange {
  max :: Number,
  min :: Number
}
newtype PlayAnimationOptions = PlayAnimationOptions {
  blendOutTime :: Nullable (Number),
  controller :: Nullable (String),
  nextState :: Nullable (String),
  stopExpression :: Nullable (String)
}
newtype PlayerSoundOptions = PlayerSoundOptions {
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
newtype RawMessageScore = RawMessageScore {
  name :: Nullable (String),
  objective :: Nullable (String)
}
newtype RawText = RawText {
  rawtext :: Nullable (Array (RawMessage))
}
newtype RGB = RGB {
  blue :: Number,
  green :: Number,
  red :: Number
}
newtype RGBA = RGBA {
  alpha :: Number,
  blue :: Number,
  green :: Number,
  red :: Number
}
newtype ScoreboardObjectiveDisplayOptions = ScoreboardObjectiveDisplayOptions {
  objective :: ScoreboardObjective,
  sortOrder :: Nullable (ObjectiveSortOrder)
}
newtype ScriptCameraDefaultOptions = ScriptCameraDefaultOptions {
  easeOptions :: CameraEaseOptions
}
newtype ScriptCameraSetFacingOptions = ScriptCameraSetFacingOptions {
  easeOptions :: Nullable (CameraEaseOptions),
  facingEntity :: Entity,
  location :: Nullable (Vector3)
}
newtype ScriptCameraSetLocationOptions = ScriptCameraSetLocationOptions {
  easeOptions :: Nullable (CameraEaseOptions),
  location :: Vector3
}
newtype ScriptCameraSetPosOptions = ScriptCameraSetPosOptions {
  easeOptions :: Nullable (CameraEaseOptions),
  facingLocation :: Vector3,
  location :: Nullable (Vector3)
}
newtype ScriptCameraSetRotOptions = ScriptCameraSetRotOptions {
  easeOptions :: Nullable (CameraEaseOptions),
  location :: Nullable (Vector3),
  rotation :: Vector2
}
newtype ScriptEventMessageFilterOptions = ScriptEventMessageFilterOptions {
  namespaces :: Array (String)
}
newtype TeleportOptions = TeleportOptions {
  checkForBlocks :: Nullable (Boolean),
  dimension :: Nullable (Dimension),
  facingLocation :: Nullable (Vector3),
  keepVelocity :: Nullable (Boolean),
  rotation :: Nullable (Vector2)
}
newtype TitleDisplayOptions = TitleDisplayOptions {
  fadeInDuration :: Number,
  fadeOutDuration :: Number,
  stayDuration :: Number,
  subtitle :: Nullable ((Array ((RawMessage |+| String)) |+| RawMessage |+| String))
}
newtype Vector2 = Vector2 {
  x :: Number,
  y :: Number
}
newtype Vector3 = Vector3 {
  x :: Number,
  y :: Number,
  z :: Number
}
newtype WorldSoundOptions = WorldSoundOptions {
  pitch :: Nullable (Number),
  volume :: Nullable (Number)
}
newtype Block = Block {
  dimension :: Dimension,
  isAir :: Boolean,
  isLiquid :: Boolean,
  isSolid :: Boolean,
  isWaterlogged :: Boolean,
  location :: Vector3,
  permutation :: BlockPermutation,
  "type" :: BlockType,
  typeId :: String,
  x :: Number,
  y :: Number,
  z :: Number
}
derive instance newtypeBlock :: Newtype Block _
newtype BlockAreaSize = BlockAreaSize {
  x :: Number,
  y :: Number,
  z :: Number
}
derive instance newtypeBlockAreaSize :: Newtype BlockAreaSize _
newtype BlockBreakAfterEvent = BlockBreakAfterEvent {
  brokenBlockPermutation :: BlockPermutation,
  player :: Player,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeBlockBreakAfterEvent :: Newtype BlockBreakAfterEvent _
data BlockBreakAfterEventSignal = BlockBreakAfterEventSignal

newtype BlockComponent = BlockComponent {
  block :: Block,
  typeId :: String
}
derive instance newtypeBlockComponent :: Newtype BlockComponent _
newtype BlockEvent = BlockEvent {
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeBlockEvent :: Newtype BlockEvent _
newtype BlockExplodeAfterEvent = BlockExplodeAfterEvent {
  explodedBlockPermutation :: BlockPermutation,
  source :: Nullable (Entity),
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeBlockExplodeAfterEvent :: Newtype BlockExplodeAfterEvent _
data BlockExplodeAfterEventSignal = BlockExplodeAfterEventSignal

newtype BlockInventoryComponent = BlockInventoryComponent {
  container :: Container,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockInventoryComponent :: Newtype BlockInventoryComponent _
newtype BlockLavaContainerComponent = BlockLavaContainerComponent {
  fillLevel :: Number,
  componentId :: String
}
derive instance newtypeBlockLavaContainerComponent :: Newtype BlockLavaContainerComponent _
newtype BlockLiquidContainerComponent = BlockLiquidContainerComponent {
  fillLevel :: Number,
  block :: Block,
  typeId :: String
}
derive instance newtypeBlockLiquidContainerComponent :: Newtype BlockLiquidContainerComponent _
data BlockLocationIterator = BlockLocationIterator

newtype BlockPermutation = BlockPermutation {
  "type" :: BlockType
}
derive instance newtypeBlockPermutation :: Newtype BlockPermutation _
newtype BlockPistonComponent = BlockPistonComponent {
  isExpanded :: Boolean,
  isExpanding :: Boolean,
  isMoving :: Boolean,
  isRetracted :: Boolean,
  isRetracting :: Boolean,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockPistonComponent :: Newtype BlockPistonComponent _
newtype BlockPlaceAfterEvent = BlockPlaceAfterEvent {
  player :: Player,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeBlockPlaceAfterEvent :: Newtype BlockPlaceAfterEvent _
data BlockPlaceAfterEventSignal = BlockPlaceAfterEventSignal

newtype BlockPotionContainerComponent = BlockPotionContainerComponent {
  fillLevel :: Number,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockPotionContainerComponent :: Newtype BlockPotionContainerComponent _
newtype BlockRecordPlayerComponent = BlockRecordPlayerComponent {
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockRecordPlayerComponent :: Newtype BlockRecordPlayerComponent _
newtype BlockSignComponent = BlockSignComponent {
  isWaxed :: Boolean,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockSignComponent :: Newtype BlockSignComponent _
newtype BlockSnowContainerComponent = BlockSnowContainerComponent {
  fillLevel :: Number,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockSnowContainerComponent :: Newtype BlockSnowContainerComponent _
data BlockStates = BlockStates

newtype BlockStateType = BlockStateType {
  id :: String,
  validValues :: Array ((Boolean |+| Number |+| String))
}
derive instance newtypeBlockStateType :: Newtype BlockStateType _
newtype BlockType = BlockType {
  canBeWaterlogged :: Boolean,
  id :: String
}
derive instance newtypeBlockType :: Newtype BlockType _
data BlockTypes = BlockTypes

data BlockVolumeUtils = BlockVolumeUtils

newtype BlockWaterContainerComponent = BlockWaterContainerComponent {
  fillLevel :: Number,
  block :: Block,
  typeId :: String,
  componentId :: String
}
derive instance newtypeBlockWaterContainerComponent :: Newtype BlockWaterContainerComponent _
data BoundingBoxUtils = BoundingBoxUtils

newtype ButtonPushAfterEvent = ButtonPushAfterEvent {
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeButtonPushAfterEvent :: Newtype ButtonPushAfterEvent _
data ButtonPushAfterEventSignal = ButtonPushAfterEventSignal

data Camera = Camera

newtype ChatSendAfterEvent = ChatSendAfterEvent {
  message :: String,
  sender :: Player,
  sendToTargets :: Boolean
}
derive instance newtypeChatSendAfterEvent :: Newtype ChatSendAfterEvent _
data ChatSendAfterEventSignal = ChatSendAfterEventSignal

newtype ChatSendBeforeEvent = ChatSendBeforeEvent {
  cancel :: Boolean,
  message :: String,
  sender :: Player,
  sendToTargets :: Boolean
}
derive instance newtypeChatSendBeforeEvent :: Newtype ChatSendBeforeEvent _
data ChatSendBeforeEventSignal = ChatSendBeforeEventSignal

newtype CommandResult = CommandResult {
  successCount :: Number
}
derive instance newtypeCommandResult :: Newtype CommandResult _
newtype Component = Component {
  typeId :: String
}
derive instance newtypeComponent :: Newtype Component _
newtype CompoundBlockVolume = CompoundBlockVolume {
  capacity :: Number,
  volumeCount :: Number
}
derive instance newtypeCompoundBlockVolume :: Newtype CompoundBlockVolume _
newtype Container = Container {
  emptySlotsCount :: Number,
  size :: Number
}
derive instance newtypeContainer :: Newtype Container _
newtype ContainerSlot = ContainerSlot {
  amount :: Number,
  isStackable :: Boolean,
  keepOnDeath :: Boolean,
  lockMode :: ItemLockMode,
  maxAmount :: Number,
  nameTag :: Nullable (String),
  "type" :: ItemType,
  typeId :: Nullable (String)
}
derive instance newtypeContainerSlot :: Newtype ContainerSlot _
newtype DataDrivenEntityTriggerAfterEvent = DataDrivenEntityTriggerAfterEvent {
  entity :: Entity,
  id :: String
}
derive instance newtypeDataDrivenEntityTriggerAfterEvent :: Newtype DataDrivenEntityTriggerAfterEvent _
data DataDrivenEntityTriggerAfterEventSignal = DataDrivenEntityTriggerAfterEventSignal

newtype DataDrivenEntityTriggerBeforeEvent = DataDrivenEntityTriggerBeforeEvent {
  cancel :: Boolean,
  entity :: Entity,
  id :: String
}
derive instance newtypeDataDrivenEntityTriggerBeforeEvent :: Newtype DataDrivenEntityTriggerBeforeEvent _
data DataDrivenEntityTriggerBeforeEventSignal = DataDrivenEntityTriggerBeforeEventSignal

data DefinitionModifier = DefinitionModifier

newtype Dimension = Dimension {
  id :: String
}
derive instance newtypeDimension :: Newtype Dimension _
newtype DimensionType = DimensionType {
  typeId :: String
}
derive instance newtypeDimensionType :: Newtype DimensionType _
data DimensionTypes = DimensionTypes

data DynamicPropertiesDefinition = DynamicPropertiesDefinition

newtype Effect = Effect {
  amplifier :: Number,
  displayName :: String,
  duration :: Number,
  typeId :: String
}
derive instance newtypeEffect :: Newtype Effect _
newtype EffectAddAfterEvent = EffectAddAfterEvent {
  effect :: Effect,
  effectState :: Number,
  entity :: Entity
}
derive instance newtypeEffectAddAfterEvent :: Newtype EffectAddAfterEvent _
data EffectAddAfterEventSignal = EffectAddAfterEventSignal

data EffectType = EffectType

data EffectTypes = EffectTypes

newtype Enchantment = Enchantment {
  level :: Number,
  "type" :: EnchantmentType
}
derive instance newtypeEnchantment :: Newtype Enchantment _
newtype EnchantmentList = EnchantmentList {
  slot :: Number
}
derive instance newtypeEnchantmentList :: Newtype EnchantmentList _
newtype EnchantmentSlot = EnchantmentSlot {
  all :: Number,
  armorFeet :: Number,
  armorHead :: Number,
  armorLegs :: Number,
  armorTorso :: Number,
  axe :: Number,
  bow :: Number,
  carrotStick :: Number,
  cosmeticHead :: Number,
  crossbow :: Number,
  elytra :: Number,
  fishingRod :: Number,
  flintsteel :: Number,
  gArmor :: Number,
  gDigging :: Number,
  gTool :: Number,
  hoe :: Number,
  none :: Number,
  pickaxe :: Number,
  shears :: Number,
  shield :: Number,
  shovel :: Number,
  spear :: Number,
  sword :: Number
}
derive instance newtypeEnchantmentSlot :: Newtype EnchantmentSlot _
newtype EnchantmentType = EnchantmentType {
  id :: String,
  maxLevel :: Number
}
derive instance newtypeEnchantmentType :: Newtype EnchantmentType _
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
newtype EntityAddRiderComponent = EntityAddRiderComponent {
  entityType :: String,
  spawnEvent :: String,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityAddRiderComponent :: Newtype EntityAddRiderComponent _
newtype EntityAgeableComponent = EntityAgeableComponent {
  duration :: Number,
  growUp :: Trigger,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityAgeableComponent :: Newtype EntityAgeableComponent _
newtype EntityAttributeComponent = EntityAttributeComponent {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity
}
derive instance newtypeEntityAttributeComponent :: Newtype EntityAttributeComponent _
newtype EntityBaseMovementComponent = EntityBaseMovementComponent {
  maxTurn :: Number,
  entity :: Entity
}
derive instance newtypeEntityBaseMovementComponent :: Newtype EntityBaseMovementComponent _
newtype EntityBreathableComponent = EntityBreathableComponent {
  breathesAir :: Boolean,
  breathesLava :: Boolean,
  breathesSolids :: Boolean,
  breathesWater :: Boolean,
  generatesBubbles :: Boolean,
  inhaleTime :: Number,
  suffocateTime :: Number,
  totalSupply :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityBreathableComponent :: Newtype EntityBreathableComponent _
newtype EntityCanClimbComponent = EntityCanClimbComponent {
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityCanClimbComponent :: Newtype EntityCanClimbComponent _
newtype EntityCanFlyComponent = EntityCanFlyComponent {
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityCanFlyComponent :: Newtype EntityCanFlyComponent _
newtype EntityCanPowerJumpComponent = EntityCanPowerJumpComponent {
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityCanPowerJumpComponent :: Newtype EntityCanPowerJumpComponent _
newtype EntityColorComponent = EntityColorComponent {
  value :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityColorComponent :: Newtype EntityColorComponent _
newtype EntityComponent = EntityComponent {
  entity :: Entity,
  typeId :: String
}
derive instance newtypeEntityComponent :: Newtype EntityComponent _
newtype EntityDefinitionFeedItem = EntityDefinitionFeedItem {
  growth :: Number,
  item :: String
}
derive instance newtypeEntityDefinitionFeedItem :: Newtype EntityDefinitionFeedItem _
newtype EntityDieAfterEvent = EntityDieAfterEvent {
  damageSource :: EntityDamageSource,
  deadEntity :: Entity
}
derive instance newtypeEntityDieAfterEvent :: Newtype EntityDieAfterEvent _
data EntityDieAfterEventSignal = EntityDieAfterEventSignal

newtype EntityEquippableComponent = EntityEquippableComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityEquippableComponent :: Newtype EntityEquippableComponent _
newtype EntityFireImmuneComponent = EntityFireImmuneComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityFireImmuneComponent :: Newtype EntityFireImmuneComponent _
newtype EntityFloatsInLiquidComponent = EntityFloatsInLiquidComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityFloatsInLiquidComponent :: Newtype EntityFloatsInLiquidComponent _
newtype EntityFlyingSpeedComponent = EntityFlyingSpeedComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityFlyingSpeedComponent :: Newtype EntityFlyingSpeedComponent _
newtype EntityFrictionModifierComponent = EntityFrictionModifierComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityFrictionModifierComponent :: Newtype EntityFrictionModifierComponent _
newtype EntityGroundOffsetComponent = EntityGroundOffsetComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityGroundOffsetComponent :: Newtype EntityGroundOffsetComponent _
newtype EntityHealableComponent = EntityHealableComponent {
  filters :: FilterGroup,
  forceUse :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityHealableComponent :: Newtype EntityHealableComponent _
newtype EntityHealthChangedAfterEvent = EntityHealthChangedAfterEvent {
  entity :: Entity,
  newValue :: Number,
  oldValue :: Number
}
derive instance newtypeEntityHealthChangedAfterEvent :: Newtype EntityHealthChangedAfterEvent _
data EntityHealthChangedAfterEventSignal = EntityHealthChangedAfterEventSignal

newtype EntityHealthComponent = EntityHealthComponent {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityHealthComponent :: Newtype EntityHealthComponent _
newtype EntityHitBlockAfterEvent = EntityHitBlockAfterEvent {
  blockFace :: Direction,
  damagingEntity :: Entity,
  hitBlock :: Block
}
derive instance newtypeEntityHitBlockAfterEvent :: Newtype EntityHitBlockAfterEvent _
data EntityHitBlockAfterEventSignal = EntityHitBlockAfterEventSignal

newtype EntityHitEntityAfterEvent = EntityHitEntityAfterEvent {
  damagingEntity :: Entity,
  hitEntity :: Entity
}
derive instance newtypeEntityHitEntityAfterEvent :: Newtype EntityHitEntityAfterEvent _
data EntityHitEntityAfterEventSignal = EntityHitEntityAfterEventSignal

newtype EntityHurtAfterEvent = EntityHurtAfterEvent {
  damage :: Number,
  damageSource :: EntityDamageSource,
  hurtEntity :: Entity
}
derive instance newtypeEntityHurtAfterEvent :: Newtype EntityHurtAfterEvent _
data EntityHurtAfterEventSignal = EntityHurtAfterEventSignal

newtype EntityInventoryComponent = EntityInventoryComponent {
  additionalSlotsPerStrength :: Number,
  canBeSiphonedFrom :: Boolean,
  container :: Container,
  containerType :: String,
  inventorySize :: Number,
  private :: Boolean,
  restrictToOwner :: Boolean,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityInventoryComponent :: Newtype EntityInventoryComponent _
newtype EntityIsBabyComponent = EntityIsBabyComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsBabyComponent :: Newtype EntityIsBabyComponent _
newtype EntityIsChargedComponent = EntityIsChargedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsChargedComponent :: Newtype EntityIsChargedComponent _
newtype EntityIsChestedComponent = EntityIsChestedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsChestedComponent :: Newtype EntityIsChestedComponent _
newtype EntityIsDyeableComponent = EntityIsDyeableComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsDyeableComponent :: Newtype EntityIsDyeableComponent _
newtype EntityIsHiddenWhenInvisibleComponent = EntityIsHiddenWhenInvisibleComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsHiddenWhenInvisibleComponent :: Newtype EntityIsHiddenWhenInvisibleComponent _
newtype EntityIsIgnitedComponent = EntityIsIgnitedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsIgnitedComponent :: Newtype EntityIsIgnitedComponent _
newtype EntityIsIllagerCaptainComponent = EntityIsIllagerCaptainComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsIllagerCaptainComponent :: Newtype EntityIsIllagerCaptainComponent _
newtype EntityIsSaddledComponent = EntityIsSaddledComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsSaddledComponent :: Newtype EntityIsSaddledComponent _
newtype EntityIsShakingComponent = EntityIsShakingComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsShakingComponent :: Newtype EntityIsShakingComponent _
newtype EntityIsShearedComponent = EntityIsShearedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsShearedComponent :: Newtype EntityIsShearedComponent _
newtype EntityIsStackableComponent = EntityIsStackableComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsStackableComponent :: Newtype EntityIsStackableComponent _
newtype EntityIsStunnedComponent = EntityIsStunnedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsStunnedComponent :: Newtype EntityIsStunnedComponent _
newtype EntityIsTamedComponent = EntityIsTamedComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityIsTamedComponent :: Newtype EntityIsTamedComponent _
newtype EntityItemComponent = EntityItemComponent {
  itemStack :: ItemStack,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityItemComponent :: Newtype EntityItemComponent _
data EntityIterator = EntityIterator

newtype EntityLavaMovementComponent = EntityLavaMovementComponent {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityLavaMovementComponent :: Newtype EntityLavaMovementComponent _
newtype EntityLeashableComponent = EntityLeashableComponent {
  softDistance :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityLeashableComponent :: Newtype EntityLeashableComponent _
newtype EntityMarkVariantComponent = EntityMarkVariantComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityMarkVariantComponent :: Newtype EntityMarkVariantComponent _
newtype EntityMountTamingComponent = EntityMountTamingComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityMountTamingComponent :: Newtype EntityMountTamingComponent _
newtype EntityMovementAmphibiousComponent = EntityMovementAmphibiousComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementAmphibiousComponent :: Newtype EntityMovementAmphibiousComponent _
newtype EntityMovementBasicComponent = EntityMovementBasicComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementBasicComponent :: Newtype EntityMovementBasicComponent _
newtype EntityMovementComponent = EntityMovementComponent {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementComponent :: Newtype EntityMovementComponent _
newtype EntityMovementFlyComponent = EntityMovementFlyComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementFlyComponent :: Newtype EntityMovementFlyComponent _
newtype EntityMovementGenericComponent = EntityMovementGenericComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementGenericComponent :: Newtype EntityMovementGenericComponent _
newtype EntityMovementGlideComponent = EntityMovementGlideComponent {
  speedWhenTurning :: Number,
  startSpeed :: Number,
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementGlideComponent :: Newtype EntityMovementGlideComponent _
newtype EntityMovementHoverComponent = EntityMovementHoverComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementHoverComponent :: Newtype EntityMovementHoverComponent _
newtype EntityMovementJumpComponent = EntityMovementJumpComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementJumpComponent :: Newtype EntityMovementJumpComponent _
newtype EntityMovementSkipComponent = EntityMovementSkipComponent {
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementSkipComponent :: Newtype EntityMovementSkipComponent _
newtype EntityMovementSwayComponent = EntityMovementSwayComponent {
  swayAmplitude :: Number,
  swayFrequency :: Number,
  maxTurn :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityMovementSwayComponent :: Newtype EntityMovementSwayComponent _
newtype EntityNavigationClimbComponent = EntityNavigationClimbComponent {
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
derive instance newtypeEntityNavigationClimbComponent :: Newtype EntityNavigationClimbComponent _
newtype EntityNavigationComponent = EntityNavigationComponent {
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
derive instance newtypeEntityNavigationComponent :: Newtype EntityNavigationComponent _
newtype EntityNavigationFloatComponent = EntityNavigationFloatComponent {
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
derive instance newtypeEntityNavigationFloatComponent :: Newtype EntityNavigationFloatComponent _
newtype EntityNavigationFlyComponent = EntityNavigationFlyComponent {
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
derive instance newtypeEntityNavigationFlyComponent :: Newtype EntityNavigationFlyComponent _
newtype EntityNavigationGenericComponent = EntityNavigationGenericComponent {
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
derive instance newtypeEntityNavigationGenericComponent :: Newtype EntityNavigationGenericComponent _
newtype EntityNavigationHoverComponent = EntityNavigationHoverComponent {
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
derive instance newtypeEntityNavigationHoverComponent :: Newtype EntityNavigationHoverComponent _
newtype EntityNavigationWalkComponent = EntityNavigationWalkComponent {
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
derive instance newtypeEntityNavigationWalkComponent :: Newtype EntityNavigationWalkComponent _
newtype EntityOnFireComponent = EntityOnFireComponent {
  onFireTicksRemaining :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityOnFireComponent :: Newtype EntityOnFireComponent _
newtype EntityPushThroughComponent = EntityPushThroughComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityPushThroughComponent :: Newtype EntityPushThroughComponent _
newtype EntityRemovedAfterEvent = EntityRemovedAfterEvent {
  removedEntity :: String
}
derive instance newtypeEntityRemovedAfterEvent :: Newtype EntityRemovedAfterEvent _
data EntityRemovedAfterEventSignal = EntityRemovedAfterEventSignal

newtype EntityRideableComponent = EntityRideableComponent {
  controllingSeat :: Number,
  crouchingSkipInteract :: Boolean,
  interactText :: String,
  pullInEntities :: Boolean,
  riderCanInteract :: Boolean,
  seatCount :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityRideableComponent :: Newtype EntityRideableComponent _
newtype EntityRidingComponent = EntityRidingComponent {
  entityRidingOn :: Entity,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityRidingComponent :: Newtype EntityRidingComponent _
newtype EntityScaleComponent = EntityScaleComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityScaleComponent :: Newtype EntityScaleComponent _
newtype EntitySkinIdComponent = EntitySkinIdComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntitySkinIdComponent :: Newtype EntitySkinIdComponent _
newtype EntitySpawnAfterEvent = EntitySpawnAfterEvent {
  entity :: Entity
}
derive instance newtypeEntitySpawnAfterEvent :: Newtype EntitySpawnAfterEvent _
data EntitySpawnAfterEventSignal = EntitySpawnAfterEventSignal

newtype EntityStrengthComponent = EntityStrengthComponent {
  max :: Number,
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityStrengthComponent :: Newtype EntityStrengthComponent _
newtype EntityTameableComponent = EntityTameableComponent {
  probability :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityTameableComponent :: Newtype EntityTameableComponent _
newtype EntityType = EntityType {
  id :: String
}
derive instance newtypeEntityType :: Newtype EntityType _
data EntityTypeIterator = EntityTypeIterator

data EntityTypes = EntityTypes

newtype EntityUnderwaterMovementComponent = EntityUnderwaterMovementComponent {
  currentValue :: Number,
  defaultValue :: Number,
  effectiveMax :: Number,
  effectiveMin :: Number,
  entity :: Entity,
  componentId :: String
}
derive instance newtypeEntityUnderwaterMovementComponent :: Newtype EntityUnderwaterMovementComponent _
newtype EntityVariantComponent = EntityVariantComponent {
  value :: Number,
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityVariantComponent :: Newtype EntityVariantComponent _
newtype EntityWantsJockeyComponent = EntityWantsJockeyComponent {
  entity :: Entity,
  typeId :: String,
  componentId :: String
}
derive instance newtypeEntityWantsJockeyComponent :: Newtype EntityWantsJockeyComponent _
newtype ExplosionAfterEvent = ExplosionAfterEvent {
  dimension :: Dimension,
  source :: Nullable (Entity)
}
derive instance newtypeExplosionAfterEvent :: Newtype ExplosionAfterEvent _
data ExplosionAfterEventSignal = ExplosionAfterEventSignal

newtype ExplosionBeforeEvent = ExplosionBeforeEvent {
  cancel :: Boolean,
  dimension :: Dimension,
  source :: Nullable (Entity)
}
derive instance newtypeExplosionBeforeEvent :: Newtype ExplosionBeforeEvent _
data ExplosionBeforeEventSignal = ExplosionBeforeEventSignal

newtype FeedItem = FeedItem {
  healAmount :: Number,
  item :: String
}
derive instance newtypeFeedItem :: Newtype FeedItem _
newtype FeedItemEffect = FeedItemEffect {
  amplifier :: Number,
  chance :: Number,
  duration :: Number,
  name :: String
}
derive instance newtypeFeedItemEffect :: Newtype FeedItemEffect _
data FilterGroup = FilterGroup

newtype FluidContainer = FluidContainer {
  maxFillLevel :: Number,
  minFillLevel :: Number
}
derive instance newtypeFluidContainer :: Newtype FluidContainer _
data IButtonPushAfterEventSignal = IButtonPushAfterEventSignal

data ILeverActionAfterEventSignal = ILeverActionAfterEventSignal

data IPlayerJoinAfterEventSignal = IPlayerJoinAfterEventSignal

data IPlayerLeaveAfterEventSignal = IPlayerLeaveAfterEventSignal

data IPlayerSpawnAfterEventSignal = IPlayerSpawnAfterEventSignal

newtype ItemCompleteUseAfterEvent = ItemCompleteUseAfterEvent {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Number
}
derive instance newtypeItemCompleteUseAfterEvent :: Newtype ItemCompleteUseAfterEvent _
data ItemCompleteUseAfterEventSignal = ItemCompleteUseAfterEventSignal

newtype ItemComponent = ItemComponent {
  typeId :: String
}
derive instance newtypeItemComponent :: Newtype ItemComponent _
newtype ItemCooldownComponent = ItemCooldownComponent {
  cooldownCategory :: String,
  cooldownTicks :: Number,
  typeId :: String,
  componentId :: String
}
derive instance newtypeItemCooldownComponent :: Newtype ItemCooldownComponent _
data ItemDefinitionAfterEventSignal = ItemDefinitionAfterEventSignal

data ItemDefinitionBeforeEventSignal = ItemDefinitionBeforeEventSignal

newtype ItemDefinitionTriggeredAfterEvent = ItemDefinitionTriggeredAfterEvent {
  eventName :: String,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemDefinitionTriggeredAfterEvent :: Newtype ItemDefinitionTriggeredAfterEvent _
newtype ItemDefinitionTriggeredBeforeEvent = ItemDefinitionTriggeredBeforeEvent {
  cancel :: Boolean,
  eventName :: String,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemDefinitionTriggeredBeforeEvent :: Newtype ItemDefinitionTriggeredBeforeEvent _
newtype ItemDurabilityComponent = ItemDurabilityComponent {
  damage :: Number,
  maxDurability :: Number,
  typeId :: String,
  componentId :: String
}
derive instance newtypeItemDurabilityComponent :: Newtype ItemDurabilityComponent _
newtype ItemEnchantsComponent = ItemEnchantsComponent {
  enchantments :: EnchantmentList,
  typeId :: String,
  componentId :: String
}
derive instance newtypeItemEnchantsComponent :: Newtype ItemEnchantsComponent _
newtype ItemFoodComponent = ItemFoodComponent {
  canAlwaysEat :: Boolean,
  nutrition :: Number,
  saturationModifier :: Number,
  usingConvertsTo :: String,
  typeId :: String,
  componentId :: String
}
derive instance newtypeItemFoodComponent :: Newtype ItemFoodComponent _
newtype ItemReleaseUseAfterEvent = ItemReleaseUseAfterEvent {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Number
}
derive instance newtypeItemReleaseUseAfterEvent :: Newtype ItemReleaseUseAfterEvent _
data ItemReleaseUseAfterEventSignal = ItemReleaseUseAfterEventSignal

newtype ItemStack = ItemStack {
  amount :: Number,
  isStackable :: Boolean,
  keepOnDeath :: Boolean,
  lockMode :: ItemLockMode,
  maxAmount :: Number,
  nameTag :: Nullable (String),
  "type" :: ItemType,
  typeId :: String
}
derive instance newtypeItemStack :: Newtype ItemStack _
newtype ItemStartUseAfterEvent = ItemStartUseAfterEvent {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Number
}
derive instance newtypeItemStartUseAfterEvent :: Newtype ItemStartUseAfterEvent _
data ItemStartUseAfterEventSignal = ItemStartUseAfterEventSignal

newtype ItemStartUseOnAfterEvent = ItemStartUseOnAfterEvent {
  block :: Block,
  blockFace :: Direction,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemStartUseOnAfterEvent :: Newtype ItemStartUseOnAfterEvent _
data ItemStartUseOnAfterEventSignal = ItemStartUseOnAfterEventSignal

newtype ItemStopUseAfterEvent = ItemStopUseAfterEvent {
  itemStack :: ItemStack,
  source :: Player,
  useDuration :: Number
}
derive instance newtypeItemStopUseAfterEvent :: Newtype ItemStopUseAfterEvent _
data ItemStopUseAfterEventSignal = ItemStopUseAfterEventSignal

newtype ItemStopUseOnAfterEvent = ItemStopUseOnAfterEvent {
  block :: Block,
  itemStack :: Nullable (ItemStack),
  source :: Player
}
derive instance newtypeItemStopUseOnAfterEvent :: Newtype ItemStopUseOnAfterEvent _
data ItemStopUseOnAfterEventSignal = ItemStopUseOnAfterEventSignal

newtype ItemType = ItemType {
  id :: String
}
derive instance newtypeItemType :: Newtype ItemType _
data ItemTypes = ItemTypes

newtype ItemUseAfterEvent = ItemUseAfterEvent {
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemUseAfterEvent :: Newtype ItemUseAfterEvent _
data ItemUseAfterEventSignal = ItemUseAfterEventSignal

newtype ItemUseBeforeEvent = ItemUseBeforeEvent {
  cancel :: Boolean,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemUseBeforeEvent :: Newtype ItemUseBeforeEvent _
data ItemUseBeforeEventSignal = ItemUseBeforeEventSignal

newtype ItemUseOnAfterEvent = ItemUseOnAfterEvent {
  block :: Block,
  blockFace :: Direction,
  faceLocation :: Vector3,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemUseOnAfterEvent :: Newtype ItemUseOnAfterEvent _
data ItemUseOnAfterEventSignal = ItemUseOnAfterEventSignal

newtype ItemUseOnBeforeEvent = ItemUseOnBeforeEvent {
  cancel :: Boolean,
  block :: Block,
  blockFace :: Direction,
  faceLocation :: Vector3,
  itemStack :: ItemStack,
  source :: Player
}
derive instance newtypeItemUseOnBeforeEvent :: Newtype ItemUseOnBeforeEvent _
data ItemUseOnBeforeEventSignal = ItemUseOnBeforeEventSignal

newtype LeverActionAfterEvent = LeverActionAfterEvent {
  isPowered :: Boolean,
  player :: Player,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeLeverActionAfterEvent :: Newtype LeverActionAfterEvent _
data LeverActionAfterEventSignal = LeverActionAfterEventSignal

newtype MessageReceiveAfterEvent = MessageReceiveAfterEvent {
  id :: String,
  message :: String,
  player :: Player
}
derive instance newtypeMessageReceiveAfterEvent :: Newtype MessageReceiveAfterEvent _
newtype MinecraftDimensionTypes = MinecraftDimensionTypes {
  nether :: String,
  overworld :: String,
  theEnd :: String
}
derive instance newtypeMinecraftDimensionTypes :: Newtype MinecraftDimensionTypes _
data MolangVariableMap = MolangVariableMap

newtype NavigationResult = NavigationResult {
  isFullPath :: Boolean
}
derive instance newtypeNavigationResult :: Newtype NavigationResult _
newtype PistonActivateAfterEvent = PistonActivateAfterEvent {
  isExpanding :: Boolean,
  piston :: BlockPistonComponent,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypePistonActivateAfterEvent :: Newtype PistonActivateAfterEvent _
data PistonActivateAfterEventSignal = PistonActivateAfterEventSignal

newtype PistonActivateBeforeEvent = PistonActivateBeforeEvent {
  cancel :: Boolean,
  isExpanding :: Boolean,
  piston :: BlockPistonComponent,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypePistonActivateBeforeEvent :: Newtype PistonActivateBeforeEvent _
data PistonActivateBeforeEventSignal = PistonActivateBeforeEventSignal

newtype Player = Player {
  camera :: Camera,
  isFlying :: Boolean,
  isGliding :: Boolean,
  isJumping :: Boolean,
  level :: Number,
  name :: String,
  onScreenDisplay :: ScreenDisplay,
  selectedSlot :: Number,
  totalXpNeededForNextLevel :: Number,
  xpEarnedAtCurrentLevel :: Number,
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
derive instance newtypePlayer :: Newtype Player _
data PlayerIterator = PlayerIterator

newtype PlayerJoinAfterEvent = PlayerJoinAfterEvent {
  playerId :: String,
  playerName :: String
}
derive instance newtypePlayerJoinAfterEvent :: Newtype PlayerJoinAfterEvent _
data PlayerJoinAfterEventSignal = PlayerJoinAfterEventSignal

newtype PlayerLeaveAfterEvent = PlayerLeaveAfterEvent {
  playerId :: String,
  playerName :: String
}
derive instance newtypePlayerLeaveAfterEvent :: Newtype PlayerLeaveAfterEvent _
data PlayerLeaveAfterEventSignal = PlayerLeaveAfterEventSignal

newtype PlayerSpawnAfterEvent = PlayerSpawnAfterEvent {
  initialSpawn :: Boolean,
  player :: Player
}
derive instance newtypePlayerSpawnAfterEvent :: Newtype PlayerSpawnAfterEvent _
data PlayerSpawnAfterEventSignal = PlayerSpawnAfterEventSignal

newtype PressurePlatePopAfterEvent = PressurePlatePopAfterEvent {
  previousRedstonePower :: Number,
  redstonePower :: Number,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypePressurePlatePopAfterEvent :: Newtype PressurePlatePopAfterEvent _
data PressurePlatePopAfterEventSignal = PressurePlatePopAfterEventSignal

newtype PressurePlatePushAfterEvent = PressurePlatePushAfterEvent {
  previousRedstonePower :: Number,
  redstonePower :: Number,
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypePressurePlatePushAfterEvent :: Newtype PressurePlatePushAfterEvent _
data PressurePlatePushAfterEventSignal = PressurePlatePushAfterEventSignal

newtype ProjectileHitBlockAfterEvent = ProjectileHitBlockAfterEvent {
  dimension :: Dimension,
  hitVector :: Vector3,
  location :: Vector3,
  projectile :: Entity,
  source :: Nullable (Entity)
}
derive instance newtypeProjectileHitBlockAfterEvent :: Newtype ProjectileHitBlockAfterEvent _
data ProjectileHitBlockAfterEventSignal = ProjectileHitBlockAfterEventSignal

newtype ProjectileHitEntityAfterEvent = ProjectileHitEntityAfterEvent {
  dimension :: Dimension,
  hitVector :: Vector3,
  location :: Vector3,
  projectile :: Entity,
  source :: Nullable (Entity)
}
derive instance newtypeProjectileHitEntityAfterEvent :: Newtype ProjectileHitEntityAfterEvent _
data ProjectileHitEntityAfterEventSignal = ProjectileHitEntityAfterEventSignal

data PropertyRegistry = PropertyRegistry

data Scoreboard = Scoreboard

newtype ScoreboardIdentity = ScoreboardIdentity {
  displayName :: String,
  id :: Number,
  "type" :: ScoreboardIdentityType
}
derive instance newtypeScoreboardIdentity :: Newtype ScoreboardIdentity _
newtype ScoreboardObjective = ScoreboardObjective {
  displayName :: String,
  id :: String
}
derive instance newtypeScoreboardObjective :: Newtype ScoreboardObjective _
newtype ScoreboardScoreInfo = ScoreboardScoreInfo {
  participant :: ScoreboardIdentity,
  score :: Number
}
derive instance newtypeScoreboardScoreInfo :: Newtype ScoreboardScoreInfo _
data ScreenDisplay = ScreenDisplay

newtype ScriptEventCommandMessageAfterEvent = ScriptEventCommandMessageAfterEvent {
  id :: String,
  initiator :: Nullable (Entity),
  message :: String,
  sourceBlock :: Nullable (Block),
  sourceEntity :: Nullable (Entity),
  sourceType :: ScriptEventSource
}
derive instance newtypeScriptEventCommandMessageAfterEvent :: Newtype ScriptEventCommandMessageAfterEvent _
data ScriptEventCommandMessageAfterEventSignal = ScriptEventCommandMessageAfterEventSignal

newtype Seat = Seat {
  lockRiderRotation :: Number,
  maxRiderCount :: Number,
  minRiderCount :: Number,
  position :: Vector3
}
derive instance newtypeSeat :: Newtype Seat _
data ServerMessageAfterEventSignal = ServerMessageAfterEventSignal

newtype System = System {
  afterEvents :: SystemAfterEvents,
  beforeEvents :: SystemBeforeEvents,
  currentTick :: Number
}
derive instance newtypeSystem :: Newtype System _
newtype SystemAfterEvents = SystemAfterEvents {
  scriptEventReceive :: ScriptEventCommandMessageAfterEventSignal
}
derive instance newtypeSystemAfterEvents :: Newtype SystemAfterEvents _
newtype SystemBeforeEvents = SystemBeforeEvents {
  watchdogTerminate :: WatchdogTerminateBeforeEventSignal
}
derive instance newtypeSystemBeforeEvents :: Newtype SystemBeforeEvents _
newtype TargetBlockHitAfterEvent = TargetBlockHitAfterEvent {
  hitVector :: Vector3,
  previousRedstonePower :: Number,
  redstonePower :: Number,
  source :: Entity,
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeTargetBlockHitAfterEvent :: Newtype TargetBlockHitAfterEvent _
data TargetBlockHitAfterEventSignal = TargetBlockHitAfterEventSignal

newtype Trigger = Trigger {
  eventName :: String
}
derive instance newtypeTrigger :: Newtype Trigger _
newtype TripWireTripAfterEvent = TripWireTripAfterEvent {
  isPowered :: Boolean,
  sources :: Array (Entity),
  block :: Block,
  dimension :: Dimension
}
derive instance newtypeTripWireTripAfterEvent :: Newtype TripWireTripAfterEvent _
data TripWireTripAfterEventSignal = TripWireTripAfterEventSignal

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
newtype WatchdogTerminateBeforeEvent = WatchdogTerminateBeforeEvent {
  cancel :: Boolean,
  terminateReason :: WatchdogTerminateReason
}
derive instance newtypeWatchdogTerminateBeforeEvent :: Newtype WatchdogTerminateBeforeEvent _
data WatchdogTerminateBeforeEventSignal = WatchdogTerminateBeforeEventSignal

newtype WeatherChangeAfterEvent = WeatherChangeAfterEvent {
  dimension :: String,
  lightning :: Boolean,
  raining :: Boolean
}
derive instance newtypeWeatherChangeAfterEvent :: Newtype WeatherChangeAfterEvent _
data WeatherChangeAfterEventSignal = WeatherChangeAfterEventSignal

newtype World = World {
  afterEvents :: WorldAfterEvents,
  beforeEvents :: WorldBeforeEvents,
  scoreboard :: Scoreboard
}
derive instance newtypeWorld :: Newtype World _
newtype WorldAfterEvents = WorldAfterEvents {
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
derive instance newtypeWorldAfterEvents :: Newtype WorldAfterEvents _
newtype WorldBeforeEvents = WorldBeforeEvents {
  chatSend :: ChatSendBeforeEventSignal,
  dataDrivenEntityTriggerEvent :: DataDrivenEntityTriggerBeforeEventSignal,
  explosion :: ExplosionBeforeEventSignal,
  itemDefinitionEvent :: ItemDefinitionBeforeEventSignal,
  itemUse :: ItemUseBeforeEventSignal,
  itemUseOn :: ItemUseOnBeforeEventSignal,
  pistonActivate :: PistonActivateBeforeEventSignal
}
derive instance newtypeWorldBeforeEvents :: Newtype WorldBeforeEvents _
newtype WorldInitializeAfterEvent = WorldInitializeAfterEvent {
  propertyRegistry :: PropertyRegistry
}
derive instance newtypeWorldInitializeAfterEvent :: Newtype WorldInitializeAfterEvent _
data WorldInitializeAfterEventSignal = WorldInitializeAfterEventSignal

foreign import canPlace_Block :: Block -> (BlockPermutation |+| BlockType |+| String) -> Nullable (Direction) -> Boolean
foreign import getComponent_Block :: Block -> String -> Nullable (BlockComponent)
foreign import getItemStack_Block :: Block -> Number -> Boolean -> ItemStack
foreign import getRedstonePower_Block :: Block -> Nullable (Number)
foreign import getTags_Block :: Block -> Array (String)
foreign import hasTag_Block :: Block -> String -> Boolean
foreign import isValid_Block :: Block -> Boolean
foreign import setPermutation_Block :: Block -> BlockPermutation -> Eff.Effect Unit
foreign import setType_Block :: Block -> (BlockType |+| String) -> Eff.Effect Unit
foreign import trySetPermutation_Block :: Block -> BlockPermutation -> Boolean
foreign import constructor_BlockAreaSize :: BlockAreaSize -> Number -> Number -> Number -> BlockAreaSize
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
foreign import getAllStates_BlockPermutation :: BlockPermutation -> Map String (Boolean |+| Number |+| String)
foreign import getItemStack_BlockPermutation :: BlockPermutation -> Number -> ItemStack
foreign import getState_BlockPermutation :: BlockPermutation -> String -> Nullable ((Boolean |+| Number |+| String))
foreign import getTags_BlockPermutation :: BlockPermutation -> Array (String)
foreign import hasTag_BlockPermutation :: BlockPermutation -> String -> Boolean
foreign import matches_BlockPermutation :: BlockPermutation -> String -> Nullable (Map String (Boolean |+| Number |+| String)) -> Boolean
foreign import resolve_BlockPermutation :: String -> Nullable (Map String (Boolean |+| Number |+| String)) -> BlockPermutation
foreign import withState_BlockPermutation :: BlockPermutation -> String -> (Boolean |+| Number |+| String) -> BlockPermutation
foreign import getAttachedBlocks_BlockPistonComponent :: BlockPistonComponent -> Array (Vector3)
foreign import isValid_BlockPistonComponent :: BlockPistonComponent -> Boolean
foreign import subscribe_BlockPlaceAfterEventSignal :: BlockPlaceAfterEventSignal -> (BlockPlaceAfterEvent -> Eff.Effect Unit) -> (BlockPlaceAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_BlockPlaceAfterEventSignal :: BlockPlaceAfterEventSignal -> (BlockPlaceAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setPotionType_BlockPotionContainerComponent :: BlockPotionContainerComponent -> ItemStack -> Eff.Effect Unit
foreign import isValidLiquid_BlockPotionContainerComponent :: BlockPotionContainerComponent -> Boolean
foreign import isValid_BlockPotionContainerComponent :: BlockPotionContainerComponent -> Boolean
foreign import clearRecord_BlockRecordPlayerComponent :: BlockRecordPlayerComponent -> Eff.Effect Unit
foreign import isPlaying_BlockRecordPlayerComponent :: BlockRecordPlayerComponent -> Boolean
foreign import setRecord_BlockRecordPlayerComponent :: BlockRecordPlayerComponent -> (ItemType |+| String) -> Eff.Effect Unit
foreign import isValid_BlockRecordPlayerComponent :: BlockRecordPlayerComponent -> Boolean
foreign import getRawText_BlockSignComponent :: BlockSignComponent -> SignSide -> Nullable (RawText)
foreign import getText_BlockSignComponent :: BlockSignComponent -> SignSide -> Nullable (String)
foreign import getTextDyeColor_BlockSignComponent :: BlockSignComponent -> SignSide -> Nullable (DyeColor)
foreign import setText_BlockSignComponent :: BlockSignComponent -> (RawMessage |+| RawText |+| String) -> SignSide -> Eff.Effect Unit
foreign import setTextDyeColor_BlockSignComponent :: BlockSignComponent -> Nullable (DyeColor) -> SignSide -> Eff.Effect Unit
foreign import setWaxed_BlockSignComponent :: BlockSignComponent -> Eff.Effect Unit
foreign import isValid_BlockSignComponent :: BlockSignComponent -> Boolean
foreign import isValidLiquid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import isValid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import get_BlockStates :: String -> BlockStateType
foreign import getAll_BlockStates :: Array (BlockStateType)
foreign import get_BlockTypes :: String -> Nullable (BlockType)
foreign import getAll_BlockTypes :: Array (BlockType)
foreign import doesLocationTouchFaces_BlockVolumeUtils :: BlockVolume -> Vector3 -> Boolean
foreign import doesVolumeTouchFaces_BlockVolumeUtils :: BlockVolume -> BlockVolume -> Boolean
foreign import equals_BlockVolumeUtils :: BlockVolume -> BlockVolume -> Boolean
foreign import getBlockLocationIterator_BlockVolumeUtils :: BlockVolume -> BlockLocationIterator
foreign import getBoundingBox_BlockVolumeUtils :: BlockVolume -> BoundingBox
foreign import getCapacity_BlockVolumeUtils :: BlockVolume -> Number
foreign import getMax_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import getMin_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import getSpan_BlockVolumeUtils :: BlockVolume -> Vector3
foreign import intersects_BlockVolumeUtils :: BlockVolume -> BlockVolume -> BlockVolumeIntersection
foreign import isInside_BlockVolumeUtils :: BlockVolume -> Vector3 -> Boolean
foreign import translate_BlockVolumeUtils :: BlockVolume -> Vector3 -> BlockVolume
foreign import addDye_BlockWaterContainerComponent :: BlockWaterContainerComponent -> ItemType -> Eff.Effect Unit
foreign import getCustomColor_BlockWaterContainerComponent :: BlockWaterContainerComponent -> RGBA
foreign import setCustomColor_BlockWaterContainerComponent :: BlockWaterContainerComponent -> RGBA -> Eff.Effect Unit
foreign import isValidLiquid_BlockWaterContainerComponent :: BlockWaterContainerComponent -> Boolean
foreign import isValid_BlockWaterContainerComponent :: BlockWaterContainerComponent -> Boolean
foreign import createValid_BoundingBoxUtils :: Vector3 -> Vector3 -> BoundingBox
foreign import dilate_BoundingBoxUtils :: BoundingBox -> Vector3 -> BoundingBox
foreign import equals_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Boolean
foreign import expand_BoundingBoxUtils :: BoundingBox -> BoundingBox -> BoundingBox
foreign import getCenter_BoundingBoxUtils :: BoundingBox -> Vector3
foreign import getIntersection_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Nullable (BoundingBox)
foreign import getSpan_BoundingBoxUtils :: BoundingBox -> Vector3
foreign import intersects_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Boolean
foreign import isInside_BoundingBoxUtils :: BoundingBox -> Vector3 -> Boolean
foreign import isValid_BoundingBoxUtils :: BoundingBox -> Boolean
foreign import translate_BoundingBoxUtils :: BoundingBox -> Vector3 -> BoundingBox
foreign import subscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> (ButtonPushAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clear_Camera :: Camera -> Eff.Effect Unit
foreign import fade_Camera :: Camera -> Nullable (CameraFadeOptions) -> Eff.Effect Unit
foreign import setCamera_Camera :: Camera -> String -> Nullable (Nullable ((ScriptCameraDefaultOptions |+| ScriptCameraSetFacingOptions |+| ScriptCameraSetLocationOptions |+| ScriptCameraSetPosOptions |+| ScriptCameraSetRotOptions))) -> Eff.Effect Unit
foreign import getTargets_ChatSendAfterEvent :: ChatSendAfterEvent -> Array (Player)
foreign import subscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> (ChatSendAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setTargets_ChatSendBeforeEvent :: ChatSendBeforeEvent -> Array (Player) -> Eff.Effect Unit
foreign import getTargets_ChatSendBeforeEvent :: ChatSendBeforeEvent -> Array (Player)
foreign import subscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> (ChatSendBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_Component :: Component -> Boolean
foreign import clear_CompoundBlockVolume :: CompoundBlockVolume -> Eff.Effect Unit
foreign import constructor_CompoundBlockVolume :: CompoundBlockVolume -> Nullable (Vector3) -> CompoundBlockVolume
foreign import getBlockLocationIterator_CompoundBlockVolume :: CompoundBlockVolume -> BlockLocationIterator
foreign import getBoundingBox_CompoundBlockVolume :: CompoundBlockVolume -> BoundingBox
foreign import getMax_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getMin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getOrigin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import isEmpty_CompoundBlockVolume :: CompoundBlockVolume -> Boolean
foreign import isInside_CompoundBlockVolume :: CompoundBlockVolume -> Vector3 -> Boolean
foreign import peekLastVolume_CompoundBlockVolume :: CompoundBlockVolume -> Nullable (CompoundBlockVolumePositionRelativity) -> Nullable (CompoundBlockVolumeItem)
foreign import popVolume_CompoundBlockVolume :: CompoundBlockVolume -> Boolean
foreign import pushVolume_CompoundBlockVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Eff.Effect Unit
foreign import replaceOrAddLastVolume_CompoundBlockVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Boolean
foreign import setOrigin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
foreign import translateOrigin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
foreign import addItem_Container :: Container -> ItemStack -> ItemStack
foreign import clearAll_Container :: Container -> Eff.Effect Unit
foreign import getItem_Container :: Container -> Number -> Nullable (ItemStack)
foreign import getSlot_Container :: Container -> Number -> ContainerSlot
foreign import isValid_Container :: Container -> Boolean
foreign import moveItem_Container :: Container -> Number -> Number -> Container -> Eff.Effect Unit
foreign import setItem_Container :: Container -> Number -> Nullable (ItemStack) -> Eff.Effect Unit
foreign import swapItems_Container :: Container -> Number -> Number -> Container -> Eff.Effect Unit
foreign import transferItem_Container :: Container -> Number -> Container -> ItemStack
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
foreign import setModifiers_DataDrivenEntityTriggerBeforeEvent :: DataDrivenEntityTriggerBeforeEvent -> Array (DefinitionModifier) -> Eff.Effect Unit
foreign import subscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Nullable (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import constructor_DefinitionModifier :: DefinitionModifier -> DefinitionModifier
foreign import getComponentGroupsToAdd_DefinitionModifier :: DefinitionModifier -> Array (String)
foreign import getComponentGroupsToRemove_DefinitionModifier :: DefinitionModifier -> Array (String)
foreign import getTriggers_DefinitionModifier :: DefinitionModifier -> Array (Trigger)
foreign import setComponentGroupsToAdd_DefinitionModifier :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setComponentGroupsToRemove_DefinitionModifier :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setTriggers_DefinitionModifier :: DefinitionModifier -> Array (Trigger) -> Eff.Effect Unit
foreign import createExplosion_Dimension :: Dimension -> Vector3 -> Number -> Nullable (ExplosionOptions) -> Eff.Effect Unit
foreign import fillBlocks_Dimension :: Dimension -> Vector3 -> Vector3 -> (BlockPermutation |+| BlockType |+| String) -> Nullable (BlockFillOptions) -> Number
foreign import getBlock_Dimension :: Dimension -> Vector3 -> Nullable (Block)
foreign import getBlockFromRay_Dimension :: Dimension -> Vector3 -> Vector3 -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
foreign import getEntities_Dimension :: Dimension -> Nullable (EntityQueryOptions) -> Array (Entity)
foreign import getEntitiesAtBlockLocation_Dimension :: Dimension -> Vector3 -> Array (Entity)
foreign import getEntitiesFromRay_Dimension :: Dimension -> Vector3 -> Vector3 -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
foreign import getPlayers_Dimension :: Dimension -> Nullable (EntityQueryOptions) -> Array (Player)
foreign import runCommand_Dimension :: Dimension -> String -> CommandResult
foreign import runCommandAsync_Dimension :: Dimension -> String -> Promise CommandResult
foreign import setWeather_Dimension :: Dimension -> WeatherType -> Eff.Effect Unit
foreign import spawnEntity_Dimension :: Dimension -> String -> Vector3 -> Entity
foreign import spawnItem_Dimension :: Dimension -> ItemStack -> Vector3 -> Entity
foreign import spawnParticle_Dimension :: Dimension -> String -> Vector3 -> Nullable (MolangVariableMap) -> Eff.Effect Unit
foreign import get_DimensionTypes :: String -> Nullable (DimensionType)
foreign import getAll_DimensionTypes :: Array (DimensionType)
foreign import constructor_DynamicPropertiesDefinition :: DynamicPropertiesDefinition -> DynamicPropertiesDefinition
foreign import defineBoolean_DynamicPropertiesDefinition :: DynamicPropertiesDefinition -> String -> Nullable (Boolean) -> DynamicPropertiesDefinition
foreign import defineNumber_DynamicPropertiesDefinition :: DynamicPropertiesDefinition -> String -> Nullable (Number) -> DynamicPropertiesDefinition
foreign import defineString_DynamicPropertiesDefinition :: DynamicPropertiesDefinition -> String -> Number -> Nullable (String) -> DynamicPropertiesDefinition
foreign import defineVector_DynamicPropertiesDefinition :: DynamicPropertiesDefinition -> String -> Nullable (Vector3) -> DynamicPropertiesDefinition
foreign import isValid_Effect :: Effect -> Boolean
foreign import subscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EffectAddAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getName_EffectType :: EffectType -> String
foreign import get_EffectTypes :: String -> Nullable (EffectType)
foreign import getAll_EffectTypes :: Array (EffectType)
foreign import constructor_Enchantment :: Enchantment -> (EnchantmentType |+| String) -> Number -> Enchantment
foreign import addEnchantment_EnchantmentList :: EnchantmentList -> Enchantment -> Boolean
foreign import canAddEnchantment_EnchantmentList :: EnchantmentList -> Enchantment -> Boolean
foreign import constructor_EnchantmentList :: EnchantmentList -> Number -> EnchantmentList
foreign import getEnchantment_EnchantmentList :: EnchantmentList -> (EnchantmentType |+| String) -> Nullable (Enchantment)
foreign import hasEnchantment_EnchantmentList :: EnchantmentList -> (EnchantmentType |+| String) -> Number
foreign import removeEnchantment_EnchantmentList :: EnchantmentList -> (EnchantmentType |+| String) -> Eff.Effect Unit
foreign import get_EnchantmentTypes :: String -> Nullable (EnchantmentType)
foreign import addEffect_Entity :: Entity -> (EffectType |+| String) -> Number -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
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
foreign import runCommandAsync_Entity :: Entity -> String -> Promise CommandResult
foreign import setDynamicProperty_Entity :: Entity -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setOnFire_Entity :: Entity -> Number -> Nullable (Boolean) -> Boolean
foreign import setRotation_Entity :: Entity -> Vector2 -> Eff.Effect Unit
foreign import teleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Eff.Effect Unit
foreign import triggerEvent_Entity :: Entity -> String -> Eff.Effect Unit
foreign import tryTeleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Boolean
foreign import getDropItems_EntityAgeableComponent :: EntityAgeableComponent -> Array (String)
foreign import getFeedItems_EntityAgeableComponent :: EntityAgeableComponent -> Array (EntityDefinitionFeedItem)
foreign import resetToDefaultValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityAttributeComponent :: EntityAttributeComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityAttributeComponent :: EntityAttributeComponent -> Number -> Boolean
foreign import getBreatheBlocks_EntityBreathableComponent :: EntityBreathableComponent -> Array (BlockPermutation)
foreign import getNonBreatheBlocks_EntityBreathableComponent :: EntityBreathableComponent -> Array (BlockPermutation)
foreign import setAirSupply_EntityBreathableComponent :: EntityBreathableComponent -> Number -> Eff.Effect Unit
foreign import isValid_EntityComponent :: EntityComponent -> Boolean
foreign import subscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityDieAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getEquipment_EntityEquippableComponent :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack)
foreign import getEquipmentSlot_EntityEquippableComponent :: EntityEquippableComponent -> EquipmentSlot -> ContainerSlot
foreign import setEquipment_EntityEquippableComponent :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack) -> Boolean
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
foreign import leash_EntityLeashableComponent :: EntityLeashableComponent -> Entity -> Eff.Effect Unit
foreign import unleash_EntityLeashableComponent :: EntityLeashableComponent -> Eff.Effect Unit
foreign import isValid_EntityLeashableComponent :: EntityLeashableComponent -> Boolean
foreign import isValid_EntityMarkVariantComponent :: EntityMarkVariantComponent -> Boolean
foreign import setTamed_EntityMountTamingComponent :: EntityMountTamingComponent -> Boolean -> Eff.Effect Unit
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
foreign import addRider_EntityRideableComponent :: EntityRideableComponent -> Entity -> Boolean
foreign import ejectRider_EntityRideableComponent :: EntityRideableComponent -> Entity -> Eff.Effect Unit
foreign import ejectRiders_EntityRideableComponent :: EntityRideableComponent -> Eff.Effect Unit
foreign import getFamilyTypes_EntityRideableComponent :: EntityRideableComponent -> Array (String)
foreign import getRiders_EntityRideableComponent :: EntityRideableComponent -> Array (Entity)
foreign import getSeats_EntityRideableComponent :: EntityRideableComponent -> Array (Seat)
foreign import isValid_EntityRideableComponent :: EntityRideableComponent -> Boolean
foreign import isValid_EntityRidingComponent :: EntityRidingComponent -> Boolean
foreign import isValid_EntityScaleComponent :: EntityScaleComponent -> Boolean
foreign import isValid_EntitySkinIdComponent :: EntitySkinIdComponent -> Boolean
foreign import subscribe_EntitySpawnAfterEventSignal :: EntitySpawnAfterEventSignal -> (EntitySpawnAfterEvent -> Eff.Effect Unit) -> (EntitySpawnAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_EntitySpawnAfterEventSignal :: EntitySpawnAfterEventSignal -> (EntitySpawnAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_EntityStrengthComponent :: EntityStrengthComponent -> Boolean
foreign import getTameItems_EntityTameableComponent :: EntityTameableComponent -> Array (String)
foreign import tame_EntityTameableComponent :: EntityTameableComponent -> Boolean
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
foreign import setImpactedBlocks_ExplosionBeforeEvent :: ExplosionBeforeEvent -> Array (Vector3) -> Eff.Effect Unit
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
foreign import startCooldown_ItemCooldownComponent :: ItemCooldownComponent -> Player -> Eff.Effect Unit
foreign import isValid_ItemCooldownComponent :: ItemCooldownComponent -> Boolean
foreign import subscribe_ItemDefinitionAfterEventSignal :: ItemDefinitionAfterEventSignal -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit) -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemDefinitionAfterEventSignal :: ItemDefinitionAfterEventSignal -> (ItemDefinitionTriggeredAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ItemDefinitionBeforeEventSignal :: ItemDefinitionBeforeEventSignal -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit) -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemDefinitionBeforeEventSignal :: ItemDefinitionBeforeEventSignal -> (ItemDefinitionTriggeredBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getDamageChance_ItemDurabilityComponent :: ItemDurabilityComponent -> Number -> Number
foreign import getDamageRange_ItemDurabilityComponent :: ItemDurabilityComponent -> NumberRange
foreign import isValid_ItemDurabilityComponent :: ItemDurabilityComponent -> Boolean
foreign import removeAllEnchantments_ItemEnchantsComponent :: ItemEnchantsComponent -> Eff.Effect Unit
foreign import isValid_ItemEnchantsComponent :: ItemEnchantsComponent -> Boolean
foreign import isValid_ItemFoodComponent :: ItemFoodComponent -> Boolean
foreign import subscribe_ItemReleaseUseAfterEventSignal :: ItemReleaseUseAfterEventSignal -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit) -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ItemReleaseUseAfterEventSignal :: ItemReleaseUseAfterEventSignal -> (ItemReleaseUseAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clone_ItemStack :: ItemStack -> ItemStack
foreign import constructor_ItemStack :: ItemStack -> (ItemType |+| String) -> Number -> ItemStack
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
foreign import constructor_MolangVariableMap :: MolangVariableMap -> MolangVariableMap
foreign import setColorRGB_MolangVariableMap :: MolangVariableMap -> String -> RGB -> Eff.Effect Unit
foreign import setColorRGBA_MolangVariableMap :: MolangVariableMap -> String -> RGBA -> Eff.Effect Unit
foreign import setFloat_MolangVariableMap :: MolangVariableMap -> String -> Number -> Eff.Effect Unit
foreign import setSpeedAndDirection_MolangVariableMap :: MolangVariableMap -> String -> Number -> Vector3 -> Eff.Effect Unit
foreign import setVector3_MolangVariableMap :: MolangVariableMap -> String -> Vector3 -> Eff.Effect Unit
foreign import getPath_NavigationResult :: NavigationResult -> Array (Vector3)
foreign import subscribe_PistonActivateAfterEventSignal :: PistonActivateAfterEventSignal -> (PistonActivateAfterEvent -> Eff.Effect Unit) -> (PistonActivateAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_PistonActivateAfterEventSignal :: PistonActivateAfterEventSignal -> (PistonActivateAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_PistonActivateBeforeEventSignal :: PistonActivateBeforeEventSignal -> (PistonActivateBeforeEvent -> Eff.Effect Unit) -> (PistonActivateBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_PistonActivateBeforeEventSignal :: PistonActivateBeforeEventSignal -> (PistonActivateBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import addExperience_Player :: Player -> Number -> Number
foreign import addLevels_Player :: Player -> Number -> Number
foreign import getItemCooldown_Player :: Player -> String -> Number
foreign import getSpawnPoint_Player :: Player -> Nullable (DimensionLocation)
foreign import getTotalXp_Player :: Player -> Number
foreign import isOp_Player :: Player -> Boolean
foreign import playSound_Player :: Player -> String -> Nullable (PlayerSoundOptions) -> Eff.Effect Unit
foreign import postClientMessage_Player :: Player -> String -> String -> Eff.Effect Unit
foreign import resetLevel_Player :: Player -> Eff.Effect Unit
foreign import sendMessage_Player :: Player -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setOp_Player :: Player -> Boolean -> Eff.Effect Unit
foreign import setSpawnPoint_Player :: Player -> Nullable (DimensionLocation) -> Eff.Effect Unit
foreign import startItemCooldown_Player :: Player -> String -> Number -> Eff.Effect Unit
foreign import addEffect_Player :: Player -> (EffectType |+| String) -> Number -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
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
foreign import runCommandAsync_Player :: Player -> String -> Promise CommandResult
foreign import setDynamicProperty_Player :: Player -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setOnFire_Player :: Player -> Number -> Nullable (Boolean) -> Boolean
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
foreign import getBlockHit_ProjectileHitBlockAfterEvent :: ProjectileHitBlockAfterEvent -> BlockHitInformation
foreign import subscribe_ProjectileHitBlockAfterEventSignal :: ProjectileHitBlockAfterEventSignal -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit) -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ProjectileHitBlockAfterEventSignal :: ProjectileHitBlockAfterEventSignal -> (ProjectileHitBlockAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getEntityHit_ProjectileHitEntityAfterEvent :: ProjectileHitEntityAfterEvent -> EntityHitInformation
foreign import subscribe_ProjectileHitEntityAfterEventSignal :: ProjectileHitEntityAfterEventSignal -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit) -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ProjectileHitEntityAfterEventSignal :: ProjectileHitEntityAfterEventSignal -> (ProjectileHitEntityAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import registerEntityTypeDynamicProperties_PropertyRegistry :: PropertyRegistry -> DynamicPropertiesDefinition -> (EntityType |+| String) -> Eff.Effect Unit
foreign import registerWorldDynamicProperties_PropertyRegistry :: PropertyRegistry -> DynamicPropertiesDefinition -> Eff.Effect Unit
foreign import addObjective_Scoreboard :: Scoreboard -> String -> String -> ScoreboardObjective
foreign import clearObjectiveAtDisplaySlot_Scoreboard :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjective)
foreign import getObjective_Scoreboard :: Scoreboard -> String -> Nullable (ScoreboardObjective)
foreign import getObjectiveAtDisplaySlot_Scoreboard :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjectiveDisplayOptions)
foreign import getObjectives_Scoreboard :: Scoreboard -> Array (ScoreboardObjective)
foreign import getParticipants_Scoreboard :: Scoreboard -> Array (ScoreboardIdentity)
foreign import removeObjective_Scoreboard :: Scoreboard -> (ScoreboardObjective |+| String) -> Boolean
foreign import setObjectiveAtDisplaySlot_Scoreboard :: Scoreboard -> DisplaySlotId -> ScoreboardObjectiveDisplayOptions -> ScoreboardObjective
foreign import getEntity_ScoreboardIdentity :: ScoreboardIdentity -> Entity
foreign import isValid_ScoreboardIdentity :: ScoreboardIdentity -> Boolean
foreign import addScore_ScoreboardObjective :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Number -> Number
foreign import getParticipants_ScoreboardObjective :: ScoreboardObjective -> Array (ScoreboardIdentity)
foreign import getScore_ScoreboardObjective :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Nullable (Number)
foreign import getScores_ScoreboardObjective :: ScoreboardObjective -> Array (ScoreboardScoreInfo)
foreign import hasParticipant_ScoreboardObjective :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import isValid_ScoreboardObjective :: ScoreboardObjective -> Boolean
foreign import removeParticipant_ScoreboardObjective :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import setScore_ScoreboardObjective :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Number -> Eff.Effect Unit
foreign import isValid_ScreenDisplay :: ScreenDisplay -> Boolean
foreign import setActionBar_ScreenDisplay :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setTitle_ScreenDisplay :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Nullable (TitleDisplayOptions) -> Eff.Effect Unit
foreign import updateSubtitle_ScreenDisplay :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import subscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Nullable (ScriptEventMessageFilterOptions) -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> (MessageReceiveAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clearRun_System :: System -> Number -> Eff.Effect Unit
foreign import run_System :: System -> (Unit -> Eff.Effect Unit) -> Number
foreign import runInterval_System :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Number) -> Number
foreign import runTimeout_System :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Number) -> Number
foreign import subscribe_TargetBlockHitAfterEventSignal :: TargetBlockHitAfterEventSignal -> (TargetBlockHitAfterEvent -> Eff.Effect Unit) -> (TargetBlockHitAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_TargetBlockHitAfterEventSignal :: TargetBlockHitAfterEventSignal -> (TargetBlockHitAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import constructor_Trigger :: Trigger -> String -> Trigger
foreign import subscribe_TripWireTripAfterEventSignal :: TripWireTripAfterEventSignal -> (TripWireTripAfterEvent -> Eff.Effect Unit) -> (TripWireTripAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_TripWireTripAfterEventSignal :: TripWireTripAfterEventSignal -> (TripWireTripAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import add_Vector :: Vector3 -> Vector3 -> Vector
foreign import constructor_Vector :: Vector -> Number -> Number -> Number -> Vector
foreign import cross_Vector :: Vector3 -> Vector3 -> Vector
foreign import distance_Vector :: Vector3 -> Vector3 -> Number
foreign import divide_Vector :: Vector3 -> (Number |+| Vector3) -> Vector
foreign import equals_Vector :: Vector -> Vector -> Boolean
foreign import length_Vector :: Vector -> Number
foreign import lengthSquared_Vector :: Vector -> Number
foreign import lerp_Vector :: Vector3 -> Vector3 -> Number -> Vector
foreign import max_Vector :: Vector3 -> Vector3 -> Vector
foreign import min_Vector :: Vector3 -> Vector3 -> Vector
foreign import multiply_Vector :: Vector3 -> (Number |+| Vector3) -> Vector
foreign import normalized_Vector :: Vector -> Vector
foreign import slerp_Vector :: Vector3 -> Vector3 -> Number -> Vector
foreign import subtract_Vector :: Vector3 -> Vector3 -> Vector
foreign import subscribe_WatchdogTerminateBeforeEventSignal :: WatchdogTerminateBeforeEventSignal -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit) -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_WatchdogTerminateBeforeEventSignal :: WatchdogTerminateBeforeEventSignal -> (WatchdogTerminateBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_WeatherChangeAfterEventSignal :: WeatherChangeAfterEventSignal -> (WeatherChangeAfterEvent -> Eff.Effect Unit) -> (WeatherChangeAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_WeatherChangeAfterEventSignal :: WeatherChangeAfterEventSignal -> (WeatherChangeAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import broadcastClientMessage_World :: World -> String -> String -> Eff.Effect Unit
foreign import getAbsoluteTime_World :: World -> Number
foreign import getAllPlayers_World :: World -> Array (Player)
foreign import getDay_World :: World -> Number
foreign import getDefaultSpawnLocation_World :: World -> Vector3
foreign import getDimension_World :: World -> String -> Dimension
foreign import getDynamicProperty_World :: World -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
foreign import getEntity_World :: World -> String -> Nullable (Entity)
foreign import getMoonPhase_World :: World -> MoonPhase
foreign import getPlayers_World :: World -> Nullable (EntityQueryOptions) -> Array (Player)
foreign import getTimeOfDay_World :: World -> Number
foreign import playMusic_World :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
foreign import playSound_World :: World -> String -> Vector3 -> Nullable (WorldSoundOptions) -> Eff.Effect Unit
foreign import queueMusic_World :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
foreign import removeDynamicProperty_World :: World -> String -> Boolean
foreign import sendMessage_World :: World -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setAbsoluteTime_World :: World -> Number -> Eff.Effect Unit
foreign import setDefaultSpawnLocation_World :: World -> Vector3 -> Eff.Effect Unit
foreign import setDynamicProperty_World :: World -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import setTimeOfDay_World :: World -> (Number |+| TimeOfDay) -> Eff.Effect Unit
foreign import stopMusic_World :: World -> Eff.Effect Unit
foreign import subscribe_WorldInitializeAfterEventSignal :: WorldInitializeAfterEventSignal -> (WorldInitializeAfterEvent -> Eff.Effect Unit) -> (WorldInitializeAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_WorldInitializeAfterEventSignal :: WorldInitializeAfterEventSignal -> (WorldInitializeAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import system :: System
foreign import world :: World
