---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

function printTable(t, maxDepth, indent)
    if type(t) ~= "table" then
        print(t)
        return
    end

    indent = indent or 0
    maxDepth = maxDepth or 20
    if indent > maxDepth then
        print(string.rep("  ", indent) .. "...")
        return
    end

    local formatting = string.rep("  ", indent)
    for k, v in pairs(t) do
        if type(v) == "table" then
            print(formatting .. k .. ":")
            printTable(v, maxDepth, indent + 1)
        else
            print(formatting .. k .. ": " .. tostring(v))
        end
    end
end

--Used to Summon Chronos to wear the Aspect
function mod.SummonNeoChronos( source, args )
	args = args or {}

	local destId = CurrentRun.Hero.ObjectId

	if args.UseSourceForDestination then
		destId = source.ObjectId
	end

	if TableLength(GetIdsByType({ Name = "NPC_Chronos_02"})) >= 1 then 
		return
	end

	local chronos = DeepCopyTable( EnemyData.NPC_Chronos_02 )
	chronos.ObjectId = SpawnUnit({ Name = "NPC_Chronos_02", Group = "Standing", DestinationId = destId, OffsetX = -180, OffsetY = -120, })
	SetupUnit( chronos, CurrentRun, { IgnoreAI = true, IgnoreAssert = true, } )
	SetUnitProperty({ DestinationId = chronos.objectId, Property = "CollideWithObstacles", Value = false })
	SetUnitProperty({ DestinationId = chronos.objectId, Property = "CollideWithUnits", Value = false })
	SetAlpha({ Id = chronos.ObjectId, Fraction = 0, Duration = 0 })
	AngleTowardTarget({ Id = chronos.ObjectId, DestinationId = source.ObjectId })

	SetAlpha({ Id = chronos.ObjectId, Fraction = 1, Duration = 0.3 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = chronos.ObjectId })

end

function SetUpPlayerChronos()
	LoadPackages({Name = "BiomeIHouse", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Azure", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Emerald", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Onyx", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Fuchsia", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Lavender", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Gilded", IgnoreAssert = true })
	LoadPackages({Name = "ChronosReformed_Crimson", IgnoreAssert = true })
	SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = 1.3 })
	SetThingProperty({ Property = "GrannyModel", Value = "ChronosReformed_Mesh", DestinationId = CurrentRun.Hero.ObjectId })
	SetThingProperty({ Property = "Graphic", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	SetThingProperty({ Property = "Tallness", Value = 400, DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "StartGraphic", Value = "NPC_Chronos_Enlightened_Move_Start", DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "MoveGraphic", Value = "NPC_Chronos_Enlightened_Move", DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "StopGraphic", Value = "NPC_Chronos_Enlightened_Move_Stop", DestinationId = CurrentRun.Hero.ObjectId })
	
	--SetUnitProperty({ Property = "UnfreezeAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.UnfreezeAnimation = "NPC_Chronos_Enlightened_Hover"
	CurrentRun.Hero.DamagedAnimation = "NPC_Chronos_Enlightened_Hover"
	CurrentRun.Hero.LastStandAnimationOverride = "NPC_Chronos_Enlightened_Hover"
	CurrentRun.Hero.LastStandFireAnimationOverride = "NPC_Chronos_Enlightened_Hover"
	CurrentRun.Hero.BoonInteractAnimation = "NPC_Chronos_Enlightened_Hover"
	CurrentRun.Hero.InteractAnimation = "NPC_Chronos_Enlightened_Hover"
	--CurrentRun.Hero.DamagedFxStyles.Default = "null"
	CurrentRun.Hero.SkipDamageAnimation = true
	CurrentRun.Hero.SilenceMelinoe = true
	--SetUnitProperty({ Property = "DamagedAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "UnequipAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "WeaponInteractAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	
	SetAnimation({ Name = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.AnimOffsetZ = -40
	CurrentRun.Hero.SubtitleColor = Color.ChronosVoice
	CurrentRun.Hero.CanBeFrozen = false
	SetupCostume()

	LoadVoiceBanks({ Name = "Chronos" })
	CurrentRun.Hero.DamagedSound = "/VO/Chronos_0387"
	CurrentRun.Hero.ChokingSound = "/VO/Chronos_0387"
	--CurrentRun.Hero.ChokingSound = "/VO/Chronos_0385"
	--DamagedSound = "/VO/MelinoeEmotes/EmoteHurt",
	--ChokingSound = "/VO/MelinoeEmotes/EmoteStunned",
	--FrozenSound = "/VO/MelinoeEmotes/EmoteHurt",
	--UnFrozenSound = "/VO/MelinoeEmotes/EmoteGasping",

	--print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	--print("HeroVoiceLines.FamiliarUnequipVoiceLines")
	--for key,value in pairs(HeroVoiceLines.FamiliarUnequipVoiceLines) do
	--	print(key)
	--	print(value)
	--end
	--print("printing Table")
	--DebugPrintTable(GlobalVoiceLines.FamiliarEquipVoiceLines)
end

function SetUpReturnPlayerMelinoe()
	SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = 1 })
	SetThingProperty({ Property = "GrannyModel", Value = "Melinoe_Mesh", DestinationId = CurrentRun.Hero.ObjectId })
	SetThingProperty({ Property = "Graphic", Value = "LaurelCindersSpawner", DestinationId = CurrentRun.Hero.ObjectId })
	SetThingProperty({ Property = "Tallness", Value = 200, DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "StartGraphic", Value = "MelinoeStart", DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "MoveGraphic", Value = "MelinoeRun", DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "StopGraphic", Value = "MelinoeStop", DestinationId = CurrentRun.Hero.ObjectId })
	
	--SetUnitProperty({ Property = "UnfreezeAnimation", Value = "MelinoeIdle", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.UnfreezeAnimation = "MelinoeIdle"
	CurrentRun.Hero.DamagedAnimation = "MelinoeGetHit"
	CurrentRun.Hero.LastStandAnimationOverride = "Melinoe_GetHit_LastStand"
	CurrentRun.Hero.LastStandFireAnimationOverride = "Melinoe_LastStand_Fire"
	CurrentRun.Hero.BoonInteractAnimation = "MelinoeBoonInteract"
	CurrentRun.Hero.InteractAnimation = "MelinoeInteract"
	--CurrentRun.Hero.DamagedFxStyles.Default = "PlayerHitSpark"
	CurrentRun.Hero.SkipDamageAnimation = nil
	CurrentRun.Hero.SilenceMelinoe = nil
	--SetUnitProperty({ Property = "DamagedAnimation", Value = "MelinoeGetHit", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "UnequipAnimation", Value = "Melinoe_Axe_Unequip", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "WeaponInteractAnimation", Value = "Melinoe_Axe_Interact", DestinationId = CurrentRun.Hero.ObjectId })

	SetAnimation({ Name = "MelinoeIdle", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.AnimOffsetZ = 0
	CurrentRun.Hero.SubtitleColor = Color.White
	CurrentRun.Hero.CanBeFrozen = true
	SetupCostume()

	CurrentRun.Hero.DamagedSound = "/VO/MelinoeEmotes/EmoteHurt"
	CurrentRun.Hero.ChokingSound = "/VO/MelinoeEmotes/EmoteStunned"

	--Ensuring corrent Weapon Model
	for _, traitData in ipairs( CurrentRun.Hero.Traits ) do
		if traitData.ReplacementGrannyModels ~= nil then
			for originalModel, attachmentModel in pairs(traitData.ReplacementGrannyModels) do
				SetThingProperty({ Property = "GrannyAlternateModelAttachment", Value = attachmentModel, OriginalAttachmentModel = originalModel, DestinationId = CurrentRun.Hero.ObjectId })
			end
		end	
	end
	HandleWeaponAnimSwaps()
end

modutil.mod.Path.Wrap("SetupMap", function(base, source, args)
	LoadPackages({ Name = "JarlUlsfark-MelinoeCallsForAid", IgnoreAssert = true })
	return base(source, args)
end)

ModUtil.Path.Wrap("EquipWeaponUpgrade", function(baseFunc, hero, args)
	baseFunc(hero, args)
	if HeroHasTrait("ChronosAspect") then
		SetUpPlayerChronos()
		if TableLength(GetIdsByType({Name = "NPC_Chronos_02"})) >= 1 then
			UnSummonNeoChronos(CurrentRun.Hero)
		end
	else
		SetUpReturnPlayerMelinoe()
		if GameState and GameState.WeaponsUnlocked and GameState.WeaponsUnlocked.ChronosAspect then
			--trick to ensure chronos is not summoned when just entering the room, added by SetupHeroObject
			if CurrentRun.Hero.RoomStartTime then
				CurrentRun.Hero.RoomStartTime = nil
				return
			end
			mod.SummonNeoChronos(CurrentRun.Hero)
		end
	end
end)

--Loading the package at every room
modutil.mod.Path.Wrap("SetupHeroObject", function(baseFunc, CurrentRoom)
	baseFunc( CurrentRoom )
	CurrentRun.Hero.RoomStartTime = true
	if HeroHasTrait("ChronosAspect") then
		SetUpPlayerChronos()
	end
end)

-- Switch WeaponAspect by interacting with a Character
ModUtil.Path.Wrap("SpecialInteractSalute", function(baseFunc, usee, args)
	baseFunc(usee, args)
	-- Switching to Chronos
	if CurrentHubRoom and CurrentHubRoom.Name and CurrentHubRoom.Name == "Hub_PreRun" and not HeroHasTrait("ChronosAspect") and usee.Name == "NPC_Chronos_02" then
		if CurrentRun and CurrentRun.Hero and CurrentRun.Hero.Weapons and CurrentRun.Hero.Weapons.WeaponAxe then 
			GameState.LastWeaponUpgradeName['WeaponStaffSwing'] = "BaseStaffAspect"
			UseWeaponKit(WeaponData['WeaponStaffSwing'])
			wait(0.1)
		end
		GameState.LastWeaponUpgradeName['WeaponAxe'] = "ChronosAspect"
		UseWeaponKit(WeaponData['WeaponAxe'])
		GameState.LastWeaponUpgradeName['WeaponAxe'] = "AxeRecoveryAspect"
	end
end)

--Ensuring you start a run as the character
ModUtil.Path.Wrap("StartOver", function(baseFunc, args)
	if CurrentHubRoom and CurrentHubRoom.Name and CurrentHubRoom.Name == "Hub_PreRun" and HeroHasTrait("ChronosAspect") then
		GameState.LastWeaponUpgradeName['WeaponAxe'] = "ChronosAspect"
	end
	return baseFunc(args)
end)


ModUtil.Path.Wrap("SelectWeaponUpgrade", function(baseFunc, screen, weaponName, traitData)
	if HeroHasTrait("ChronosAspect") then
		PickupWeaponKit(WeaponData['WeaponAxe'])
	end
	baseFunc(screen, weaponName, traitData)
end)

modutil.mod.Path.Wrap("DeathPresentation", function(baseFunc, currentRun, killer, args)
	if HeroHasTrait("ChronosAspect") then
		return mod.PlayerChronosDeathPresentation( currentRun, killer, args )
	else
		return baseFunc( currentRun, killer, args )
	end
end)

modutil.mod.Path.Wrap("StartBlinkTrailPresentation", function(baseFunc)
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosStartBlinkTrailPresentation()
	else
		baseFunc()
	end
end)

--Chaos gate entrance Chronos
modutil.mod.Path.Wrap("LeaveRoomSecretDoorPresentation",  function(baseFunc,currentRun, secretDoor) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosLeaveRoomSecretDoorPresentation(currentRun, secretDoor)
	else
		baseFunc(currentRun, secretDoor)
	end
end)

--Chaos gate entrance Chronos
modutil.mod.Path.Wrap("LeaveRoomSecretDoorPresentation",  function(baseFunc,currentRun, secretDoor) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosLeaveRoomSecretDoorPresentation(currentRun, secretDoor)
	else
		baseFunc(currentRun, secretDoor)
	end
end)

--Chaos gate Exit Chronos
modutil.mod.Path.Wrap("RoomEntranceDrop",  function(baseFunc,currentRun, currentRoom, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosRoomEntranceDrop(currentRun, currentRoom, args)
	else
		baseFunc(currentRun, currentRoom, args)
	end
end)

--Chaos gate entrance Chronos
modutil.mod.Path.Wrap("RoomEntrancePortal",  function(baseFunc,currentRun, currentRoom, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosRoomEntrancePortal(currentRun, currentRoom, args)
	else
		baseFunc(currentRun, currentRoom, args)
	end
end)

ChronosAspect = {
	InheritFrom = { "WeaponEnchantmentTrait" },
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1,
		},
		Rare =
		{
			Multiplier = 0.9,
		},
		Epic =
		{
			Multiplier = 0.8,
		},
		Heroic =
		{
			Multiplier = 0.7,
		},
		Legendary =
		{
			Multiplier = 0.5,
		},
		Perfect =
		{
			Multiplier = 0.3,
		},
	},
	RequiredWeapon = "WeaponAxe",
	Icon = "JarlUlsfark-MelinoeCallsForAid\\ChronosAspectIcon",
	--IsCustomHero = true,
	WeaponKitGrannyModel = "Melinoe_Axe_Mesh1",
	ReplacementGrannyModels = 
	{
		Melinoe_Axe_Mesh1 = "Melinoe_Axe_Mesh1",
	},
	SwapAnimations = {
		["MelinoeIdle"] = "NPC_Chronos_Enlightened_Hover",
		["MelinoeDashStart"] = "Enemy_Chronos_DashPreFire",
		["MelinoeDash"] = "Player_Chronos_DashFire",
		--["MelinoeSprint"] = "Melinoe_Axe_Sprint_FireLoop",
		["MelinoeStart"] = "NPC_Chronos_Enlightened_Move_Start",
		["MelinoeRun"] = "NPC_Chronos_Enlightened_Move",
		["MelinoeStop"] = "NPC_Chronos_Enlightened_Move_Stop",
		["MelinoeGetHit"] = "NPC_Chronos_Enlightened_Hover",
		["Melinoe_GetHit_LastStand"] = "NPC_Chronos_Enlightened_Hover",

		
		["Melinoe_Cast_Start"] = "Enemy_Chronos_CastSlowFire",
		["Melinoe_Cast_StartLoop"] = "Enemy_Chronos_CastSlowFire",
		["Melinoe_Cast_Fire"] = "Enemy_Chronos_CastSlowFire",
		["Melinoe_Cast_End"] = "Enemy_Chronos_CastSlowFire",			
		["Melinoe_Cast_Fire_Quick"] = "Enemy_Chronos_CastSlowFire",

		["Melinoe_CrossCast_Start"] = "Enemy_Chronos_CastSlowFire",
		["Melinoe_ForwardCast_Unequip"] = "Enemy_Chronos_CastSlowFire",
		
		["MelinoeEquip"] = "NPC_Chronos_Enlightened_Hover",
		["MelinoeActionIdle"] = "NPC_Chronos_Enlightened_Hover",
		["MelinoeInteract"] = "NPC_Chronos_Enlightened_Hover",
		["MelinoeBoonPreInteract"] = "NPC_Chronos_Enlightened_Hover",
	},
	WeaponDataOverride =
	{
		WeaponAxe =
		{
			Sounds =
			{
				ChargeSounds = {
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteChargingMelee" } ,
				},
				FireSounds =
				{
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingMelee" },
				},
			},
			UnfreezeAnimation = "NPC_Chronos_Enlightened_Hover",
			DamagedAnimation = "NPC_Chronos_Enlightened_Hover",
			UnequipAnimation = "NPC_Chronos_Enlightened_Hover",
			WeaponInteractAnimation = "NPC_Chronos_Enlightened_Hover",
			StartingWeapon = false,
			Using =
			{
				Animation = "null",
			},
		},
		WeaponAxe2 =
		{
			Sounds =
			{
				ChargeSounds = {
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteChargingMelee" } ,
				},
				FireSounds =
				{
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingMelee" },
				},
			},
			StartingWeapon = true,
		},
		WeaponAxeDash =
		{
			Sounds =
			{
				ChargeSounds = {
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteChargingMelee" } ,
				},
				FireSounds =
				{
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingMelee" },
				},
			},
		},
		WeaponAxeSpin =
		{
			ChargeWeaponStages = 
			{
				{ ManaCost = 20, WeaponProperties = { NumProjectiles = 1, FireEndGraphic = "null" }, Wait = 0.2, ChannelSlowEventOnEnter = true, HideStageReachedFx = true },
			},
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingRanged" },
				{ Name = "/SFX/Enemy Sounds/Chronos/ChronosScytheWhirlStart" },
				{ Name = "/SFX/Enemy Sounds/Chronos/ChronosScytheWhirl" },
			},
			ChargeSounds = {
				{ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingRanged" },
			},
		},
		WeaponAxeSpecial = 
		{
			Sounds =
			{
				ChargeSounds =
				{
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteChargingMelee",
						StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired"} }
				},
				FireSounds =
				{
					{ },
				},
				ImpactSounds =
				{
					Invulnerable = "/Leftovers/World Sounds/LeavesRustle",
					Armored = "/Leftovers/World Sounds/LeavesRustle",
					Bone = "/Leftovers/World Sounds/LeavesRustle",
					Brick = "/Leftovers/World Sounds/LeavesRustle",
					Stone = "/Leftovers/World Sounds/LeavesRustle",
					Organic = "/Leftovers/World Sounds/LeavesRustle",
					StoneObstacle = "/Leftovers/World Sounds/LeavesRustle",
					BrickObstacle = "/Leftovers/World Sounds/LeavesRustle",
					MetalObstacle = "/Leftovers/World Sounds/LeavesRustle",
					BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					Shell = "/Leftovers/World Sounds/LeavesRustle",
				},

			},
		},
		WeaponCast = 
		{
			UnarmedCastCompleteGraphic = "nil",
		},
		WeaponBlink = 
		{
			Sounds =
			{
				ChargeSounds =
				{
					{
						Name = "/SFX/Player Sounds/MelMagicalCharge",
						StoppedBy = { "ChargeCancel", "Fired" }
					}
				},	
				FireSounds =
				{
					{ Name = "/SFX/Enemy Sounds/Chronos/EmoteEvading" },
					{ Name = "/SFX/Enemy Sounds/Chronos/ChronosDashStraight" },
				},

				ImpactSounds =
				{
					Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
					Bone = "/SFX/FistImpactMedium",
					Brick = "/SFX/FistImpactMedium",
					Stone = "/SFX/FistImpactMedium",
					Organic = "/SFX/FistImpactMedium",
				},

				CancelEffectSounds =
				{
				},
			},
		},
	},
	OnWeaponFiredFunctions = {
		ValidWeapons =  {"WeaponBlink"},
		ExcludeLinked = true,
		FunctionName = _PLUGIN.guid .. "." .. "ChronosPlayerTeleport",
		FunctionArgs =
		{
		},
	},
	PropertyChanges =
	{
		--Attack
		{
			WeaponName = "WeaponAxe",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosSwingRight",
		},
		{
			WeaponName = "WeaponAxe",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingLeftPreFire",
				FireGraphic = "Enemy_Chronos_SwingRightFire",
				SwapOnFire = "WeaponAxe2",
				FireFx = "ChronosScythePreAttackSparkleSwingRight",
			},
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponAxe2",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosSwingLeft",
		},
		{
			WeaponName = "WeaponAxe2",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingRightPreFire",
				FireGraphic = "Enemy_Chronos_SwingLeftFire",
				SwapOnFire = "WeaponAxe",
				FireFx = "ChronosScythePreAttackSparkleSwingLeft",
			},
			ExcludeLinked = true,
		},
		--Omega Attack
		{
			WeaponName = "WeaponAxeSpin",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosScytheThrow",
		},
		{
			WeaponName = "WeaponAxeSpin",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_ScytheThrowPreFire",
				ChargeCancelGraphic = "Enemy_Chronos_ScytheThrowFire",
				FireGraphic = "Enemy_Chronos_ScytheThrowFire",
				NumProjectiles = 1,
			},
			ProjectileProperties = {
				Damage = 150,
			}
		},
		--Dash Attack
		{
			WeaponName = "WeaponAxeDash",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosSwingLeft",
		},
		{
			WeaponName = "WeaponAxeDash",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingRightPreFire",
				FireGraphic = "Enemy_Chronos_SwingLeftFire",
				SwapOnFire = "WeaponAxe",
				FireFx = "ChronosScythePreAttackSparkleSwingLeft",
			},
			ExcludeLinked = true,
		},
		-- Special
		{
			WeaponName = "WeaponAxeSpecial",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosGrindVacuum",
		},
		{
			WeaponName = "WeaponAxeSpecial",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_GrindPreFire",
				ChargeCancelGraphic = "Enemy_Chronos_GrindPostFire",
				FireGraphic = "Player_Chronos_GrindFire1",
				FireFx = "null",
			},
			ExcludeLinked = true,
		},
		{ 
			WeaponNames = { "WeaponAxeSpecial" },
			ExcludeLinked = true,
			ProjectileName = "ChronosGrindVacuum",
			ProjectileProperties = {
				TotalFuse = 1.5,
			},
		},
		{
			WeaponName = "WeaponAxeSpecialSwing",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosGrindWallForward",
		},
		{
			WeaponName = "WeaponAxeSpecialSwing",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_GrindPreFire",
				ChargeCancelGraphic = "Enemy_Chronos_GrindPostFire",
				FireGraphic = "Enemy_Chronos_GrindPostFire",
				FireFx = "null",
				BarrelLength = 0,
				NumProjectiles = 1,
				ProjectileIntervalStart = 0.01,
				ProjectileSpacing = 0,
				ProjectileAngleOffset = 0,
				NumProjectiles = 1,
				ProjectileAngleStartOffset = 0,
			},
			ExcludeLinked = true,
		},
		{ 
			WeaponNames = { "WeaponAxeSpecialSwing" },
			ExcludeLinked = true,
			ProjectileName = "ChronosGrindWallForward",
			ProjectileProperties = {
				Damage = 100,
			},
		},
		-- Dash
		{
			WeaponName = "WeaponBlink",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_DashPreFire",
				FireGraphic = "Player_Chronos_DashFire",
				WeaponRange = 800,
				BlinkMaxRange = 1125,
				ClipRegenInterval = 1.11,
				FireFx = "ChronosBlinkStreak",
				SwapOnFire = "WeaponBlink",
			},
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponInvulnerable",
			EffectProperty = "DurationFrames",
			ChangeValue = 24,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponImmuneToForce",
			EffectProperty = "DurationFrames",
			ChangeValue = 15,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "DashAttackQueue",
			EffectProperty = "DurationFrames",
			ChangeValue = 34,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponInvulnerableCharge",
			EffectProperty = "DurationFrames",
			ChangeValue = 15,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponInvulnerableCharge",
			EffectProperty = "DurationFrames",
			ChangeValue = 15,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponImmuneToForceCharge",
			EffectProperty = "DurationFrames",
			ChangeValue = 15,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushChargeSlow",
			EffectProperty = "DurationFrames",
			ChangeValue = 15,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponBlink",
			EffectName = "RushWeaponDisableMove",
			EffectProperty = "DurationFrames",
			ChangeValue = 16,
			ChangeType = "Absolute",
			ExcludeLinked = true,
		},
		--Cast
		{
			WeaponName = "WeaponCast",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
				FireGraphic = "null",
				FireFx = "null",
			},
		},
		{
			WeaponName = "WeaponCast",
			WeaponProperty = "Projectile",
			ChangeValue = "ChronosDashStasis",
		},
		{
			WeaponName = "WeaponAnywhereCast",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
				FireGraphic = "null",
				FireFx = "null",
			},
		},
		{
			WeaponName = "WeaponCastLob",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
				FireGraphic = "null",
				FireFx = "null",
			},
		},
		{
			WeaponName = "WeaponCastProjectile",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
				FireGraphic = "null",
				FireFx = "null",
			},
		},
		{
			WeaponName = "WeaponCastProjectileHades",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
				FireGraphic = "null",
				FireFx = "null",
			},
		},
	},
	StatLines =
	{
		"ChronosAspectStatDisplay",
	},
	ExtractValues =
	{
	},
	FlavorText = "ChronosAspect_FlavorText",
}

--OverwriteTableKeys( TraitSetData.Aspects.AxeRecoveryAspect, ChronosAspect)
TraitData.ChronosAspect = ChronosAspect

