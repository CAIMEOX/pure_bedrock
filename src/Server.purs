module Minecraft.Server
  ( Block
  , BlockAreaSize
  , BlockBreakAfterEvent
  , BlockBreakAfterEventSignal(..)
  , BlockComponent
  , BlockEvent
  , BlockExplodeAfterEvent
  , BlockExplodeAfterEventSignal(..)
  , BlockFillOptions
  , BlockHitInformation
  , BlockInventoryComponent
  , BlockLavaContainerComponent
  , BlockLiquidContainerComponent
  , BlockLocationIterator(..)
  , BlockPermutation
  , BlockPistonComponent
  , BlockPlaceAfterEvent
  , BlockPlaceAfterEventSignal(..)
  , BlockPotionContainerComponent
  , BlockRaycastHit
  , BlockRaycastOptions
  , BlockRecordPlayerComponent
  , BlockSignComponent
  , BlockSnowContainerComponent
  , BlockStateType
  , BlockStates(..)
  , BlockType
  , BlockTypes(..)
  , BlockVolume
  , BlockVolumeIntersection(..)
  , BlockVolumeUtils(..)
  , BlockWaterContainerComponent
  , BoundingBox
  , BoundingBoxUtils(..)
  , ButtonPushAfterEvent
  , ButtonPushAfterEventSignal(..)
  , Camera(..)
  , CameraEaseOptions
  , CameraFadeOptions
  , CameraFadeTimeOptions
  , ChatSendAfterEvent
  , ChatSendAfterEventSignal(..)
  , ChatSendBeforeEvent
  , ChatSendBeforeEventSignal(..)
  , CommandResult
  , Component
  , CompoundBlockVolume
  , CompoundBlockVolumeAction(..)
  , CompoundBlockVolumeItem
  , CompoundBlockVolumePositionRelativity(..)
  , Container
  , ContainerSlot
  , DataDrivenEntityTriggerAfterEvent
  , DataDrivenEntityTriggerAfterEventSignal(..)
  , DataDrivenEntityTriggerBeforeEvent
  , DataDrivenEntityTriggerBeforeEventSignal(..)
  , DefinitionModifier(..)
  , Dimension
  , DimensionLocation
  , DimensionType
  , DimensionTypes(..)
  , Direction(..)
  , DisplaySlotId(..)
  , DyeColor(..)
  , DynamicPropertiesDefinition(..)
  , EasingType(..)
  , Effect
  , EffectAddAfterEvent
  , EffectAddAfterEventSignal(..)
  , EffectType(..)
  , EffectTypes(..)
  , Enchantment
  , EnchantmentList
  , EnchantmentSlot
  , EnchantmentType
  , EnchantmentTypes(..)
  , Entity(..)
  , EntityAddRiderComponent
  , EntityAgeableComponent
  , EntityApplyDamageByProjectileOptions
  , EntityApplyDamageOptions
  , EntityAttributeComponent
  , EntityBaseMovementComponent
  , EntityBreathableComponent
  , EntityCanClimbComponent
  , EntityCanFlyComponent
  , EntityCanPowerJumpComponent
  , EntityColorComponent
  , EntityComponent
  , EntityDamageCause(..)
  , EntityDamageSource
  , EntityDataDrivenTriggerEventOptions
  , EntityDefinitionFeedItem
  , EntityDieAfterEvent
  , EntityDieAfterEventSignal(..)
  , EntityEffectOptions
  , EntityEquippableComponent
  , EntityEventOptions
  , EntityFireImmuneComponent
  , EntityFloatsInLiquidComponent
  , EntityFlyingSpeedComponent
  , EntityFrictionModifierComponent
  , EntityGroundOffsetComponent
  , EntityHealableComponent
  , EntityHealthChangedAfterEvent
  , EntityHealthChangedAfterEventSignal(..)
  , EntityHealthComponent
  , EntityHitBlockAfterEvent
  , EntityHitBlockAfterEventSignal(..)
  , EntityHitEntityAfterEvent
  , EntityHitEntityAfterEventSignal(..)
  , EntityHitInformation
  , EntityHurtAfterEvent
  , EntityHurtAfterEventSignal(..)
  , EntityInventoryComponent
  , EntityIsBabyComponent
  , EntityIsChargedComponent
  , EntityIsChestedComponent
  , EntityIsDyeableComponent
  , EntityIsHiddenWhenInvisibleComponent
  , EntityIsIgnitedComponent
  , EntityIsIllagerCaptainComponent
  , EntityIsSaddledComponent
  , EntityIsShakingComponent
  , EntityIsShearedComponent
  , EntityIsStackableComponent
  , EntityIsStunnedComponent
  , EntityIsTamedComponent
  , EntityItemComponent
  , EntityIterator(..)
  , EntityLavaMovementComponent
  , EntityLeashableComponent
  , EntityLifetimeState(..)
  , EntityMarkVariantComponent
  , EntityMountTamingComponent
  , EntityMovementAmphibiousComponent
  , EntityMovementBasicComponent
  , EntityMovementComponent
  , EntityMovementFlyComponent
  , EntityMovementGenericComponent
  , EntityMovementGlideComponent
  , EntityMovementHoverComponent
  , EntityMovementJumpComponent
  , EntityMovementSkipComponent
  , EntityMovementSwayComponent
  , EntityNavigationClimbComponent
  , EntityNavigationComponent
  , EntityNavigationFloatComponent
  , EntityNavigationFlyComponent
  , EntityNavigationGenericComponent
  , EntityNavigationHoverComponent
  , EntityNavigationWalkComponent
  , EntityOnFireComponent
  , EntityPushThroughComponent
  , EntityQueryOptions
  , EntityQueryScoreOptions
  , EntityRaycastHit
  , EntityRaycastOptions
  , EntityRemovedAfterEvent
  , EntityRemovedAfterEventSignal(..)
  , EntityRideableComponent
  , EntityRidingComponent
  , EntityScaleComponent
  , EntitySkinIdComponent
  , EntitySpawnAfterEvent
  , EntitySpawnAfterEventSignal(..)
  , EntityStrengthComponent
  , EntityTameableComponent
  , EntityType
  , EntityTypeIterator(..)
  , EntityTypes(..)
  , EntityUnderwaterMovementComponent
  , EntityVariantComponent
  , EntityWantsJockeyComponent
  , EquipmentSlot(..)
  , ExplosionAfterEvent
  , ExplosionAfterEventSignal(..)
  , ExplosionBeforeEvent
  , ExplosionBeforeEventSignal(..)
  , ExplosionOptions
  , FeedItem
  , FeedItemEffect
  , FilterGroup(..)
  , FluidContainer
  , FluidType(..)
  , GameMode(..)
  , IButtonPushAfterEventSignal(..)
  , ILeverActionAfterEventSignal(..)
  , IPlayerJoinAfterEventSignal(..)
  , IPlayerLeaveAfterEventSignal(..)
  , IPlayerSpawnAfterEventSignal(..)
  , ItemCompleteUseAfterEvent
  , ItemCompleteUseAfterEventSignal(..)
  , ItemComponent
  , ItemCooldownComponent
  , ItemDefinitionAfterEventSignal(..)
  , ItemDefinitionBeforeEventSignal(..)
  , ItemDefinitionTriggeredAfterEvent
  , ItemDefinitionTriggeredBeforeEvent
  , ItemDurabilityComponent
  , ItemEnchantsComponent
  , ItemFoodComponent
  , ItemLockMode(..)
  , ItemReleaseUseAfterEvent
  , ItemReleaseUseAfterEventSignal(..)
  , ItemStack
  , ItemStartUseAfterEvent
  , ItemStartUseAfterEventSignal(..)
  , ItemStartUseOnAfterEvent
  , ItemStartUseOnAfterEventSignal(..)
  , ItemStopUseAfterEvent
  , ItemStopUseAfterEventSignal(..)
  , ItemStopUseOnAfterEvent
  , ItemStopUseOnAfterEventSignal(..)
  , ItemType
  , ItemTypes(..)
  , ItemUseAfterEvent
  , ItemUseAfterEventSignal(..)
  , ItemUseBeforeEvent
  , ItemUseBeforeEventSignal(..)
  , ItemUseOnAfterEvent
  , ItemUseOnAfterEventSignal(..)
  , ItemUseOnBeforeEvent
  , ItemUseOnBeforeEventSignal(..)
  , LeverActionAfterEvent
  , LeverActionAfterEventSignal(..)
  , MessageReceiveAfterEvent
  , MinecraftDimensionTypes
  , MolangVariableMap(..)
  , MoonPhase(..)
  , MusicOptions
  , NavigationResult
  , NumberRange
  , ObjectiveSortOrder(..)
  , PistonActivateAfterEvent
  , PistonActivateAfterEventSignal(..)
  , PistonActivateBeforeEvent
  , PistonActivateBeforeEventSignal(..)
  , PlayAnimationOptions
  , Player
  , PlayerIterator(..)
  , PlayerJoinAfterEvent
  , PlayerJoinAfterEventSignal(..)
  , PlayerLeaveAfterEvent
  , PlayerLeaveAfterEventSignal(..)
  , PlayerSoundOptions
  , PlayerSpawnAfterEvent
  , PlayerSpawnAfterEventSignal(..)
  , PressurePlatePopAfterEvent
  , PressurePlatePopAfterEventSignal(..)
  , PressurePlatePushAfterEvent
  , PressurePlatePushAfterEventSignal(..)
  , ProjectileHitBlockAfterEvent
  , ProjectileHitBlockAfterEventSignal(..)
  , ProjectileHitEntityAfterEvent
  , ProjectileHitEntityAfterEventSignal(..)
  , PropertyRegistry(..)
  , RGB
  , RGBA
  , RawMessage(..)
  , RawMessageScore
  , RawText
  , Scoreboard(..)
  , ScoreboardIdentity
  , ScoreboardIdentityType(..)
  , ScoreboardObjective
  , ScoreboardObjectiveDisplayOptions
  , ScoreboardScoreInfo
  , ScreenDisplay(..)
  , ScriptCameraDefaultOptions
  , ScriptCameraSetFacingOptions
  , ScriptCameraSetLocationOptions
  , ScriptCameraSetPosOptions
  , ScriptCameraSetRotOptions
  , ScriptEventCommandMessageAfterEvent
  , ScriptEventCommandMessageAfterEventSignal(..)
  , ScriptEventMessageFilterOptions
  , ScriptEventSource(..)
  , Seat
  , ServerMessageAfterEventSignal(..)
  , SignSide(..)
  , System
  , SystemAfterEvents
  , SystemBeforeEvents
  , TargetBlockHitAfterEvent
  , TargetBlockHitAfterEventSignal(..)
  , TeleportOptions
  , TimeOfDay(..)
  , TitleDisplayOptions
  , Trigger
  , TripWireTripAfterEvent
  , TripWireTripAfterEventSignal(..)
  , Vector(..)
  , Vector2
  , Vector3
  , WatchdogTerminateBeforeEvent
  , WatchdogTerminateBeforeEventSignal(..)
  , WatchdogTerminateReason(..)
  , WeatherChangeAfterEvent
  , WeatherChangeAfterEventSignal(..)
  , WeatherType(..)
  , World
  , WorldAfterEvents
  , WorldBeforeEvents
  , WorldInitializeAfterEvent
  , WorldInitializeAfterEventSignal(..)
  , WorldSoundOptions
  , add
  , addDye
  , addEffect_Entity
  , addEffect_Player
  , addEnchantment
  , addExperience
  , addItem
  , addLevels
  , addObjective
  , addRider
  , addScore
  , addTag_Entity
  , addTag_Player
  , applyDamage_Entity
  , applyDamage_Player
  , applyImpulse_Entity
  , applyImpulse_Player
  , applyKnockback_Entity
  , applyKnockback_Player
  , broadcastClientMessage
  , canAddEnchantment
  , canPlace
  , clearAll
  , clearObjectiveAtDisplaySlot
  , clearRecord
  , clearRun
  , clearVelocity_Entity
  , clearVelocity_Player
  , clear_Camera
  , clear_CompoundBlockVolume
  , clone_BlockPermutation
  , clone_ItemStack
  , createExplosion
  , createValid
  , cross
  , defineBoolean
  , defineNumber
  , defineString
  , defineVector
  , dilate
  , distance
  , divide
  , doesLocationTouchFaces
  , doesVolumeTouchFaces
  , ejectRider
  , ejectRiders
  , equals_BlockAreaSize
  , equals_BlockVolumeUtils
  , equals_BoundingBoxUtils
  , equals_Vector
  , expand
  , extinguishFire_Entity
  , extinguishFire_Player
  , fade
  , fillBlocks
  , getAbsoluteTime
  , getAllPlayers
  , getAllStates
  , getAll_BlockStates
  , getAll_BlockTypes
  , getAll_DimensionTypes
  , getAll_EffectTypes
  , getAll_EntityTypes
  , getAll_ItemTypes
  , getAttachedBlocks
  , getBlock
  , getBlockFromRay
  , getBlockFromViewDirection_Entity
  , getBlockFromViewDirection_Player
  , getBlockHit
  , getBlockLocationIterator_BlockVolumeUtils
  , getBlockLocationIterator_CompoundBlockVolume
  , getBoundingBox_BlockVolumeUtils
  , getBoundingBox_CompoundBlockVolume
  , getBreatheBlocks
  , getCapacity
  , getCenter
  , getComponentGroupsToAdd
  , getComponentGroupsToRemove
  , getComponent_Block
  , getComponent_Entity
  , getComponent_ItemStack
  , getComponent_Player
  , getComponents_Entity
  , getComponents_ItemStack
  , getComponents_Player
  , getCustomColor
  , getDamageChance
  , getDamageRange
  , getDay
  , getDefaultSpawnLocation
  , getDimension
  , getDropItems
  , getDynamicProperty_Entity
  , getDynamicProperty_Player
  , getDynamicProperty_World
  , getEffect_Entity
  , getEffect_Player
  , getEffects_Entity
  , getEffects_FeedItem
  , getEffects_Player
  , getEnchantment
  , getEntities
  , getEntitiesAtBlockLocation
  , getEntitiesFromRay
  , getEntitiesFromViewDirection_Entity
  , getEntitiesFromViewDirection_Player
  , getEntityHit
  , getEntity_ScoreboardIdentity
  , getEntity_World
  , getEquipment
  , getEquipmentSlot
  , getFamilyTypes
  , getFeedItems_EntityAgeableComponent
  , getFeedItems_EntityHealableComponent
  , getHeadLocation_Entity
  , getHeadLocation_Player
  , getImpactedBlocks_ExplosionAfterEvent
  , getImpactedBlocks_ExplosionBeforeEvent
  , getIntersection
  , getItemCooldown
  , getItemStack_Block
  , getItemStack_BlockPermutation
  , getItem_Container
  , getItem_ContainerSlot
  , getLore_ContainerSlot
  , getLore_ItemStack
  , getMax_BlockVolumeUtils
  , getMax_CompoundBlockVolume
  , getMin_BlockVolumeUtils
  , getMin_CompoundBlockVolume
  , getModifiers_DataDrivenEntityTriggerAfterEvent
  , getModifiers_DataDrivenEntityTriggerBeforeEvent
  , getMoonPhase
  , getName
  , getNonBreatheBlocks
  , getObjective
  , getObjectiveAtDisplaySlot
  , getObjectives
  , getOrigin
  , getParticipants_Scoreboard
  , getParticipants_ScoreboardObjective
  , getPath
  , getPlayers_Dimension
  , getPlayers_World
  , getRawText
  , getRedstonePower
  , getRiders
  , getRotation_Entity
  , getRotation_Player
  , getScore
  , getScores
  , getSeats
  , getSlot
  , getSpan_BlockVolumeUtils
  , getSpan_BoundingBoxUtils
  , getSpawnPoint
  , getState
  , getTags_Block
  , getTags_BlockPermutation
  , getTags_ContainerSlot
  , getTags_Entity
  , getTags_ItemStack
  , getTags_Player
  , getTameItems
  , getTargets_ChatSendAfterEvent
  , getTargets_ChatSendBeforeEvent
  , getText
  , getTextDyeColor
  , getTimeOfDay
  , getTotalXp
  , getTriggers
  , getVelocity_Entity
  , getVelocity_Player
  , getViewDirection_Entity
  , getViewDirection_Player
  , get_BlockStates
  , get_BlockTypes
  , get_DimensionTypes
  , get_EffectTypes
  , get_EnchantmentTypes
  , get_EntityTypes
  , get_ItemTypes
  , hasComponent_Entity
  , hasComponent_ItemStack
  , hasComponent_Player
  , hasEnchantment
  , hasParticipant
  , hasTag_Block
  , hasTag_BlockPermutation
  , hasTag_ContainerSlot
  , hasTag_Entity
  , hasTag_ItemStack
  , hasTag_Player
  , intersects_BlockVolumeUtils
  , intersects_BoundingBoxUtils
  , isEmpty
  , isInside_BlockVolumeUtils
  , isInside_BoundingBoxUtils
  , isInside_CompoundBlockVolume
  , isOp
  , isPlaying
  , isStackableWith_ContainerSlot
  , isStackableWith_ItemStack
  , isValidLiquid_BlockLavaContainerComponent
  , isValidLiquid_BlockLiquidContainerComponent
  , isValidLiquid_BlockPotionContainerComponent
  , isValidLiquid_BlockSnowContainerComponent
  , isValidLiquid_BlockWaterContainerComponent
  , isValid_Block
  , isValid_BlockComponent
  , isValid_BlockInventoryComponent
  , isValid_BlockLiquidContainerComponent
  , isValid_BlockPistonComponent
  , isValid_BlockPotionContainerComponent
  , isValid_BlockRecordPlayerComponent
  , isValid_BlockSignComponent
  , isValid_BlockSnowContainerComponent
  , isValid_BlockWaterContainerComponent
  , isValid_BoundingBoxUtils
  , isValid_Component
  , isValid_Container
  , isValid_ContainerSlot
  , isValid_Effect
  , isValid_Entity
  , isValid_EntityComponent
  , isValid_EntityEquippableComponent
  , isValid_EntityFireImmuneComponent
  , isValid_EntityFloatsInLiquidComponent
  , isValid_EntityFlyingSpeedComponent
  , isValid_EntityFrictionModifierComponent
  , isValid_EntityGroundOffsetComponent
  , isValid_EntityHealableComponent
  , isValid_EntityInventoryComponent
  , isValid_EntityIsBabyComponent
  , isValid_EntityIsChargedComponent
  , isValid_EntityIsChestedComponent
  , isValid_EntityIsDyeableComponent
  , isValid_EntityIsHiddenWhenInvisibleComponent
  , isValid_EntityIsIgnitedComponent
  , isValid_EntityIsIllagerCaptainComponent
  , isValid_EntityIsSaddledComponent
  , isValid_EntityIsShakingComponent
  , isValid_EntityIsShearedComponent
  , isValid_EntityIsStackableComponent
  , isValid_EntityIsStunnedComponent
  , isValid_EntityIsTamedComponent
  , isValid_EntityItemComponent
  , isValid_EntityLeashableComponent
  , isValid_EntityMarkVariantComponent
  , isValid_EntityMountTamingComponent
  , isValid_EntityNavigationComponent
  , isValid_EntityNavigationFloatComponent
  , isValid_EntityNavigationFlyComponent
  , isValid_EntityNavigationGenericComponent
  , isValid_EntityNavigationHoverComponent
  , isValid_EntityNavigationWalkComponent
  , isValid_EntityOnFireComponent
  , isValid_EntityPushThroughComponent
  , isValid_EntityRideableComponent
  , isValid_EntityRidingComponent
  , isValid_EntityScaleComponent
  , isValid_EntitySkinIdComponent
  , isValid_EntityStrengthComponent
  , isValid_EntityTameableComponent
  , isValid_EntityVariantComponent
  , isValid_EntityWantsJockeyComponent
  , isValid_ItemComponent
  , isValid_ItemCooldownComponent
  , isValid_ItemDurabilityComponent
  , isValid_ItemEnchantsComponent
  , isValid_ItemFoodComponent
  , isValid_Player
  , isValid_ScoreboardIdentity
  , isValid_ScoreboardObjective
  , isValid_ScreenDisplay
  , kill_Entity
  , kill_Player
  , leash
  , length
  , lengthSquared
  , lerp
  , matches
  , max
  , min
  , mk_BlockAreaSize
  , mk_CompoundBlockVolume
  , mk_DefinitionModifier
  , mk_DynamicPropertiesDefinition
  , mk_Enchantment
  , mk_EnchantmentList
  , mk_ItemStack
  , mk_MolangVariableMap
  , mk_Trigger
  , mk_Vector
  , moveItem
  , multiply
  , normalized
  , peekLastVolume
  , playAnimation_Entity
  , playAnimation_Player
  , playMusic
  , playSound_Player
  , playSound_World
  , popVolume
  , postClientMessage
  , pushVolume
  , queueMusic
  , registerEntityTypeDynamicProperties
  , registerWorldDynamicProperties
  , removeAllEnchantments
  , removeDynamicProperty_Entity
  , removeDynamicProperty_Player
  , removeDynamicProperty_World
  , removeEffect_Entity
  , removeEffect_Player
  , removeEnchantment
  , removeObjective
  , removeParticipant
  , removeTag_Entity
  , removeTag_Player
  , remove_Entity
  , remove_Player
  , replaceOrAddLastVolume
  , resetLevel
  , resetToDefaultValue_EntityAttributeComponent
  , resetToDefaultValue_EntityHealthComponent
  , resetToDefaultValue_EntityLavaMovementComponent
  , resetToDefaultValue_EntityMovementComponent
  , resetToDefaultValue_EntityUnderwaterMovementComponent
  , resetToMaxValue_EntityAttributeComponent
  , resetToMaxValue_EntityHealthComponent
  , resetToMaxValue_EntityLavaMovementComponent
  , resetToMaxValue_EntityMovementComponent
  , resetToMaxValue_EntityUnderwaterMovementComponent
  , resetToMinValue_EntityAttributeComponent
  , resetToMinValue_EntityHealthComponent
  , resetToMinValue_EntityLavaMovementComponent
  , resetToMinValue_EntityMovementComponent
  , resetToMinValue_EntityUnderwaterMovementComponent
  , resolve
  , run
  , runCommandAsync_Dimension
  , runCommandAsync_Entity
  , runCommandAsync_Player
  , runCommand_Dimension
  , runCommand_Entity
  , runCommand_Player
  , runInterval
  , runTimeout
  , sendMessage_Player
  , sendMessage_World
  , setAbsoluteTime
  , setActionBar
  , setAirSupply
  , setCamera
  , setCanDestroy_ContainerSlot
  , setCanDestroy_ItemStack
  , setCanPlaceOn_ContainerSlot
  , setCanPlaceOn_ItemStack
  , setColorRGB
  , setColorRGBA
  , setComponentGroupsToAdd
  , setComponentGroupsToRemove
  , setCurrentValue_EntityAttributeComponent
  , setCurrentValue_EntityHealthComponent
  , setCurrentValue_EntityLavaMovementComponent
  , setCurrentValue_EntityMovementComponent
  , setCurrentValue_EntityUnderwaterMovementComponent
  , setCustomColor
  , setDefaultSpawnLocation
  , setDynamicProperty_Entity
  , setDynamicProperty_Player
  , setDynamicProperty_World
  , setEquipment
  , setFloat
  , setImpactedBlocks
  , setItem_Container
  , setItem_ContainerSlot
  , setLore_ContainerSlot
  , setLore_ItemStack
  , setModifiers
  , setObjectiveAtDisplaySlot
  , setOnFire_Entity
  , setOnFire_Player
  , setOp
  , setOrigin
  , setPermutation
  , setPotionType
  , setRecord
  , setRotation_Entity
  , setRotation_Player
  , setScore
  , setSpawnPoint
  , setSpeedAndDirection
  , setTamed
  , setTargets
  , setText
  , setTextDyeColor
  , setTimeOfDay
  , setTitle
  , setTriggers
  , setType
  , setVector3
  , setWaxed
  , setWeather
  , slerp
  , spawnEntity
  , spawnItem
  , spawnParticle
  , startCooldown
  , startItemCooldown
  , stopMusic
  , subscribe_BlockBreakAfterEventSignal
  , subscribe_BlockExplodeAfterEventSignal
  , subscribe_BlockPlaceAfterEventSignal
  , subscribe_ButtonPushAfterEventSignal
  , subscribe_ChatSendAfterEventSignal
  , subscribe_ChatSendBeforeEventSignal
  , subscribe_DataDrivenEntityTriggerAfterEventSignal
  , subscribe_DataDrivenEntityTriggerBeforeEventSignal
  , subscribe_EffectAddAfterEventSignal
  , subscribe_EntityDieAfterEventSignal
  , subscribe_EntityHealthChangedAfterEventSignal
  , subscribe_EntityHitBlockAfterEventSignal
  , subscribe_EntityHitEntityAfterEventSignal
  , subscribe_EntityHurtAfterEventSignal
  , subscribe_EntityRemovedAfterEventSignal
  , subscribe_EntitySpawnAfterEventSignal
  , subscribe_ExplosionAfterEventSignal
  , subscribe_ExplosionBeforeEventSignal
  , subscribe_IButtonPushAfterEventSignal
  , subscribe_ILeverActionAfterEventSignal
  , subscribe_IPlayerJoinAfterEventSignal
  , subscribe_IPlayerLeaveAfterEventSignal
  , subscribe_IPlayerSpawnAfterEventSignal
  , subscribe_ItemCompleteUseAfterEventSignal
  , subscribe_ItemDefinitionAfterEventSignal
  , subscribe_ItemDefinitionBeforeEventSignal
  , subscribe_ItemReleaseUseAfterEventSignal
  , subscribe_ItemStartUseAfterEventSignal
  , subscribe_ItemStartUseOnAfterEventSignal
  , subscribe_ItemStopUseAfterEventSignal
  , subscribe_ItemStopUseOnAfterEventSignal
  , subscribe_ItemUseAfterEventSignal
  , subscribe_ItemUseBeforeEventSignal
  , subscribe_ItemUseOnAfterEventSignal
  , subscribe_ItemUseOnBeforeEventSignal
  , subscribe_LeverActionAfterEventSignal
  , subscribe_PistonActivateAfterEventSignal
  , subscribe_PistonActivateBeforeEventSignal
  , subscribe_PlayerJoinAfterEventSignal
  , subscribe_PlayerLeaveAfterEventSignal
  , subscribe_PlayerSpawnAfterEventSignal
  , subscribe_PressurePlatePopAfterEventSignal
  , subscribe_PressurePlatePushAfterEventSignal
  , subscribe_ProjectileHitBlockAfterEventSignal
  , subscribe_ProjectileHitEntityAfterEventSignal
  , subscribe_ScriptEventCommandMessageAfterEventSignal
  , subscribe_ServerMessageAfterEventSignal
  , subscribe_TargetBlockHitAfterEventSignal
  , subscribe_TripWireTripAfterEventSignal
  , subscribe_WatchdogTerminateBeforeEventSignal
  , subscribe_WeatherChangeAfterEventSignal
  , subscribe_WorldInitializeAfterEventSignal
  , subtract
  , swapItems
  , system
  , tame
  , teleport_Entity
  , teleport_Player
  , transferItem
  , translateOrigin
  , translate_BlockVolumeUtils
  , translate_BoundingBoxUtils
  , triggerEvent_Entity
  , triggerEvent_ItemStack
  , triggerEvent_Player
  , trySetPermutation
  , tryTeleport_Entity
  , tryTeleport_Player
  , unleash
  , unsubscribe_BlockBreakAfterEventSignal
  , unsubscribe_BlockExplodeAfterEventSignal
  , unsubscribe_BlockPlaceAfterEventSignal
  , unsubscribe_ButtonPushAfterEventSignal
  , unsubscribe_ChatSendAfterEventSignal
  , unsubscribe_ChatSendBeforeEventSignal
  , unsubscribe_DataDrivenEntityTriggerAfterEventSignal
  , unsubscribe_DataDrivenEntityTriggerBeforeEventSignal
  , unsubscribe_EffectAddAfterEventSignal
  , unsubscribe_EntityDieAfterEventSignal
  , unsubscribe_EntityHealthChangedAfterEventSignal
  , unsubscribe_EntityHitBlockAfterEventSignal
  , unsubscribe_EntityHitEntityAfterEventSignal
  , unsubscribe_EntityHurtAfterEventSignal
  , unsubscribe_EntityRemovedAfterEventSignal
  , unsubscribe_EntitySpawnAfterEventSignal
  , unsubscribe_ExplosionAfterEventSignal
  , unsubscribe_ExplosionBeforeEventSignal
  , unsubscribe_IButtonPushAfterEventSignal
  , unsubscribe_ILeverActionAfterEventSignal
  , unsubscribe_IPlayerJoinAfterEventSignal
  , unsubscribe_IPlayerLeaveAfterEventSignal
  , unsubscribe_IPlayerSpawnAfterEventSignal
  , unsubscribe_ItemCompleteUseAfterEventSignal
  , unsubscribe_ItemDefinitionAfterEventSignal
  , unsubscribe_ItemDefinitionBeforeEventSignal
  , unsubscribe_ItemReleaseUseAfterEventSignal
  , unsubscribe_ItemStartUseAfterEventSignal
  , unsubscribe_ItemStartUseOnAfterEventSignal
  , unsubscribe_ItemStopUseAfterEventSignal
  , unsubscribe_ItemStopUseOnAfterEventSignal
  , unsubscribe_ItemUseAfterEventSignal
  , unsubscribe_ItemUseBeforeEventSignal
  , unsubscribe_ItemUseOnAfterEventSignal
  , unsubscribe_ItemUseOnBeforeEventSignal
  , unsubscribe_LeverActionAfterEventSignal
  , unsubscribe_PistonActivateAfterEventSignal
  , unsubscribe_PistonActivateBeforeEventSignal
  , unsubscribe_PlayerJoinAfterEventSignal
  , unsubscribe_PlayerLeaveAfterEventSignal
  , unsubscribe_PlayerSpawnAfterEventSignal
  , unsubscribe_PressurePlatePopAfterEventSignal
  , unsubscribe_PressurePlatePushAfterEventSignal
  , unsubscribe_ProjectileHitBlockAfterEventSignal
  , unsubscribe_ProjectileHitEntityAfterEventSignal
  , unsubscribe_ScriptEventCommandMessageAfterEventSignal
  , unsubscribe_ServerMessageAfterEventSignal
  , unsubscribe_TargetBlockHitAfterEventSignal
  , unsubscribe_TripWireTripAfterEventSignal
  , unsubscribe_WatchdogTerminateBeforeEventSignal
  , unsubscribe_WeatherChangeAfterEventSignal
  , unsubscribe_WorldInitializeAfterEventSignal
  , updateSubtitle
  , withState
  , world
  )
  where
import Minecraft.Utils (class Event)
import Prelude (Unit)
import Data.Map (Map)
import Data.Newtype (class Newtype)
import Data.Nullable
import Data.Maybe (Maybe)
import Untagged.Union (type (|+|))
import Control.Promise (Promise)
import Effect (Effect) as Eff
data BlockVolumeIntersection = BlockVolumeIntersection Int
data CompoundBlockVolumeAction = CompoundBlockVolumeAction Int
data CompoundBlockVolumePositionRelativity = CompoundBlockVolumePositionRelativity Int
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
data MoonPhase = MoonPhase Int
data ObjectiveSortOrder = ObjectiveSortOrder Int
data ScoreboardIdentityType = ScoreboardIdentityType String
data ScriptEventSource = ScriptEventSource String
data SignSide = SignSide String
data TimeOfDay = TimeOfDay Int
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

foreign import _prim_canPlace :: Block -> (BlockPermutation |+| BlockType |+| String) -> Nullable (Direction) -> Boolean
canPlace :: Block -> (BlockPermutation |+| BlockType |+| String) -> Maybe (Direction) -> Boolean
canPlace a b c =  (_prim_canPlace a b (toNullable c))
foreign import _prim_getComponent_Block :: Block -> String -> Nullable (BlockComponent)
getComponent_Block :: Block -> String -> Maybe (BlockComponent)
getComponent_Block a b = toMaybe (_prim_getComponent_Block a b)
foreign import getItemStack_Block :: Block -> Int -> Boolean -> ItemStack
foreign import _prim_getRedstonePower :: Block -> Nullable (Int)
getRedstonePower :: Block -> Maybe (Int)
getRedstonePower a = toMaybe (_prim_getRedstonePower a)
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
foreign import _prim_getState :: BlockPermutation -> String -> Nullable ((Boolean |+| Int |+| String))
getState :: BlockPermutation -> String -> Maybe ((Boolean |+| Int |+| String))
getState a b = toMaybe (_prim_getState a b)
foreign import getTags_BlockPermutation :: BlockPermutation -> Array (String)
foreign import hasTag_BlockPermutation :: BlockPermutation -> String -> Boolean
foreign import _prim_matches :: BlockPermutation -> String -> Nullable (Map String (Boolean |+| Int |+| String)) -> Boolean
matches :: BlockPermutation -> String -> Maybe (Map String (Boolean |+| Int |+| String)) -> Boolean
matches a b c =  (_prim_matches a b (toNullable c))
foreign import _prim_resolve :: String -> Nullable (Map String (Boolean |+| Int |+| String)) -> BlockPermutation
resolve :: String -> Maybe (Map String (Boolean |+| Int |+| String)) -> BlockPermutation
resolve a b =  (_prim_resolve a (toNullable b))
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
foreign import _prim_getRawText :: BlockSignComponent -> SignSide -> Nullable (RawText)
getRawText :: BlockSignComponent -> SignSide -> Maybe (RawText)
getRawText a b = toMaybe (_prim_getRawText a b)
foreign import _prim_getText :: BlockSignComponent -> SignSide -> Nullable (String)
getText :: BlockSignComponent -> SignSide -> Maybe (String)
getText a b = toMaybe (_prim_getText a b)
foreign import _prim_getTextDyeColor :: BlockSignComponent -> SignSide -> Nullable (DyeColor)
getTextDyeColor :: BlockSignComponent -> SignSide -> Maybe (DyeColor)
getTextDyeColor a b = toMaybe (_prim_getTextDyeColor a b)
foreign import _prim_setText :: BlockSignComponent -> (RawMessage |+| RawText |+| String) -> SignSide -> Eff.Effect Unit
setText :: BlockSignComponent -> (RawMessage |+| RawText |+| String) -> SignSide -> Eff.Effect Unit
setText a b c =  (_prim_setText a b c)
foreign import _prim_setTextDyeColor :: BlockSignComponent -> Nullable (DyeColor) -> SignSide -> Eff.Effect Unit
setTextDyeColor :: BlockSignComponent -> Maybe (DyeColor) -> SignSide -> Eff.Effect Unit
setTextDyeColor a b c =  (_prim_setTextDyeColor a (toNullable b) c)
foreign import setWaxed :: BlockSignComponent -> Eff.Effect Unit
foreign import isValid_BlockSignComponent :: BlockSignComponent -> Boolean
foreign import isValidLiquid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import isValid_BlockSnowContainerComponent :: BlockSnowContainerComponent -> Boolean
foreign import get_BlockStates :: String -> BlockStateType
foreign import getAll_BlockStates :: Array (BlockStateType)
foreign import _prim_get_BlockTypes :: String -> Nullable (BlockType)
get_BlockTypes :: String -> Maybe (BlockType)
get_BlockTypes a = toMaybe (_prim_get_BlockTypes a)
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
foreign import _prim_getIntersection :: BoundingBox -> BoundingBox -> Nullable (BoundingBox)
getIntersection :: BoundingBox -> BoundingBox -> Maybe (BoundingBox)
getIntersection a b = toMaybe (_prim_getIntersection a b)
foreign import getSpan_BoundingBoxUtils :: BoundingBox -> Vector3
foreign import intersects_BoundingBoxUtils :: BoundingBox -> BoundingBox -> Boolean
foreign import isInside_BoundingBoxUtils :: BoundingBox -> Vector3 -> Boolean
foreign import isValid_BoundingBoxUtils :: BoundingBox -> Boolean
foreign import translate_BoundingBoxUtils :: BoundingBox -> Vector3 -> BoundingBox
foreign import subscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> (ButtonPushAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ButtonPushAfterEventSignal :: ButtonPushAfterEventSignal -> (ButtonPushAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clear_Camera :: Camera -> Eff.Effect Unit
foreign import _prim_fade :: Camera -> Nullable (CameraFadeOptions) -> Eff.Effect Unit
fade :: Camera -> Maybe (CameraFadeOptions) -> Eff.Effect Unit
fade a b =  (_prim_fade a (toNullable b))
foreign import _prim_setCamera :: Camera -> String -> Nullable (Nullable ((ScriptCameraDefaultOptions |+| ScriptCameraSetFacingOptions |+| ScriptCameraSetLocationOptions |+| ScriptCameraSetPosOptions |+| ScriptCameraSetRotOptions))) -> Eff.Effect Unit
setCamera :: Camera -> String -> Maybe (Nullable ((ScriptCameraDefaultOptions |+| ScriptCameraSetFacingOptions |+| ScriptCameraSetLocationOptions |+| ScriptCameraSetPosOptions |+| ScriptCameraSetRotOptions))) -> Eff.Effect Unit
setCamera a b c =  (_prim_setCamera a b (toNullable c))
foreign import getTargets_ChatSendAfterEvent :: ChatSendAfterEvent -> Array (Player)
foreign import subscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> (ChatSendAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendAfterEventSignal :: ChatSendAfterEventSignal -> (ChatSendAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import setTargets :: ChatSendBeforeEvent -> Array (Player) -> Eff.Effect Unit
foreign import getTargets_ChatSendBeforeEvent :: ChatSendBeforeEvent -> Array (Player)
foreign import subscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> (ChatSendBeforeEvent -> Eff.Effect Unit)
foreign import unsubscribe_ChatSendBeforeEventSignal :: ChatSendBeforeEventSignal -> (ChatSendBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import isValid_Component :: Component -> Boolean
foreign import clear_CompoundBlockVolume :: CompoundBlockVolume -> Eff.Effect Unit
foreign import _prim_mk_CompoundBlockVolume :: Nullable (Vector3) -> CompoundBlockVolume
mk_CompoundBlockVolume :: Maybe (Vector3) -> CompoundBlockVolume
mk_CompoundBlockVolume a =  (_prim_mk_CompoundBlockVolume (toNullable a))
foreign import getBlockLocationIterator_CompoundBlockVolume :: CompoundBlockVolume -> BlockLocationIterator
foreign import getBoundingBox_CompoundBlockVolume :: CompoundBlockVolume -> BoundingBox
foreign import getMax_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getMin_CompoundBlockVolume :: CompoundBlockVolume -> Vector3
foreign import getOrigin :: CompoundBlockVolume -> Vector3
foreign import isEmpty :: CompoundBlockVolume -> Boolean
foreign import isInside_CompoundBlockVolume :: CompoundBlockVolume -> Vector3 -> Boolean
foreign import _prim_peekLastVolume :: CompoundBlockVolume -> Nullable (CompoundBlockVolumePositionRelativity) -> Nullable (CompoundBlockVolumeItem)
peekLastVolume :: CompoundBlockVolume -> Maybe (CompoundBlockVolumePositionRelativity) -> Maybe (CompoundBlockVolumeItem)
peekLastVolume a b = toMaybe (_prim_peekLastVolume a (toNullable b))
foreign import popVolume :: CompoundBlockVolume -> Boolean
foreign import pushVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Eff.Effect Unit
foreign import replaceOrAddLastVolume :: CompoundBlockVolume -> CompoundBlockVolumeItem -> Boolean
foreign import _prim_setOrigin :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
setOrigin :: CompoundBlockVolume -> Vector3 -> Maybe (Boolean) -> Eff.Effect Unit
setOrigin a b c =  (_prim_setOrigin a b (toNullable c))
foreign import _prim_translateOrigin :: CompoundBlockVolume -> Vector3 -> Nullable (Boolean) -> Eff.Effect Unit
translateOrigin :: CompoundBlockVolume -> Vector3 -> Maybe (Boolean) -> Eff.Effect Unit
translateOrigin a b c =  (_prim_translateOrigin a b (toNullable c))
foreign import addItem :: Container -> ItemStack -> ItemStack
foreign import clearAll :: Container -> Eff.Effect Unit
foreign import _prim_getItem_Container :: Container -> Int -> Nullable (ItemStack)
getItem_Container :: Container -> Int -> Maybe (ItemStack)
getItem_Container a b = toMaybe (_prim_getItem_Container a b)
foreign import getSlot :: Container -> Int -> ContainerSlot
foreign import isValid_Container :: Container -> Boolean
foreign import moveItem :: Container -> Int -> Int -> Container -> Eff.Effect Unit
foreign import _prim_setItem_Container :: Container -> Int -> Nullable (ItemStack) -> Eff.Effect Unit
setItem_Container :: Container -> Int -> Maybe (ItemStack) -> Eff.Effect Unit
setItem_Container a b c =  (_prim_setItem_Container a b (toNullable c))
foreign import swapItems :: Container -> Int -> Int -> Container -> Eff.Effect Unit
foreign import transferItem :: Container -> Int -> Container -> ItemStack
foreign import _prim_getItem_ContainerSlot :: ContainerSlot -> Nullable (ItemStack)
getItem_ContainerSlot :: ContainerSlot -> Maybe (ItemStack)
getItem_ContainerSlot a = toMaybe (_prim_getItem_ContainerSlot a)
foreign import getLore_ContainerSlot :: ContainerSlot -> Array (String)
foreign import getTags_ContainerSlot :: ContainerSlot -> Array (String)
foreign import hasTag_ContainerSlot :: ContainerSlot -> String -> Boolean
foreign import isStackableWith_ContainerSlot :: ContainerSlot -> ItemStack -> Boolean
foreign import isValid_ContainerSlot :: ContainerSlot -> Boolean
foreign import _prim_setCanDestroy_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
setCanDestroy_ContainerSlot :: ContainerSlot -> Maybe (Array (String)) -> Eff.Effect Unit
setCanDestroy_ContainerSlot a b =  (_prim_setCanDestroy_ContainerSlot a (toNullable b))
foreign import _prim_setCanPlaceOn_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
setCanPlaceOn_ContainerSlot :: ContainerSlot -> Maybe (Array (String)) -> Eff.Effect Unit
setCanPlaceOn_ContainerSlot a b =  (_prim_setCanPlaceOn_ContainerSlot a (toNullable b))
foreign import _prim_setItem_ContainerSlot :: ContainerSlot -> Nullable (ItemStack) -> Eff.Effect Unit
setItem_ContainerSlot :: ContainerSlot -> Maybe (ItemStack) -> Eff.Effect Unit
setItem_ContainerSlot a b =  (_prim_setItem_ContainerSlot a (toNullable b))
foreign import _prim_setLore_ContainerSlot :: ContainerSlot -> Nullable (Array (String)) -> Eff.Effect Unit
setLore_ContainerSlot :: ContainerSlot -> Maybe (Array (String)) -> Eff.Effect Unit
setLore_ContainerSlot a b =  (_prim_setLore_ContainerSlot a (toNullable b))
foreign import getModifiers_DataDrivenEntityTriggerAfterEvent :: DataDrivenEntityTriggerAfterEvent -> Array (DefinitionModifier)
foreign import _prim_subscribe_DataDrivenEntityTriggerAfterEventSignal :: DataDrivenEntityTriggerAfterEventSignal -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit) -> Nullable (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit)
subscribe_DataDrivenEntityTriggerAfterEventSignal :: DataDrivenEntityTriggerAfterEventSignal -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit) -> Maybe (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit)
subscribe_DataDrivenEntityTriggerAfterEventSignal a b c =  (_prim_subscribe_DataDrivenEntityTriggerAfterEventSignal a b (toNullable c))
foreign import unsubscribe_DataDrivenEntityTriggerAfterEventSignal :: DataDrivenEntityTriggerAfterEventSignal -> (DataDrivenEntityTriggerAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getModifiers_DataDrivenEntityTriggerBeforeEvent :: DataDrivenEntityTriggerBeforeEvent -> Array (DefinitionModifier)
foreign import setModifiers :: DataDrivenEntityTriggerBeforeEvent -> Array (DefinitionModifier) -> Eff.Effect Unit
foreign import _prim_subscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Nullable (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit)
subscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Maybe (EntityDataDrivenTriggerEventOptions) -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit)
subscribe_DataDrivenEntityTriggerBeforeEventSignal a b c =  (_prim_subscribe_DataDrivenEntityTriggerBeforeEventSignal a b (toNullable c))
foreign import unsubscribe_DataDrivenEntityTriggerBeforeEventSignal :: DataDrivenEntityTriggerBeforeEventSignal -> (DataDrivenEntityTriggerBeforeEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import mk_DefinitionModifier :: DefinitionModifier
foreign import getComponentGroupsToAdd :: DefinitionModifier -> Array (String)
foreign import getComponentGroupsToRemove :: DefinitionModifier -> Array (String)
foreign import getTriggers :: DefinitionModifier -> Array (Trigger)
foreign import setComponentGroupsToAdd :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setComponentGroupsToRemove :: DefinitionModifier -> Array (String) -> Eff.Effect Unit
foreign import setTriggers :: DefinitionModifier -> Array (Trigger) -> Eff.Effect Unit
foreign import _prim_createExplosion :: Dimension -> Vector3 -> Number -> Nullable (ExplosionOptions) -> Eff.Effect Unit
createExplosion :: Dimension -> Vector3 -> Number -> Maybe (ExplosionOptions) -> Eff.Effect Unit
createExplosion a b c d =  (_prim_createExplosion a b c (toNullable d))
foreign import _prim_fillBlocks :: Dimension -> Vector3 -> Vector3 -> (BlockPermutation |+| BlockType |+| String) -> Nullable (BlockFillOptions) -> Int
fillBlocks :: Dimension -> Vector3 -> Vector3 -> (BlockPermutation |+| BlockType |+| String) -> Maybe (BlockFillOptions) -> Int
fillBlocks a b c d e =  (_prim_fillBlocks a b c d (toNullable e))
foreign import _prim_getBlock :: Dimension -> Vector3 -> Nullable (Block)
getBlock :: Dimension -> Vector3 -> Maybe (Block)
getBlock a b = toMaybe (_prim_getBlock a b)
foreign import _prim_getBlockFromRay :: Dimension -> Vector3 -> Vector3 -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
getBlockFromRay :: Dimension -> Vector3 -> Vector3 -> Maybe (BlockRaycastOptions) -> Maybe (BlockRaycastHit)
getBlockFromRay a b c d = toMaybe (_prim_getBlockFromRay a b c (toNullable d))
foreign import _prim_getEntities :: Dimension -> Nullable (EntityQueryOptions) -> Array (Entity)
getEntities :: Dimension -> Maybe (EntityQueryOptions) -> Array (Entity)
getEntities a b =  (_prim_getEntities a (toNullable b))
foreign import getEntitiesAtBlockLocation :: Dimension -> Vector3 -> Array (Entity)
foreign import _prim_getEntitiesFromRay :: Dimension -> Vector3 -> Vector3 -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromRay :: Dimension -> Vector3 -> Vector3 -> Maybe (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromRay a b c d =  (_prim_getEntitiesFromRay a b c (toNullable d))
foreign import _prim_getPlayers_Dimension :: Dimension -> Nullable (EntityQueryOptions) -> Array (Player)
getPlayers_Dimension :: Dimension -> Maybe (EntityQueryOptions) -> Array (Player)
getPlayers_Dimension a b =  (_prim_getPlayers_Dimension a (toNullable b))
foreign import runCommand_Dimension :: Dimension -> String -> CommandResult
foreign import runCommandAsync_Dimension :: Dimension -> String -> Promise (CommandResult)
foreign import _prim_setWeather :: Dimension -> WeatherType -> Eff.Effect Unit
setWeather :: Dimension -> WeatherType -> Eff.Effect Unit
setWeather a b =  (_prim_setWeather a b)
foreign import spawnEntity :: Dimension -> String -> Vector3 -> Entity
foreign import spawnItem :: Dimension -> ItemStack -> Vector3 -> Entity
foreign import _prim_spawnParticle :: Dimension -> String -> Vector3 -> Nullable (MolangVariableMap) -> Eff.Effect Unit
spawnParticle :: Dimension -> String -> Vector3 -> Maybe (MolangVariableMap) -> Eff.Effect Unit
spawnParticle a b c d =  (_prim_spawnParticle a b c (toNullable d))
foreign import _prim_get_DimensionTypes :: String -> Nullable (DimensionType)
get_DimensionTypes :: String -> Maybe (DimensionType)
get_DimensionTypes a = toMaybe (_prim_get_DimensionTypes a)
foreign import getAll_DimensionTypes :: Array (DimensionType)
foreign import mk_DynamicPropertiesDefinition :: DynamicPropertiesDefinition
foreign import _prim_defineBoolean :: DynamicPropertiesDefinition -> String -> Nullable (Boolean) -> DynamicPropertiesDefinition
defineBoolean :: DynamicPropertiesDefinition -> String -> Maybe (Boolean) -> DynamicPropertiesDefinition
defineBoolean a b c =  (_prim_defineBoolean a b (toNullable c))
foreign import _prim_defineNumber :: DynamicPropertiesDefinition -> String -> Nullable (Number) -> DynamicPropertiesDefinition
defineNumber :: DynamicPropertiesDefinition -> String -> Maybe (Number) -> DynamicPropertiesDefinition
defineNumber a b c =  (_prim_defineNumber a b (toNullable c))
foreign import _prim_defineString :: DynamicPropertiesDefinition -> String -> Int -> Nullable (String) -> DynamicPropertiesDefinition
defineString :: DynamicPropertiesDefinition -> String -> Int -> Maybe (String) -> DynamicPropertiesDefinition
defineString a b c d =  (_prim_defineString a b c (toNullable d))
foreign import _prim_defineVector :: DynamicPropertiesDefinition -> String -> Nullable (Vector3) -> DynamicPropertiesDefinition
defineVector :: DynamicPropertiesDefinition -> String -> Maybe (Vector3) -> DynamicPropertiesDefinition
defineVector a b c =  (_prim_defineVector a b (toNullable c))
foreign import isValid_Effect :: Effect -> Boolean
foreign import _prim_subscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EffectAddAfterEvent -> Eff.Effect Unit)
subscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EffectAddAfterEvent -> Eff.Effect Unit)
subscribe_EffectAddAfterEventSignal a b c =  (_prim_subscribe_EffectAddAfterEventSignal a b (toNullable c))
foreign import unsubscribe_EffectAddAfterEventSignal :: EffectAddAfterEventSignal -> (EffectAddAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import getName :: EffectType -> String
foreign import _prim_get_EffectTypes :: String -> Nullable (EffectType)
get_EffectTypes :: String -> Maybe (EffectType)
get_EffectTypes a = toMaybe (_prim_get_EffectTypes a)
foreign import getAll_EffectTypes :: Array (EffectType)
foreign import mk_Enchantment :: (EnchantmentType |+| String) -> Int -> Enchantment
foreign import addEnchantment :: EnchantmentList -> Enchantment -> Boolean
foreign import canAddEnchantment :: EnchantmentList -> Enchantment -> Boolean
foreign import mk_EnchantmentList :: Int -> EnchantmentList
foreign import _prim_getEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Nullable (Enchantment)
getEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Maybe (Enchantment)
getEnchantment a b = toMaybe (_prim_getEnchantment a b)
foreign import hasEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Int
foreign import removeEnchantment :: EnchantmentList -> (EnchantmentType |+| String) -> Eff.Effect Unit
foreign import _prim_get_EnchantmentTypes :: String -> Nullable (EnchantmentType)
get_EnchantmentTypes :: String -> Maybe (EnchantmentType)
get_EnchantmentTypes a = toMaybe (_prim_get_EnchantmentTypes a)
foreign import _prim_addEffect_Entity :: Entity -> (EffectType |+| String) -> Int -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
addEffect_Entity :: Entity -> (EffectType |+| String) -> Int -> Maybe (EntityEffectOptions) -> Eff.Effect Unit
addEffect_Entity a b c d =  (_prim_addEffect_Entity a b c (toNullable d))
foreign import addTag_Entity :: Entity -> String -> Boolean
foreign import _prim_applyDamage_Entity :: Entity -> Number -> Nullable ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
applyDamage_Entity :: Entity -> Number -> Maybe ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
applyDamage_Entity a b c =  (_prim_applyDamage_Entity a b (toNullable c))
foreign import applyImpulse_Entity :: Entity -> Vector3 -> Eff.Effect Unit
foreign import applyKnockback_Entity :: Entity -> Number -> Number -> Number -> Number -> Eff.Effect Unit
foreign import clearVelocity_Entity :: Entity -> Eff.Effect Unit
foreign import _prim_extinguishFire_Entity :: Entity -> Nullable (Boolean) -> Boolean
extinguishFire_Entity :: Entity -> Maybe (Boolean) -> Boolean
extinguishFire_Entity a b =  (_prim_extinguishFire_Entity a (toNullable b))
foreign import _prim_getBlockFromViewDirection_Entity :: Entity -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
getBlockFromViewDirection_Entity :: Entity -> Maybe (BlockRaycastOptions) -> Maybe (BlockRaycastHit)
getBlockFromViewDirection_Entity a b = toMaybe (_prim_getBlockFromViewDirection_Entity a (toNullable b))
foreign import _prim_getComponent_Entity :: Entity -> String -> Nullable (EntityComponent)
getComponent_Entity :: Entity -> String -> Maybe (EntityComponent)
getComponent_Entity a b = toMaybe (_prim_getComponent_Entity a b)
foreign import getComponents_Entity :: Entity -> Array (EntityComponent)
foreign import _prim_getDynamicProperty_Entity :: Entity -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_Entity :: Entity -> String -> Maybe ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_Entity a b = toMaybe (_prim_getDynamicProperty_Entity a b)
foreign import _prim_getEffect_Entity :: Entity -> (EffectType |+| String) -> Nullable (Effect)
getEffect_Entity :: Entity -> (EffectType |+| String) -> Maybe (Effect)
getEffect_Entity a b = toMaybe (_prim_getEffect_Entity a b)
foreign import getEffects_Entity :: Entity -> Array (Effect)
foreign import _prim_getEntitiesFromViewDirection_Entity :: Entity -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromViewDirection_Entity :: Entity -> Maybe (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromViewDirection_Entity a b =  (_prim_getEntitiesFromViewDirection_Entity a (toNullable b))
foreign import getHeadLocation_Entity :: Entity -> Vector3
foreign import getRotation_Entity :: Entity -> Vector2
foreign import getTags_Entity :: Entity -> Array (String)
foreign import getVelocity_Entity :: Entity -> Vector3
foreign import getViewDirection_Entity :: Entity -> Vector3
foreign import hasComponent_Entity :: Entity -> String -> Boolean
foreign import hasTag_Entity :: Entity -> String -> Boolean
foreign import isValid_Entity :: Entity -> Boolean
foreign import kill_Entity :: Entity -> Boolean
foreign import _prim_playAnimation_Entity :: Entity -> String -> Nullable (PlayAnimationOptions) -> Eff.Effect Unit
playAnimation_Entity :: Entity -> String -> Maybe (PlayAnimationOptions) -> Eff.Effect Unit
playAnimation_Entity a b c =  (_prim_playAnimation_Entity a b (toNullable c))
foreign import remove_Entity :: Entity -> Eff.Effect Unit
foreign import removeDynamicProperty_Entity :: Entity -> String -> Boolean
foreign import removeEffect_Entity :: Entity -> (EffectType |+| String) -> Boolean
foreign import removeTag_Entity :: Entity -> String -> Boolean
foreign import runCommand_Entity :: Entity -> String -> CommandResult
foreign import runCommandAsync_Entity :: Entity -> String -> Promise (CommandResult)
foreign import setDynamicProperty_Entity :: Entity -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import _prim_setOnFire_Entity :: Entity -> Int -> Nullable (Boolean) -> Boolean
setOnFire_Entity :: Entity -> Int -> Maybe (Boolean) -> Boolean
setOnFire_Entity a b c =  (_prim_setOnFire_Entity a b (toNullable c))
foreign import setRotation_Entity :: Entity -> Vector2 -> Eff.Effect Unit
foreign import _prim_teleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Eff.Effect Unit
teleport_Entity :: Entity -> Vector3 -> Maybe (TeleportOptions) -> Eff.Effect Unit
teleport_Entity a b c =  (_prim_teleport_Entity a b (toNullable c))
foreign import triggerEvent_Entity :: Entity -> String -> Eff.Effect Unit
foreign import _prim_tryTeleport_Entity :: Entity -> Vector3 -> Nullable (TeleportOptions) -> Boolean
tryTeleport_Entity :: Entity -> Vector3 -> Maybe (TeleportOptions) -> Boolean
tryTeleport_Entity a b c =  (_prim_tryTeleport_Entity a b (toNullable c))
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
foreign import _prim_subscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityDieAfterEvent -> Eff.Effect Unit)
subscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityDieAfterEvent -> Eff.Effect Unit)
subscribe_EntityDieAfterEventSignal a b c =  (_prim_subscribe_EntityDieAfterEventSignal a b (toNullable c))
foreign import unsubscribe_EntityDieAfterEventSignal :: EntityDieAfterEventSignal -> (EntityDieAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import _prim_getEquipment :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack)
getEquipment :: EntityEquippableComponent -> EquipmentSlot -> Maybe (ItemStack)
getEquipment a b = toMaybe (_prim_getEquipment a b)
foreign import _prim_getEquipmentSlot :: EntityEquippableComponent -> EquipmentSlot -> ContainerSlot
getEquipmentSlot :: EntityEquippableComponent -> EquipmentSlot -> ContainerSlot
getEquipmentSlot a b =  (_prim_getEquipmentSlot a b)
foreign import _prim_setEquipment :: EntityEquippableComponent -> EquipmentSlot -> Nullable (ItemStack) -> Boolean
setEquipment :: EntityEquippableComponent -> EquipmentSlot -> Maybe (ItemStack) -> Boolean
setEquipment a b c =  (_prim_setEquipment a b (toNullable c))
foreign import isValid_EntityEquippableComponent :: EntityEquippableComponent -> Boolean
foreign import isValid_EntityFireImmuneComponent :: EntityFireImmuneComponent -> Boolean
foreign import isValid_EntityFloatsInLiquidComponent :: EntityFloatsInLiquidComponent -> Boolean
foreign import isValid_EntityFlyingSpeedComponent :: EntityFlyingSpeedComponent -> Boolean
foreign import isValid_EntityFrictionModifierComponent :: EntityFrictionModifierComponent -> Boolean
foreign import isValid_EntityGroundOffsetComponent :: EntityGroundOffsetComponent -> Boolean
foreign import getFeedItems_EntityHealableComponent :: EntityHealableComponent -> Array (FeedItem)
foreign import isValid_EntityHealableComponent :: EntityHealableComponent -> Boolean
foreign import _prim_subscribe_EntityHealthChangedAfterEventSignal :: EntityHealthChangedAfterEventSignal -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit)
subscribe_EntityHealthChangedAfterEventSignal :: EntityHealthChangedAfterEventSignal -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit)
subscribe_EntityHealthChangedAfterEventSignal a b c =  (_prim_subscribe_EntityHealthChangedAfterEventSignal a b (toNullable c))
foreign import unsubscribe_EntityHealthChangedAfterEventSignal :: EntityHealthChangedAfterEventSignal -> (EntityHealthChangedAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import resetToDefaultValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import resetToMaxValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import resetToMinValue_EntityHealthComponent :: EntityHealthComponent -> Eff.Effect Unit
foreign import setCurrentValue_EntityHealthComponent :: EntityHealthComponent -> Number -> Boolean
foreign import _prim_subscribe_EntityHitBlockAfterEventSignal :: EntityHitBlockAfterEventSignal -> (EntityHitBlockAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHitBlockAfterEvent -> Eff.Effect Unit)
subscribe_EntityHitBlockAfterEventSignal :: EntityHitBlockAfterEventSignal -> (EntityHitBlockAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityHitBlockAfterEvent -> Eff.Effect Unit)
subscribe_EntityHitBlockAfterEventSignal a b c =  (_prim_subscribe_EntityHitBlockAfterEventSignal a b (toNullable c))
foreign import unsubscribe_EntityHitBlockAfterEventSignal :: EntityHitBlockAfterEventSignal -> (EntityHitBlockAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import _prim_subscribe_EntityHitEntityAfterEventSignal :: EntityHitEntityAfterEventSignal -> (EntityHitEntityAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHitEntityAfterEvent -> Eff.Effect Unit)
subscribe_EntityHitEntityAfterEventSignal :: EntityHitEntityAfterEventSignal -> (EntityHitEntityAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityHitEntityAfterEvent -> Eff.Effect Unit)
subscribe_EntityHitEntityAfterEventSignal a b c =  (_prim_subscribe_EntityHitEntityAfterEventSignal a b (toNullable c))
foreign import unsubscribe_EntityHitEntityAfterEventSignal :: EntityHitEntityAfterEventSignal -> (EntityHitEntityAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import _prim_subscribe_EntityHurtAfterEventSignal :: EntityHurtAfterEventSignal -> (EntityHurtAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityHurtAfterEvent -> Eff.Effect Unit)
subscribe_EntityHurtAfterEventSignal :: EntityHurtAfterEventSignal -> (EntityHurtAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityHurtAfterEvent -> Eff.Effect Unit)
subscribe_EntityHurtAfterEventSignal a b c =  (_prim_subscribe_EntityHurtAfterEventSignal a b (toNullable c))
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
foreign import _prim_subscribe_EntityRemovedAfterEventSignal :: EntityRemovedAfterEventSignal -> (EntityRemovedAfterEvent -> Eff.Effect Unit) -> Nullable (EntityEventOptions) -> (EntityRemovedAfterEvent -> Eff.Effect Unit)
subscribe_EntityRemovedAfterEventSignal :: EntityRemovedAfterEventSignal -> (EntityRemovedAfterEvent -> Eff.Effect Unit) -> Maybe (EntityEventOptions) -> (EntityRemovedAfterEvent -> Eff.Effect Unit)
subscribe_EntityRemovedAfterEventSignal a b c =  (_prim_subscribe_EntityRemovedAfterEventSignal a b (toNullable c))
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
foreign import _prim_getComponent_ItemStack :: ItemStack -> String -> Nullable (ItemComponent)
getComponent_ItemStack :: ItemStack -> String -> Maybe (ItemComponent)
getComponent_ItemStack a b = toMaybe (_prim_getComponent_ItemStack a b)
foreign import getComponents_ItemStack :: ItemStack -> Array (ItemComponent)
foreign import getLore_ItemStack :: ItemStack -> Array (String)
foreign import getTags_ItemStack :: ItemStack -> Array (String)
foreign import hasComponent_ItemStack :: ItemStack -> String -> Boolean
foreign import hasTag_ItemStack :: ItemStack -> String -> Boolean
foreign import isStackableWith_ItemStack :: ItemStack -> ItemStack -> Boolean
foreign import _prim_setCanDestroy_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
setCanDestroy_ItemStack :: ItemStack -> Maybe (Array (String)) -> Eff.Effect Unit
setCanDestroy_ItemStack a b =  (_prim_setCanDestroy_ItemStack a (toNullable b))
foreign import _prim_setCanPlaceOn_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
setCanPlaceOn_ItemStack :: ItemStack -> Maybe (Array (String)) -> Eff.Effect Unit
setCanPlaceOn_ItemStack a b =  (_prim_setCanPlaceOn_ItemStack a (toNullable b))
foreign import _prim_setLore_ItemStack :: ItemStack -> Nullable (Array (String)) -> Eff.Effect Unit
setLore_ItemStack :: ItemStack -> Maybe (Array (String)) -> Eff.Effect Unit
setLore_ItemStack a b =  (_prim_setLore_ItemStack a (toNullable b))
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
foreign import _prim_getSpawnPoint :: Player -> Nullable (DimensionLocation)
getSpawnPoint :: Player -> Maybe (DimensionLocation)
getSpawnPoint a = toMaybe (_prim_getSpawnPoint a)
foreign import getTotalXp :: Player -> Int
foreign import isOp :: Player -> Boolean
foreign import _prim_playSound_Player :: Player -> String -> Nullable (PlayerSoundOptions) -> Eff.Effect Unit
playSound_Player :: Player -> String -> Maybe (PlayerSoundOptions) -> Eff.Effect Unit
playSound_Player a b c =  (_prim_playSound_Player a b (toNullable c))
foreign import postClientMessage :: Player -> String -> String -> Eff.Effect Unit
foreign import resetLevel :: Player -> Eff.Effect Unit
foreign import sendMessage_Player :: Player -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import setOp :: Player -> Boolean -> Eff.Effect Unit
foreign import _prim_setSpawnPoint :: Player -> Nullable (DimensionLocation) -> Eff.Effect Unit
setSpawnPoint :: Player -> Maybe (DimensionLocation) -> Eff.Effect Unit
setSpawnPoint a b =  (_prim_setSpawnPoint a (toNullable b))
foreign import startItemCooldown :: Player -> String -> Int -> Eff.Effect Unit
foreign import _prim_addEffect_Player :: Player -> (EffectType |+| String) -> Int -> Nullable (EntityEffectOptions) -> Eff.Effect Unit
addEffect_Player :: Player -> (EffectType |+| String) -> Int -> Maybe (EntityEffectOptions) -> Eff.Effect Unit
addEffect_Player a b c d =  (_prim_addEffect_Player a b c (toNullable d))
foreign import addTag_Player :: Player -> String -> Boolean
foreign import _prim_applyDamage_Player :: Player -> Number -> Nullable ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
applyDamage_Player :: Player -> Number -> Maybe ((EntityApplyDamageByProjectileOptions |+| EntityApplyDamageOptions)) -> Boolean
applyDamage_Player a b c =  (_prim_applyDamage_Player a b (toNullable c))
foreign import applyImpulse_Player :: Player -> Vector3 -> Eff.Effect Unit
foreign import applyKnockback_Player :: Player -> Number -> Number -> Number -> Number -> Eff.Effect Unit
foreign import clearVelocity_Player :: Player -> Eff.Effect Unit
foreign import _prim_extinguishFire_Player :: Player -> Nullable (Boolean) -> Boolean
extinguishFire_Player :: Player -> Maybe (Boolean) -> Boolean
extinguishFire_Player a b =  (_prim_extinguishFire_Player a (toNullable b))
foreign import _prim_getBlockFromViewDirection_Player :: Player -> Nullable (BlockRaycastOptions) -> Nullable (BlockRaycastHit)
getBlockFromViewDirection_Player :: Player -> Maybe (BlockRaycastOptions) -> Maybe (BlockRaycastHit)
getBlockFromViewDirection_Player a b = toMaybe (_prim_getBlockFromViewDirection_Player a (toNullable b))
foreign import _prim_getComponent_Player :: Player -> String -> Nullable (EntityComponent)
getComponent_Player :: Player -> String -> Maybe (EntityComponent)
getComponent_Player a b = toMaybe (_prim_getComponent_Player a b)
foreign import getComponents_Player :: Player -> Array (EntityComponent)
foreign import _prim_getDynamicProperty_Player :: Player -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_Player :: Player -> String -> Maybe ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_Player a b = toMaybe (_prim_getDynamicProperty_Player a b)
foreign import _prim_getEffect_Player :: Player -> (EffectType |+| String) -> Nullable (Effect)
getEffect_Player :: Player -> (EffectType |+| String) -> Maybe (Effect)
getEffect_Player a b = toMaybe (_prim_getEffect_Player a b)
foreign import getEffects_Player :: Player -> Array (Effect)
foreign import _prim_getEntitiesFromViewDirection_Player :: Player -> Nullable (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromViewDirection_Player :: Player -> Maybe (EntityRaycastOptions) -> Array (EntityRaycastHit)
getEntitiesFromViewDirection_Player a b =  (_prim_getEntitiesFromViewDirection_Player a (toNullable b))
foreign import getHeadLocation_Player :: Player -> Vector3
foreign import getRotation_Player :: Player -> Vector2
foreign import getTags_Player :: Player -> Array (String)
foreign import getVelocity_Player :: Player -> Vector3
foreign import getViewDirection_Player :: Player -> Vector3
foreign import hasComponent_Player :: Player -> String -> Boolean
foreign import hasTag_Player :: Player -> String -> Boolean
foreign import isValid_Player :: Player -> Boolean
foreign import kill_Player :: Player -> Boolean
foreign import _prim_playAnimation_Player :: Player -> String -> Nullable (PlayAnimationOptions) -> Eff.Effect Unit
playAnimation_Player :: Player -> String -> Maybe (PlayAnimationOptions) -> Eff.Effect Unit
playAnimation_Player a b c =  (_prim_playAnimation_Player a b (toNullable c))
foreign import remove_Player :: Player -> Eff.Effect Unit
foreign import removeDynamicProperty_Player :: Player -> String -> Boolean
foreign import removeEffect_Player :: Player -> (EffectType |+| String) -> Boolean
foreign import removeTag_Player :: Player -> String -> Boolean
foreign import runCommand_Player :: Player -> String -> CommandResult
foreign import runCommandAsync_Player :: Player -> String -> Promise (CommandResult)
foreign import setDynamicProperty_Player :: Player -> String -> (Boolean |+| Number |+| String |+| Vector3) -> Eff.Effect Unit
foreign import _prim_setOnFire_Player :: Player -> Int -> Nullable (Boolean) -> Boolean
setOnFire_Player :: Player -> Int -> Maybe (Boolean) -> Boolean
setOnFire_Player a b c =  (_prim_setOnFire_Player a b (toNullable c))
foreign import setRotation_Player :: Player -> Vector2 -> Eff.Effect Unit
foreign import _prim_teleport_Player :: Player -> Vector3 -> Nullable (TeleportOptions) -> Eff.Effect Unit
teleport_Player :: Player -> Vector3 -> Maybe (TeleportOptions) -> Eff.Effect Unit
teleport_Player a b c =  (_prim_teleport_Player a b (toNullable c))
foreign import triggerEvent_Player :: Player -> String -> Eff.Effect Unit
foreign import _prim_tryTeleport_Player :: Player -> Vector3 -> Nullable (TeleportOptions) -> Boolean
tryTeleport_Player :: Player -> Vector3 -> Maybe (TeleportOptions) -> Boolean
tryTeleport_Player a b c =  (_prim_tryTeleport_Player a b (toNullable c))
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
foreign import _prim_clearObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjective)
clearObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Maybe (ScoreboardObjective)
clearObjectiveAtDisplaySlot a b = toMaybe (_prim_clearObjectiveAtDisplaySlot a b)
foreign import _prim_getObjective :: Scoreboard -> String -> Nullable (ScoreboardObjective)
getObjective :: Scoreboard -> String -> Maybe (ScoreboardObjective)
getObjective a b = toMaybe (_prim_getObjective a b)
foreign import _prim_getObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Nullable (ScoreboardObjectiveDisplayOptions)
getObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> Maybe (ScoreboardObjectiveDisplayOptions)
getObjectiveAtDisplaySlot a b = toMaybe (_prim_getObjectiveAtDisplaySlot a b)
foreign import getObjectives :: Scoreboard -> Array (ScoreboardObjective)
foreign import getParticipants_Scoreboard :: Scoreboard -> Array (ScoreboardIdentity)
foreign import removeObjective :: Scoreboard -> (ScoreboardObjective |+| String) -> Boolean
foreign import _prim_setObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> ScoreboardObjectiveDisplayOptions -> ScoreboardObjective
setObjectiveAtDisplaySlot :: Scoreboard -> DisplaySlotId -> ScoreboardObjectiveDisplayOptions -> ScoreboardObjective
setObjectiveAtDisplaySlot a b c =  (_prim_setObjectiveAtDisplaySlot a b c)
foreign import getEntity_ScoreboardIdentity :: ScoreboardIdentity -> Entity
foreign import isValid_ScoreboardIdentity :: ScoreboardIdentity -> Boolean
foreign import addScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Int -> Int
foreign import getParticipants_ScoreboardObjective :: ScoreboardObjective -> Array (ScoreboardIdentity)
foreign import _prim_getScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Nullable (Int)
getScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Maybe (Int)
getScore a b = toMaybe (_prim_getScore a b)
foreign import getScores :: ScoreboardObjective -> Array (ScoreboardScoreInfo)
foreign import hasParticipant :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import isValid_ScoreboardObjective :: ScoreboardObjective -> Boolean
foreign import removeParticipant :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Boolean
foreign import setScore :: ScoreboardObjective -> (Entity |+| ScoreboardIdentity |+| String) -> Int -> Eff.Effect Unit
foreign import isValid_ScreenDisplay :: ScreenDisplay -> Boolean
foreign import setActionBar :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import _prim_setTitle :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Nullable (TitleDisplayOptions) -> Eff.Effect Unit
setTitle :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Maybe (TitleDisplayOptions) -> Eff.Effect Unit
setTitle a b c =  (_prim_setTitle a b (toNullable c))
foreign import updateSubtitle :: ScreenDisplay -> (Array ((RawMessage |+| String)) |+| RawMessage |+| String) -> Eff.Effect Unit
foreign import _prim_subscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Nullable (ScriptEventMessageFilterOptions) -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit)
subscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Maybe (ScriptEventMessageFilterOptions) -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit)
subscribe_ScriptEventCommandMessageAfterEventSignal a b c =  (_prim_subscribe_ScriptEventCommandMessageAfterEventSignal a b (toNullable c))
foreign import unsubscribe_ScriptEventCommandMessageAfterEventSignal :: ScriptEventCommandMessageAfterEventSignal -> (ScriptEventCommandMessageAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import subscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> (MessageReceiveAfterEvent -> Eff.Effect Unit)
foreign import unsubscribe_ServerMessageAfterEventSignal :: ServerMessageAfterEventSignal -> (MessageReceiveAfterEvent -> Eff.Effect Unit) -> Eff.Effect Unit
foreign import clearRun :: System -> Int -> Eff.Effect Unit
foreign import run :: System -> (Unit -> Eff.Effect Unit) -> Int
foreign import _prim_runInterval :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Int) -> Int
runInterval :: System -> (Unit -> Eff.Effect Unit) -> Maybe (Int) -> Int
runInterval a b c =  (_prim_runInterval a b (toNullable c))
foreign import _prim_runTimeout :: System -> (Unit -> Eff.Effect Unit) -> Nullable (Int) -> Int
runTimeout :: System -> (Unit -> Eff.Effect Unit) -> Maybe (Int) -> Int
runTimeout a b c =  (_prim_runTimeout a b (toNullable c))
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
foreign import _prim_getDynamicProperty_World :: World -> String -> Nullable ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_World :: World -> String -> Maybe ((Boolean |+| Number |+| String |+| Vector3))
getDynamicProperty_World a b = toMaybe (_prim_getDynamicProperty_World a b)
foreign import _prim_getEntity_World :: World -> String -> Nullable (Entity)
getEntity_World :: World -> String -> Maybe (Entity)
getEntity_World a b = toMaybe (_prim_getEntity_World a b)
foreign import getMoonPhase :: World -> MoonPhase
foreign import _prim_getPlayers_World :: World -> Nullable (EntityQueryOptions) -> Array (Player)
getPlayers_World :: World -> Maybe (EntityQueryOptions) -> Array (Player)
getPlayers_World a b =  (_prim_getPlayers_World a (toNullable b))
foreign import getTimeOfDay :: World -> Int
foreign import _prim_playMusic :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
playMusic :: World -> String -> Maybe (MusicOptions) -> Eff.Effect Unit
playMusic a b c =  (_prim_playMusic a b (toNullable c))
foreign import _prim_playSound_World :: World -> String -> Vector3 -> Nullable (WorldSoundOptions) -> Eff.Effect Unit
playSound_World :: World -> String -> Vector3 -> Maybe (WorldSoundOptions) -> Eff.Effect Unit
playSound_World a b c d =  (_prim_playSound_World a b c (toNullable d))
foreign import _prim_queueMusic :: World -> String -> Nullable (MusicOptions) -> Eff.Effect Unit
queueMusic :: World -> String -> Maybe (MusicOptions) -> Eff.Effect Unit
queueMusic a b c =  (_prim_queueMusic a b (toNullable c))
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