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
	LoadPackages({ Name = "JarlUlsfark-MelinoeCallsForAidPortrait", IgnoreAssert = true })
	if not HeroHasTrait("ModsNikkelMHadesBiomesPlayerScaleTrait") then
		SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = 1.3 })
	end
	if rom.mods['NikkelM-Zagreus_Journey'] then
		ZagJourney.ModdedPlayerScaleMultiplier = 1.17
	end
	if not HeroHasTrait("ModsNikkelMHadesBiomesPlayerScaleTrait") then
		SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = 1.3 })
	else
		SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = ZagJourney.ModdedPlayerScaleMultiplier })
	end
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

	Icons.Mana = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosMana_2"
	Icons.Mana_NoTooltip = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosMana_2"
	Icons.ManaUp = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosManaUp_2"
	Icons.ManaUp_NoTooltip = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosManaUp_2"
	Icons.ManaDown = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosManaUp_2"
	Icons.ManaLock = "JarlUlsfark-MelinoeCallsForAid\\GUI\\Icons\\ChronosManaLock_2"

end

function SetUpReturnPlayerMelinoe()
	if rom.mods['NikkelM-Zagreus_Journey'] then
		ZagJourney.ModdedPlayerScaleMultiplier = 0.9
	end
	if not HeroHasTrait("ModsNikkelMHadesBiomesPlayerScaleTrait") then
		SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = 1 })
	else
		SetScale({ Id = CurrentRun.Hero.ObjectId, Fraction = ZagJourney.ModdedPlayerScaleMultiplier })
	end
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

	Icons.Mana = "GUI\\Icons\\Mana"
	Icons.Mana_NoTooltip = "GUI\\Icons\\Mana"
	Icons.ManaUp = "GUI\\Icons\\ManaUp"
	Icons.ManaUp_NoTooltip = "GUI\\Icons\\ManaUp"
	Icons.ManaDown = "GUI\\Icons\\ManaUp"
	Icons.ManaLock = "GUI\\Icons\\ManaLock"

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
	if CurrentRun and CurrentRun.Hero then
		if ScreenData and ScreenData.HUD then
			if HeroHasTrait("ChronosAspect") then
				ScreenData.HUD.ComponentData.ManaMeterFill.Animation = "ChronosManaBarFill"
				ScreenData.HUD.ComponentData.ManaMeterReserve.Animation = "ChronosManaBarReserveFill"
				ScreenData.HUD.ComponentData.ManaMeterReserve.TextArgs.Color = { 204, 204, 51, 255 }
				ManaIndicatorPresentation.AutoComplete.TransitionIn = "ChronosManaChargeIndicatorIn"
				ManaIndicatorPresentation.AutoComplete.Fill = "ChronosManaChargeIndicatorFill"
				ManaIndicatorPresentation.Hold.TransitionIn = "ChronosManaChargeIndicatorIn"
				ManaIndicatorPresentation.Hold.Fill = "ChronosManaChargeIndicatorFill"
				TextFormats.ManaFormat.Color = Color.ChronosVoice
				TextFormats.UseTextManaFormat.Color = Color.ChronosVoice
				ScreenData.HUD.ComponentData.HealthBack.Animation = "ChronosHPManaBacking"
			else
				ScreenData.HUD.ComponentData.ManaMeterFill.Animation = "ManaBarFill"
				ScreenData.HUD.ComponentData.ManaMeterReserve.Animation = "ManaBarReserveFill"
				ScreenData.HUD.ComponentData.ManaMeterReserve.TextArgs.Color = { 180, 168, 255, 255 }
				ManaIndicatorPresentation.AutoComplete.TransitionIn = "ManaChargeIndicatorIn"
				ManaIndicatorPresentation.AutoComplete.Fill = "ManaChargeIndicatorFill"
				ManaIndicatorPresentation.Hold.TransitionIn = "ManaChargeIndicatorIn"
				ManaIndicatorPresentation.Hold.Fill = "ManaChargeIndicatorFill"
				TextFormats.ManaFormat.Color = Color.RoyalBlue
				TextFormats.UseTextManaFormat.Color = Color.RoyalBlue
				ScreenData.HUD.ComponentData.HealthBack.Animation = "HPManaBacking"
			end
		end
	end
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
	if HeroHasTrait("ChronosAspect") then
		wait(0.8)
		SetAnimation({Name= "NPC_Chronos_Enlightened_Hover", DestinationId= CurrentRun.Hero.ObjectId})
	end
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

--Exit G Room
modutil.mod.Path.Wrap("ExitBiomeGRoomPresentation",  function(baseFunc,currentRun, exitDoor) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosExitBiomeGRoomPresentation( currentRun, exitDoor )
	else
		baseFunc(currentRun, exitDoor)
	end
end)

--Entrance G Room
modutil.mod.Path.Wrap("EnterBiomeGRoomPresentation",  function(baseFunc,currentRun, currentRoom) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosEnterBiomeGRoomPresentation( currentRun, currentRoom )
	else
		baseFunc(currentRun, currentRoom)
	end
end)

--Exit P Sky Room
modutil.mod.Path.Wrap("OlympusSkyExitPresentation",  function(baseFunc,currentRun, exitDoor) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosOlympusSkyExitPresentation( currentRun, exitDoor )
	else
		baseFunc(currentRun, exitDoor)
	end
end)

--Entrance P Sky Room
modutil.mod.Path.Wrap("OlympusSkyEntrancePresentation",  function(baseFunc, currentRun, currentRoom, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosOlympusSkyEntrancePresentation(  currentRun, currentRoom, args )
	else
		baseFunc( currentRun, currentRoom, args)
	end
end)

--Interact
modutil.mod.Path.Wrap("PlayInteractAnimation",  function(baseFunc, interactableObjectId, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosPlayInteractAnimation(  interactableObjectId, args )
	else
		baseFunc( interactableObjectId, args)
	end
end)

--Killing Chronos presentation after True ending
modutil.mod.Path.Wrap("ChronosSpecialKillPresentation",  function(baseFunc, chronos, args) 
	if HeroHasTrait("ChronosAspect") then
		return
	else
		return baseFunc(chronos, args)
	end
end)

--Entering Prebossroom into Chronos fight after true ending
modutil.mod.Path.Wrap("LeaveRoomIPreBoss02Presentation",  function(baseFunc, currentRun, exitDoor) 
	if HeroHasTrait("ChronosAspect") then
		return mod.LeaveRoomIPreBoss02Presentation(currentRun, exitDoor)
	else
		return baseFunc(chronos, currentRun, exitDoor)
	end
end)

--Interact
--modutil.mod.Path.Wrap("SetAnimation",  function(baseFunc, args) 
--	if args and args.DestinationId == 40000 then
--		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
--		print("printing args")
--		print(args.Name)
--		print(args.DestinationId)
--		print(debug.traceback())
--	end
--	return baseFunc( args)
--end)

--Enter Room 
--modutil.mod.Path.Context.Env("RoomEntranceMaterialize", function ( currentRun, currentRoom, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Attachment from exiting
modutil.mod.Path.Context.Env("CheckAttachmentTextures", function ( source, args )
    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 and Aargs.Name == "MelinoeIdle" then
			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
		end
		return baseFunc(Aargs)
    end)
end)

--Preline Animations
modutil.mod.Path.Context.Env("PlayTextLine", function ( screen, textLines, prevLine, parentLine, source, args )
    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
		end
		return baseFunc(Aargs)
    end)
end)

--Exiting Asphodel function
--modutil.mod.Path.Context.Env("AnomalyExitPresentation", function ( currentRun, exitDoor )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.DestinationId == 40000 then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Open KeepsakeRack
--modutil.mod.Path.Context.Env("OpenKeepsakeRackScreen", function ( source )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.Name == "MelinoeEquip" then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Open Bounty 
--modutil.mod.Path.Context.Env("BountyBoardOpenedPresentation", function ( screen )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.Name == "MelinoeEquip" then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Close Shrine menu
--modutil.mod.Path.Context.Env("ShrineScreenOpenFinishedPresentation", function ( screen )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.Name == "MelinoeEquip" then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Boon menu
--modutil.mod.Path.Context.Env("UpgradeAcquiredPresentation", function ( screen, upgradeData )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Boon menu
--modutil.mod.Path.Context.Env("BoonInteractPresentation", function ( source, args, textLines )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Spell menu
--modutil.mod.Path.Context.Env("CloseSpellScreenPresentation", function ( screen, button )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Spell Drop
--modutil.mod.Path.Context.Env("SpellDropInteractPresentation", function ( source, args, textLines )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)


--Salute
--modutil.mod.Path.Context.Env("SpecialInteractSalute", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") then
--			if Aargs.Name == "MelinoeSalute" then
--				Aargs.Name = "NPC_Chronos_Enlightened_Greet"
--			elseif Aargs.DestinationId == 40000 then
--				Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--			end
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--WeaponShop
--modutil.mod.Path.Context.Env("WeaponShopScreenCloseFinishedPresentation", function ( screen, button )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.Name == "MelinoeEquip" then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Admire Skelly
--modutil.mod.Path.Context.Env("SkellyStatueAdmire", function ( source, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Pet Frog
--modutil.mod.Path.Context.Env("FrogFamiliarSpecialInteractUnlockedInHub", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Pet Polecat
--modutil.mod.Path.Context.Env("PolecatFamiliarSpecialInteractUnlockedInHub", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Pet Hound
--modutil.mod.Path.Context.Env("HoundFamiliarSpecialInteractUnlockedInHub", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Pet Cat
--modutil.mod.Path.Context.Env("CatFamiliarSpecialInteractLockedInRun", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Pet Raven
--modutil.mod.Path.Context.Env("RavenFamiliarSpecialInteractLockedInRun", function ( usee, args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Close Familiar Costume Screen
--modutil.mod.Path.Context.Env("UnequipFamiliarPresentation", function ( args )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, Aargs)
--		if HeroHasTrait("ChronosAspect") and Aargs.DestinationId == 40000 then
--			Aargs.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(Aargs)
--    end)
--end)

--Gift Presentation
--modutil.mod.Path.Context.Env("ReceivedGiftPresentation", function ( npc, giftAnimation )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.DestinationId == 40000 then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)

--Post Gift Presentation
--modutil.mod.Path.Context.Env("ReceivedGiftPresentationPost", function ( npc )
--    modutil.mod.Path.Wrap("SetAnimation", function (baseFunc, args)
--		if HeroHasTrait("ChronosAspect") and args.DestinationId == 40000 then
--			args.Name = "NPC_Chronos_Enlightened_Hover"
--		end
--		return baseFunc(args)
--    end)
--end)







modutil.mod.Path.Wrap("PlayUnequipAnimation",  function( baseFunc, args ) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosPlayUnequipAnimation( args )
	else
		baseFunc( args )
	end
end)

modutil.mod.Path.Wrap("PreNarrativeUnequipAnimation",  function(baseFunc) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosPreNarrativeUnequipAnimation()
	else
		baseFunc()
	end
end)

modutil.mod.Path.Wrap("FishingStartPresentation",  function(baseFunc, source, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFishingStartPresentation( source, args )
	else
		baseFunc(source, args)
	end
end)

modutil.mod.Path.Wrap("FishingInProgressPresentation",  function(baseFunc) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFishingInProgressPresentation()
	else
		baseFunc()
	end
end)

modutil.mod.Path.Wrap("FishingEndPresentation",  function(baseFunc, fishData, fishingAnimationPointId, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFishingEndPresentation( fishData, fishingAnimationPointId, args )
	else
		baseFunc(fishData, fishingAnimationPointId, args)
	end
end)

--Mining
modutil.mod.Path.Wrap("PickaxeStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosPickaxeStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

-- Mining
modutil.mod.Path.Wrap("ShovelStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosShovelStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

-- Picking Flower
modutil.mod.Path.Wrap("HarvestStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosHarvestStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

-- Familiar Harvest
modutil.mod.Path.Wrap("HarvestStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosHarvestStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

modutil.mod.Path.Wrap("FamiliarHarvestStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFamiliarHarvestStartPresentation( source, args, user )
	else
		baseFunc(source, args, user)
	end
end)

modutil.mod.Path.Wrap("FamiliarShovelStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFamiliarShovelStartPresentation( source, args, user )
	else
		baseFunc(source, args, user)
	end
end)

modutil.mod.Path.Wrap("FamiliarPickaxeStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFamiliarPickaxeStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

modutil.mod.Path.Wrap("FamiliarExorcismStartPresentation",  function(baseFunc, source, args, user) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFamiliarExorcismStartPresentation( source, args, user )	
	else
		baseFunc(source, args, user)
	end
end)

modutil.mod.Path.Wrap("FamiliarFishingPresentation",  function(baseFunc, fishingPoint) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosFamiliarFishingPresentation( fishingPoint )	
	else
		baseFunc(fishingPoint)
	end
end)

--Petting Cerberus
modutil.mod.Path.Wrap("PetCerberus",  function(baseFunc, cerberus) 
	if HeroHasTrait("ChronosAspect") then
		FailToPetCerberus( cerberus )	
	else
		baseFunc(cerberus)
	end
end)

--Set walk
modutil.mod.Path.Wrap("SetupMelWalk",  function(baseFunc, source, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosSetupMelWalk( source, args )
	else
		baseFunc(source, args)
	end
end)

--Return Run
modutil.mod.Path.Wrap("RestoreMelRun",  function(baseFunc, source, args) 
	if HeroHasTrait("ChronosAspect") then
		mod.ChronosRestoreMelRun( source, args )
	else
		baseFunc(source, args)
	end
end)

--Replace last stand icon
modutil.mod.Path.Wrap("AddLastStand",  function(baseFunc, args) 
	if args.Icon and args.Icon == "ExtraLifeMel" then
		if HeroHasTrait("ChronosAspect") then
			args.Icon = "ExtraLifeChronos"
		end
	end
	baseFunc( args)
end)

--ZJ wraps
if rom.mods['NikkelM-Zagreus_Journey'] then
	--Returning to Styx
	modutil.mod.Path.Wrap("NikkelM-Zagreus_Journey.ModsNikkelMHadesBiomesReturnToStyxHubPresentation",  function(baseFunc, currentRun, currentRoom, args) 
		if HeroHasTrait("ChronosAspect") then
			mod.ChronosModsNikkelMHadesBiomesReturnToStyxHubPresentation(currentRun, currentRoom, args)
		else
			baseFunc(currentRun, currentRoom, args)
		end
	end)

	--Stealing from Charon
	modutil.mod.Path.Wrap("NikkelM-Zagreus_Journey.ModsNikkelMHadesBiomesReturnToStyxHubPresentation",  function(baseFunc, currentRun, currentRoom, args) 
		if HeroHasTrait("ChronosAspect") then
			mod.ChronosModsNikkelMHadesBiomesReturnToStyxHubPresentation(currentRun, currentRoom, args)
		else
			baseFunc(currentRun, currentRoom, args)
		end
	end)

	--Robbing Charon
	modutil.mod.Path.Wrap("NikkelM-Zagreus_Journey.ForbiddenShopItemTaken",  function(baseFunc, source, args) 
		if HeroHasTrait("ChronosAspect") then
			mod.ChronosForbiddenShopItemTaken(source, args)
		else
			baseFunc(currentRun, source, args)
		end
	end)

	--Exit Erebus H1 door
	modutil.mod.Path.Wrap("NikkelM-Zagreus_Journey.ModsNikkelMHadesBiomesShrineGateExitPresentation",  function(baseFunc, currentRun, exitDoor, args) 
		if HeroHasTrait("ChronosAspect") then
			mod.ChronosModsNikkelMHadesBiomesShrineGateExitPresentation(currentRun, exitDoor, args)
		else
			baseFunc(currentRun, exitDoor, args)
		end
	end)
	

end

function mod.SetupChronosAnimations()
	local AnimationList = 
	{ 
		MelinoeIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeDashStart = "Enemy_Chronos_DashPreFire",
		MelinoeDash = "Player_Chronos_DashFire",
		MelinoeStart = "NPC_Chronos_Enlightened_Move_Start",
		MelinoeRun = "NPC_Chronos_Enlightened_Move",
		MelinoeStop = "NPC_Chronos_Enlightened_Move_Stop",
		MelinoeGetHit = "NPC_Chronos_Enlightened_Hover",
		Melinoe_GetHit_LastStand = "Enemy_Chronos_BattleOutro_Start",
		Melinoe_LastStand_Fire = "Enemy_Chronos_BattleOutro_Start",
		MelinoeDeathGetHit = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathGetHitX = "Enemy_Chronos_BattleOutro_Start",
		MelinoeGetHitSurfacePenalty = "NPC_Chronos_Enlightened_Hover",
		MelinoeGetHitActionPose = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Cast_Start = "Enemy_Chronos_CastSlowFire",
		Melinoe_Cast_StartLoop = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Cast_Fire = "Enemy_Chronos_CastSlowFire",
		Melinoe_Cast_End = "Enemy_Chronos_CastSlowPostFire",
		Melinoe_Cast_Fire_Quick = "Enemy_Chronos_CastFastFire",
		Melinoe_CrossCast_Start = "Enemy_Chronos_CastSlowFire",
		MelinoeCrossCast = "Enemy_Chronos_CastSlowFire",
		Melinoe_ForwardCast_Unequip  = "Enemy_Chronos_CastSlowFire",
		MelinoeEquip = "Player_Chronos_Shadowed_Greeting",
		MelinoeActionIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonPreInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeSalute = "NPC_Chronos_Enlightened_Greet",
		MelinoeIdleWeaponless = "NPC_Chronos_Enlightened_Hover",
		MelinoeSaluteToEquip = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnter = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeath = "Enemy_Chronos_BattleOutro_Start",
		MelinoeDeathEscape = "Enemy_Chronos_BattleOutro_End",
		MelinoeDeathEscape2 = "Enemy_Chronos_BattleOutro_End",
		MelinoeDeathSuccess = "NPC_Chronos_Enlightened_Greet",
		MelinoeDeathReEnterHeadUp = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnterToIdle = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DeathHover_Start = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnterToIdleCancelable = "NPC_Chronos_Enlightened_Hover",
		MelinoeBoonInteractPowerUp = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonInteractLoop = "Player_Chronos_Shadowed_Greeting",
		Melinoe_Gesture_ToWeaponless = "NPC_Chronos_Enlightened_Hover",
		MelinoeInteractWeaponless = "NPC_Chronos_Enlightened_Hover",
		Melinoe_InteractToEquip = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkPensive01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkPensive01Loop = "NPC_Chronos_Enlightened_Hover",
		MelTalkPensive01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkBrooding01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		MelTalkBroodingFull01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01Loop = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01LoopFull = "NPC_Chronos_Enlightened_Hover",
		MelinoeSaluteToBrooding = "NPC_Chronos_Enlightened_Hover",

		MelTalkGifting01 = "Enemy_Chronos_Shadowed_Greeting",
		MelTalkGifting01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkExplaining01 = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01Loop = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01LoopAlt = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01ReturnToIdle = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01Full = "Player_Chronos_Enlightened_Explaining",

		MelTalkFlustered01 = "Player_Chronos_Enlightened_Explaining",
		
		Melinoe_Defiant = "NPC_Chronos_Enlightened_Hover",

		MelTalkLookingDown01 = "NPC_Chronos_Enlightened_Hover",
		
		Melinoe_Gesture = "Enemy_Chronos_SittingGreeting",

		Melinoe_Drop_Exit_FireLoop = "NPC_Chronos_Enlightened_Hover",

		MelinoeBoonInteractPowerUpCancellable = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_FireLoop = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Fire = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Fire_NoEquip = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_End_NoEquip = "NPC_Chronos_Enlightened_Hover",
		Melinoe_HeroLanding = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Portal_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Portal_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveEntrance_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveEntrance_End = "NPC_Chronos_Enlightened_Hover",

		MelinoePetFrinos = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetPolecat = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetHound = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetCat = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Kneel_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Kneel_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetRaven = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Hug_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Hug_FireLoop = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Hug_End = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Tablet_Intro = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Tablet_Idle = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Tablet_Right_Start = "Enemy_Chronos_SwingRightPreFire",
		Melinoe_Tablet_Right_Loop = "Enemy_Chronos_SwingRightPreFire",
		Melinoe_Tablet_Right_End = "Enemy_Chronos_SwingRightFire",
		Melinoe_Tablet_Left_Start = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Tablet_Left_Loop = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Tablet_Left_End = "Enemy_Chronos_SwingLeftFire",
		Melinoe_Tablet_Both_Start = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Tablet_Both_Loop = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Tablet_Both_End = "Enemy_Chronos_CastSlowFire",
		Melinoe_Tablet_ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeExorcismFirstTimeEquip = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Fishing_Start = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Fishing_Fidget = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Fishing_Success = "Enemy_Chronos_SwingLeftFire",
		Melinoe_Fishing_Failure = "Enemy_Chronos_BattleOutro_Start",

		MelinoePickAxeMineStart = "Enemy_Chronos_SwingLeftPreFire",
		MelinoePickAxeMineSwing = "Enemy_Chronos_SwingLeftFire",
		--"Enemy_Chronos_Knockdown_Frustrated",
		--"Enemy_Chronos_SittingGreeting",
		--"Enemy_Chronos_Shadowed_Greeting",
	}

	--Portraits

	local replacement = "Portrait_MelChronos_"
	if HeroHasTrait("ChronosManaCostume") or (melskin and melskin.GetCurrentDress() == "Azure") then
		replacement = "Portrait_MelChronosAzure_"
	elseif HeroHasTrait("ChronosEscalatingCostume") or (melskin and melskin.GetCurrentDress() == "Crimson") then
		replacement = "Portrait_MelChronosCrimson_"
	elseif HeroHasTrait("ChronosVitalityCostume") or (melskin and melskin.GetCurrentDress() == "Emerald") then
		replacement = "Portrait_MelChronosEmerald_"
	elseif HeroHasTrait("ChronosCastDamageCostume") or (melskin and melskin.GetCurrentDress() == "Fuchsia") then
		replacement = "Portrait_MelChronosFuchsia_"
	elseif HeroHasTrait("ChronosIncomeCostume") or (melskin and melskin.GetCurrentDress() == "Gilded") then
		replacement = "Portrait_MelChronosGilded_"
	elseif HeroHasTrait("ChronosAgilityCostume") or (melskin and melskin.GetCurrentDress() == "Lavender") then
		replacement = "Portrait_MelChronosLavender_"
	elseif HeroHasTrait("ChronosHighArmorCostume") or (melskin and melskin.GetCurrentDress() == "Onyx") then
		replacement = "Portrait_MelChronosOnyx_"
	elseif (melskin and melskin.GetCurrentDress() == "Alternate Time") then
		replacement = "Portrait_MelChronosAnotherTime_"
	elseif (melskin and melskin.GetCurrentDress() == "Dark Side") then
		replacement = "Portrait_MelChronosDarkSide_"
	elseif (melskin and melskin.GetCurrentDress() == "Visage") then
		replacement = "Portrait_MelChronosVisage_"
	else
		replacement = "Portrait_MelChronos_"
	end
 
	local melPortraits = {
			Portrait_Mel_Default_01 = "Portrait_Mel_Default_01",
			Portrait_Mel_Default_01_Exit = "Portrait_Mel_Default_01_Exit",
			Portrait_Mel_Proud_01 = "Portrait_Mel_Proud_01",
			Portrait_Mel_Proud_01_Exit = "Portrait_Mel_Proud_01_Exit",
			Portrait_Mel_Intense_01 = "Portrait_Mel_Intense_01",
			Portrait_Mel_Intense_01_Exit = "Portrait_Mel_Intense_01_Exit",
			Portrait_Mel_Vulnerable_01 = "Portrait_Mel_Vulnerable_01",
			Portrait_Mel_Vulnerable_01_Exit = "Portrait_Mel_Vulnerable_01_Exit",
			Portrait_Mel_Empathetic_01 = "Portrait_Mel_Empathetic_01",
			Portrait_Mel_Empathetic_01_Exit = "Portrait_Mel_Empathetic_01_Exit",
			Portrait_Mel_EmpatheticFlushed_01 = "Portrait_Mel_EmpatheticFlushed_01",
			Portrait_Mel_EmpatheticFlushed_01_Exit = "Portrait_Mel_EmpatheticFlushed_01_Exit",
			Portrait_Mel_Hesitant_01 = "Portrait_Mel_Hesitant_01",
			Portrait_Mel_Hesitant_01_Exit = "Portrait_Mel_Hesitant_01_Exit",
			Portrait_Mel_Casual_01 = "Portrait_Mel_Casual_01",
			Portrait_Mel_Casual_01_Exit = "Portrait_Mel_Casual_01_Exit",
			Portrait_Mel_Pleased_01 = "Portrait_Mel_Pleased_01",
			Portrait_Mel_Pleased_01_Exit = "Portrait_Mel_Pleased_01_Exit",
			Portrait_Mel_PleasedFlushed_01 = "Portrait_Mel_PleasedFlushed_01",
			Portrait_Mel_PleasedFlushed_01_Exit = "Portrait_Mel_PleasedFlushed_01_Exit"
		}

	for key,value in pairs(melPortraits) do
		local newvalue = string.gsub(value, "Portrait_Mel_", replacement)
		AnimationList[key] = newvalue
	end

	replacement = "Portrait_ZagChronos_"
	if HeroHasTrait("ChronosManaCostume") or (melskin and melskin.GetCurrentDress() == "Azure") then
		replacement = "Portrait_ZagChronosAzure_"
	elseif HeroHasTrait("ChronosEscalatingCostume") or (melskin and melskin.GetCurrentDress() == "Crimson") then
		replacement = "Portrait_ZagChronosCrimson_"
	elseif HeroHasTrait("ChronosVitalityCostume") or (melskin and melskin.GetCurrentDress() == "Emerald") then
		replacement = "Portrait_ZagChronosEmerald_"
	elseif HeroHasTrait("ChronosCastDamageCostume") or (melskin and melskin.GetCurrentDress() == "Fuchsia") then
		replacement = "Portrait_ZagChronosFuchsia_"
	elseif HeroHasTrait("ChronosIncomeCostume") or (melskin and melskin.GetCurrentDress() == "Gilded") then
		replacement = "Portrait_ZagChronosGilded_"
	elseif HeroHasTrait("ChronosAgilityCostume") or (melskin and melskin.GetCurrentDress() == "Lavender") then
		replacement = "Portrait_ZagChronosLavender_"
	elseif HeroHasTrait("ChronosHighArmorCostume") or (melskin and melskin.GetCurrentDress() == "Onyx") then
		replacement = "Portrait_ZagChronosOnyx_"
	elseif (melskin and melskin.GetCurrentDress() == "Alternate Time") then
		replacement = "Portrait_ZagChronosAnotherTime_"
	elseif (melskin and melskin.GetCurrentDress() == "Dark Side") then
		replacement = "Portrait_ZagChronosDarkSide_"
	elseif (melskin and melskin.GetCurrentDress() == "Visage") then
		replacement = "Portrait_ZagChronosVisage_"
	else
		replacement = "Portrait_ZagChronos_"
	end

	local zagPortraits = {
			ModsNikkelMHadesBiomes_Portrait_Zag_Default_01 = "ModsNikkelMHadesBiomes_Portrait_Zag_Default_01",
			ModsNikkelMHadesBiomes_Portrait_Zag_Default_01_Exit = "ModsNikkelMHadesBiomes_Portrait_Zag_Default_01_Exit",
			ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01 = "ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01",
			ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01_Exit = "ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01_Exit",
			ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01 = "ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01",
			ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01_Exit = "ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01_Exit",
			ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01 = "ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01",
			ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01_Exit = "ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01_Exit",
			ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01 = "ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01",
			ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01_Exit = "ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01_Exit"
		}

	for key,value in pairs(zagPortraits) do
		local newvalue = string.gsub(value, "ModsNikkelMHadesBiomes_Portrait_Zag_", replacement)
		AnimationList[key] = newvalue
	end

	wait(0.2)
	for fromAnim,toAnim in pairs(AnimationList) do
		SwapAnimation({Name = fromAnim, DestinationName = toAnim})
	end
end

function mod.SetupMelonieAnimations()
	thread(mod.UnequipChronosAnimations)
end

function mod.UnequipChronosAnimations()
	local AnimationList = 
	{ 
		MelinoeIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeDashStart = "Enemy_Chronos_DashPreFire",
		MelinoeDash = "Player_Chronos_DashFire",
		MelinoeStart = "NPC_Chronos_Enlightened_Move_Start",
		MelinoeRun = "NPC_Chronos_Enlightened_Move",
		MelinoeStop = "NPC_Chronos_Enlightened_Move_Stop",
		MelinoeGetHit = "NPC_Chronos_Enlightened_Hover",
		Melinoe_GetHit_LastStand = "Enemy_Chronos_BattleOutro_Start",
		Melinoe_LastStand_Fire = "Enemy_Chronos_BattleOutro_Start",
		MelinoeDeathGetHit = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathGetHitX = "Enemy_Chronos_BattleOutro_Start",
		MelinoeGetHitSurfacePenalty = "NPC_Chronos_Enlightened_Hover",
		MelinoeGetHitActionPose = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Cast_Start = "Enemy_Chronos_CastSlowFire",
		Melinoe_Cast_StartLoop = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Cast_Fire = "Enemy_Chronos_CastSlowFire",
		Melinoe_Cast_End = "Enemy_Chronos_CastSlowPostFire",
		Melinoe_Cast_Fire_Quick = "Enemy_Chronos_CastFastFire",
		Melinoe_CrossCast_Start = "Enemy_Chronos_CastSlowFire",
		MelinoeCrossCast = "Enemy_Chronos_CastSlowFire",
		Melinoe_ForwardCast_Unequip  = "Enemy_Chronos_CastSlowFire",
		MelinoeEquip = "Player_Chronos_Shadowed_Greeting",
		MelinoeActionIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonPreInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeSalute = "NPC_Chronos_Enlightened_Greet",
		MelinoeIdleWeaponless = "NPC_Chronos_Enlightened_Hover",
		MelinoeSaluteToEquip = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnter = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeath = "Enemy_Chronos_BattleOutro_Start",
		MelinoeDeathEscape = "Enemy_Chronos_BattleOutro_End",
		MelinoeDeathEscape2 = "Enemy_Chronos_BattleOutro_End",
		MelinoeDeathSuccess = "NPC_Chronos_Enlightened_Greet",
		MelinoeDeathReEnterHeadUp = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnterToIdle = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DeathHover_Start = "NPC_Chronos_Enlightened_Hover",
		MelinoeDeathReEnterToIdleCancelable = "NPC_Chronos_Enlightened_Hover",
		MelinoeBoonInteractPowerUp = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonInteract = "Player_Chronos_Shadowed_Greeting",
		MelinoeBoonInteractLoop = "Player_Chronos_Shadowed_Greeting",
		Melinoe_Gesture_ToWeaponless = "NPC_Chronos_Enlightened_Hover",
		MelinoeInteractWeaponless = "NPC_Chronos_Enlightened_Hover",
		Melinoe_InteractToEquip = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkPensive01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkPensive01Loop = "NPC_Chronos_Enlightened_Hover",
		MelTalkPensive01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkBrooding01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		MelTalkBroodingFull01 = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01Loop = "NPC_Chronos_Enlightened_Hover",
		MelTalkBrooding01LoopFull = "NPC_Chronos_Enlightened_Hover",
		MelinoeSaluteToBrooding = "NPC_Chronos_Enlightened_Hover",

		MelTalkGifting01 = "Enemy_Chronos_Shadowed_Greeting",
		MelTalkGifting01ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		
		MelTalkExplaining01 = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01Loop = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01LoopAlt = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01ReturnToIdle = "Player_Chronos_Enlightened_Explaining",
		MelTalkExplaining01Full = "Player_Chronos_Enlightened_Explaining",

		MelTalkFlustered01 = "Player_Chronos_Enlightened_Explaining",
		
		Melinoe_Defiant = "NPC_Chronos_Enlightened_Hover",

		MelTalkLookingDown01 = "NPC_Chronos_Enlightened_Hover",
		
		Melinoe_Gesture = "Enemy_Chronos_SittingGreeting",

		Melinoe_Drop_Exit_FireLoop = "NPC_Chronos_Enlightened_Hover",

		MelinoeBoonInteractPowerUpCancellable = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_FireLoop = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Exit_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Fire = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_Fire_NoEquip = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Drop_Entrance_End_NoEquip = "NPC_Chronos_Enlightened_Hover",
		Melinoe_HeroLanding = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Portal_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveExit_Portal_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveEntrance_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_DiveEntrance_End = "NPC_Chronos_Enlightened_Hover",

		MelinoePetFrinos = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetPolecat = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetHound = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetCat = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Kneel_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Kneel_End = "NPC_Chronos_Enlightened_Hover",
		Melinoe_PetRaven = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Hug_Start = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Hug_FireLoop = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Hug_End = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Tablet_Intro = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Tablet_Idle = "NPC_Chronos_Enlightened_Hover",
		Melinoe_Tablet_Right_Start = "Enemy_Chronos_SwingRightPreFire",
		Melinoe_Tablet_Right_Loop = "Enemy_Chronos_SwingRightPreFire",
		Melinoe_Tablet_Right_End = "Enemy_Chronos_SwingRightFire",
		Melinoe_Tablet_Left_Start = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Tablet_Left_Loop = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Tablet_Left_End = "Enemy_Chronos_SwingLeftFire",
		Melinoe_Tablet_Both_Start = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Tablet_Both_Loop = "Enemy_Chronos_CastSlowPreFire",
		Melinoe_Tablet_Both_End = "Enemy_Chronos_CastSlowFire",
		Melinoe_Tablet_ReturnToIdle = "NPC_Chronos_Enlightened_Hover",
		MelinoeExorcismFirstTimeEquip = "NPC_Chronos_Enlightened_Hover",

		Melinoe_Fishing_Start = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Fishing_Fidget = "Enemy_Chronos_SwingLeftPreFire",
		Melinoe_Fishing_Success = "Enemy_Chronos_SwingLeftFire",
		Melinoe_Fishing_Failure = "Enemy_Chronos_BattleOutro_Start",

		MelinoePickAxeMineStart = "Enemy_Chronos_SwingLeftPreFire",
		MelinoePickAxeMineSwing = "Enemy_Chronos_SwingLeftFire",

		--Portraits
		Portrait_Mel_Default_01 = "Portrait_MelAndChronos_Default_01",
		Portrait_Mel_Default_01_Exit = "Portrait_MelAndChronos_Default_01_Exit",
		Portrait_Mel_Proud_01 = "Portrait_MelAndChronos_Proud_01",
		Portrait_Mel_Proud_01_Exit = "Portrait_MelAndChronos_Proud_01_Exit",
		Portrait_Mel_Intense_01 = "Portrait_MelAndChronos_Intense_01",
		Portrait_Mel_Intense_01_Exit = "Portrait_MelAndChronos_Intense_01_Exit",
		Portrait_Mel_Vulnerable_01 = "Portrait_MelAndChronos_Vulnerable_01",
		Portrait_Mel_Vulnerable_01_Exit = "Portrait_MelAndChronos_Vulnerable_01_Exit",
		Portrait_Mel_Empathetic_01 = "Portrait_MelAndChronos_Empathetic_01",
		Portrait_Mel_Empathetic_01_Exit = "Portrait_MelAndChronos_Empathetic_01_Exit",
		Portrait_Mel_EmpatheticFlushed_01 = "Portrait_MelAndChronos_EmpatheticFlushed_01",
		Portrait_Mel_EmpatheticFlushed_01_Exit = "Portrait_MelAndChronos_EmpatheticFlushed_01_Exit",
		Portrait_Mel_Hesitant_01 = "Portrait_MelAndChronos_Hesitant_01",
		Portrait_Mel_Hesitant_01_Exit = "Portrait_MelAndChronos_Hesitant_01_Exit",
		Portrait_Mel_Casual_01 = "Portrait_MelAndChronos_Casual_01",
		Portrait_Mel_Casual_01_Exit = "Portrait_MelAndChronos_Casual_01_Exit",
		Portrait_Mel_Pleased_01 = "Portrait_MelAndChronos_Pleased_01",
		Portrait_Mel_Pleased_01_Exit = "Portrait_MelAndChronos_Pleased_01_Exit",
		Portrait_Mel_PleasedFlushed_01 = "Portrait_MelAndChronos_PleasedFlushed_01",
		Portrait_Mel_PleasedFlushed_01_Exit = "Portrait_MelAndChronos_PleasedFlushed_01_Exit",

		--Zagreus Journey portraits
		ModsNikkelMHadesBiomes_Portrait_Zag_Default_01 = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Default_01",
		ModsNikkelMHadesBiomes_Portrait_Zag_Default_01_Exit = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Default_01_Exit",
		ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01 = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Serious_01",
		ModsNikkelMHadesBiomes_Portrait_Zag_Serious_01_Exit = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Serious_01_Exit",
		ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01 = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Defiant_01",
		ModsNikkelMHadesBiomes_Portrait_Zag_Defiant_01_Exit = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Defiant_01_Exit",
		ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01 = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Empathetic_01",
		ModsNikkelMHadesBiomes_Portrait_Zag_Empathetic_01_Exit = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Empathetic_01_Exit",
		ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01 = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Unwell_01",
		ModsNikkelMHadesBiomes_Portrait_Zag_Unwell_01_Exit = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Unwell_01_Exit"


		--"Enemy_Chronos_Knockdown_Frustrated",
		--"Enemy_Chronos_SittingGreeting",
		--"Enemy_Chronos_Shadowed_Greeting",
	}

	wait(0.2)
	for fromAnim,toAnim in pairs(AnimationList) do
		SwapAnimation({Name = fromAnim, Reverse = true})
	end
end

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
	SetupFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "SetupChronosAnimations",
		Threaded = true,
	},
	OnUnequipFunctionName = _PLUGIN.guid .. "." .. "SetupMelonieAnimations",
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
				{ ManaCost = 30, WeaponProperties = { NumProjectiles = 1, FireEndGraphic = "null" }, Wait = 0.2, ChannelSlowEventOnEnter = true, HideStageReachedFx = true },
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
		WeaponAxeSpecialSwing = 
		{
			ManaCost = 20,
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
			ChangeValue = "PlayerChronosSwingRight",
		},
		{
			WeaponName = "WeaponAxe",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingRightPreFire",
				FireGraphic = "Enemy_Chronos_SwingRightFire",
				SwapOnFire = "WeaponAxe2",
				FireFx = "ChronosScythePreAttackSparkleSwingRight",
			},
			ProjectileProperties = {
				Damage = 40,
			},
			ExcludeLinked = true,
		},
		{
			WeaponName = "WeaponAxe2",
			WeaponProperty = "Projectile",
			ChangeValue = "PlayerChronosSwingLeft",
		},
		{
			WeaponName = "WeaponAxe2",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingLeftPreFire",
				FireGraphic = "Enemy_Chronos_SwingLeftFire",
				SwapOnFire = "WeaponAxe",
				FireFx = "ChronosScythePreAttackSparkleSwingLeft",
			},
			ProjectileProperties = {
				Damage = 40,
			},
			ExcludeLinked = true,
		},
		--Omega Attack
		{
			WeaponName = "WeaponAxeSpin",
			WeaponProperty = "Projectile",
			ChangeValue = "PlayerChronosScytheThrow",
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
				Damage = 120,
			},
		},
		--Dash Attack
		{
			WeaponName = "WeaponAxeDash",
			WeaponProperty = "Projectile",
			ChangeValue = "PlayerChronosSwingLeft",
		},
		{
			WeaponName = "WeaponAxeDash",
			WeaponProperties = {
				ChargeStartAnimation = "Enemy_Chronos_SwingRightPreFire",
				FireGraphic = "Enemy_Chronos_SwingLeftFire",
				SwapOnFire = "WeaponAxe",
				FireFx = "ChronosScythePreAttackSparkleSwingLeft",
			},
			ProjectileProperties = {
				Damage = 40,
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
			ChangeValue = "PlayerChronosGrindWallForward",
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
			ProjectileName = "PlayerChronosGrindWallForward",
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

