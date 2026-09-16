---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

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
	CurrentRun.Hero.SkipDamageAnimation = true,
	--SetUnitProperty({ Property = "DamagedAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "UnequipAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "WeaponInteractAnimation", Value = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	
	SetAnimation({ Name = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.AnimOffsetZ = -40
	CurrentRun.Hero.SubtitleColor = Color.ChronosVoice
	CurrentRun.Hero.CanBeFrozen = false
	SetupCostume()

	--DamagedSound = "/VO/MelinoeEmotes/EmoteHurt",
	--ChokingSound = "/VO/MelinoeEmotes/EmoteStunned",
	--FrozenSound = "/VO/MelinoeEmotes/EmoteHurt",
	--UnFrozenSound = "/VO/MelinoeEmotes/EmoteGasping",

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
	CurrentRun.Hero.SkipDamageAnimation = nil,
	--SetUnitProperty({ Property = "DamagedAnimation", Value = "MelinoeGetHit", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "UnequipAnimation", Value = "Melinoe_Axe_Unequip", DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "WeaponInteractAnimation", Value = "Melinoe_Axe_Interact", DestinationId = CurrentRun.Hero.ObjectId })

	SetAnimation({ Name = "MelinoeIdle", DestinationId = CurrentRun.Hero.ObjectId })
	CurrentRun.Hero.AnimOffsetZ = 0
	CurrentRun.Hero.SubtitleColor = Color.White
	CurrentRun.Hero.CanBeFrozen = true
	SetupCostume()

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

function mod.PlayerChronosDeathPresentation( currentRun, killer, args )

	AddInputBlock({ Name = "DeathPresentation" })
	EndAutoSprint({ Halt = true, EndWeapon = true })
	ClearCameraClamp({ LerpTime = 0.4 })
	ZeroMouseTether("DeathPresentation")
	LockCameraMotion("DeathPresentation")
	ToggleCombatControl( CombatControlsDefaults, false, "DeathPresentation")
	HideCombatUI( "Death", { FadeDuration = 0.0 } )
	 -- Would be better to move the layers of the death sequence up but avoiding changing the many fragile layers it has
	RemoveRoomRewardPreviews()
	RemoveScreenEdgeIndicators()
	RemoveInspectPoints()
	PartnersChattingStop()
	RemoveSimSpeedChange( "NemesisFreeShot", { LerpTime = 0.0 } )
	SetConfigOption({ Name = "UseOcclusion", Value = false })

	if IsScreenOpen("Codex") then
		CloseCodexScreen()
	end

	SessionMapState.PrevRequiredKillEnemies = ShallowCopyTable( RequiredKillEnemies )

	StopAnimation({ Id = killer.ObjectId, Names = { "HealthBarArmorShatter", "ArmorBreak" } })
	CleanupEnemies( { Destroy = true, DestroyIgnoreId = killer.ObjectId } )
	ExpireProjectiles({ Silent = true, BlockSpawns = true, IncludeToAdd = true })
	ClearEffect({ Id = killer.ObjectId, All = true, BlockAll = true })
	EffectPostClearAll( killer )
	if MapState.EquippedWeapons.WeaponAxe then
		ExpireProjectiles({ Id = CurrentRun.Hero.ObjectId, Weapon = "ProjectileAxeSpin", CancelQueuedProjectilesOnId = CurrentRun.Hero.ObjectId })
	end
	RunWeaponMethod({ Id = CurrentRun.Hero.ObjectId, Weapon = "All", Method = "cancelCharge" })
	RunWeaponMethod({ Id = CurrentRun.Hero.ObjectId, Weapon = "All", Method = "ForceControlRelease" })
	SetThingProperty({ Property = "AllowAnyFire", Value = false, DestinationId = CurrentRun.Hero.ObjectId, DataValue = false })
	SetThreadWait("DropStoredAmmoHero", 0)
	CastEmbeddedPresentationEnd( )
	ClearCastEmbededAnchors()
	if MapState.ManaChargeIndicatorIds then
		Destroy({ Ids = { MapState.ManaChargeIndicatorIds.BackingId, } })
	end
	for k, encounter in ipairs( currentRun.CurrentRoom.ActiveEncounters ) do
		if encounter.UseGroupHealthBar then
			notifyExistingWaiters(encounter.Name.."GroupHealthBarDead")
		end
	end
	if SessionMapState.ChronosTimeSlowActive then
		thread( CallFunctionName, "ChronosEndTimeSlowPresentation" )
	end
	StopAmbientSound({ All = true })
	StopSound({ Id = AudioState.SecretMusicId, Duration = 0.25 })
	StopSound({ Id = AudioState.AmbientMusicId, Duration = 0.25 })
	AudioState.SecretMusicId = nil
	AudioState.SecretMusicName = nil
	AudioState.AmbientMusicId = nil
	if AudioState.RainSoundId ~= nil then
		StopSound({ Id = AudioState.RainSoundId, Duration = 0.2 })
		AudioState.RainSoundId = nil
	end
	if AudioState.ChronosTimeSlowSoundId ~= nil then
		StopSound({ Id = AudioState.ChronosTimeSlowSoundId, Duration = 0.2 })
		AudioState.ChronosTimeSlowSoundId = nil
	end
	if AudioState.EliteEncounterMusicId ~= nil then
		StopSound({ Id = AudioState.EliteEncounterMusicId, Duration = 0.2 })
		AudioState.EliteEncounterMusicId = nil
	end
	if AudioState.SkipEncounterMusicId ~= nil then
		SkipEncounterEndPresentation()
	end

	SetAudioEffectState({ Name = "SpellCharge", Value = 0 })
	SetAudioEffectState({ Name = "GlobalEcho", Value = 0 })

	if not CurrentRun.Cleared then
		ShakeScreen({ Speed = 300, Distance = 3, Duration = 0.27, FalloffSpeed = 1000 })
		FocusCamera({ Fraction = 1.0, Duration = 0.27, ZoomType = "Ease" })
		SetThingProperty({ Property = "Graphic", Value = "MelinoeGetHitActionPose", DestinationId = CurrentRun.Hero.ObjectId })
	end

	Stop({ Id = currentRun.Hero.ObjectId })
	Halt({ Id = currentRun.Hero.ObjectId })
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = 0.0, DataValue = false, DestinationNames = { "GroundEnemies", "FlyingEnemies" } })

	if killer.DamagedFxStyles ~= nil then
		for _, animName in pairs(killer.DamagedFxStyles) do
			StopAnimation({ DestinationId = killer.ObjectId, Name = animName, PreventChain = true, IncludeCreatedAnimations = true })
		end
	end
	if killer.StopAnimationsOnHeroKill ~= nil then
		StopAnimation({ DestinationId = killer.ObjectId, Names = killer.StopAnimationsOnHeroKill, PreventChain = true, IncludeCreatedAnimations = true })
	end
	RemoveFromGroup({ Id = killer.ObjectId, Names = { "Standing", "GroundEnemies", "FlyingEnemies" } })
	AddToGroup({ Id = killer.ObjectId, Name = "Combat_UI", DrawGroup = true })

	if currentRun.Hero.AttachedAnimationName ~= nil then
		StopAnimation({ Name = currentRun.Hero.AttachedAnimationName, DestinationId = currentRun.Hero.ObjectId })
	end

	if MapState.BossShieldTriggers <= 0 and MapState.BossShieldFx then
		StopAnimation({ Name = MapState.BossShieldFx, DestinationId = CurrentRun.Hero.ObjectId, IncludeCreatedAnimations = true })
	end
	currentRun.Hero.Mute = false
	UnmuteSpeakerPermanent( currentRun.Hero )
	currentRun.Hero.CurrentlyPoisoned = nil
	SetPlayerInvulnerable( "PlayerDeath" )

	if not CurrentRun.Cleared then
		thread( PlayVoiceLines, GlobalVoiceLines.DeathVoiceLines )
	end

	if killer.CauseOfDeathVoiceLines ~= nil then
		thread( PlayVoiceLines, killer.CauseOfDeathVoiceLines, nil, killer )
	elseif currentRun.CurrentRoom.Encounter.CauseOfDeathVoiceLines ~= nil then
		thread( PlayVoiceLines, currentRun.CurrentRoom.Encounter.CauseOfDeathVoiceLines )
	elseif currentRun.CurrentRoom.CauseOfDeathVoiceLines ~= nil then
		thread( PlayVoiceLines, currentRun.CurrentRoom.CauseOfDeathVoiceLines )
	end

	-- black out world
	StopAnimation({ DestinationId = CurrentRun.Hero.ObjectId, Name = "HadesReverseDarknessVignetteHold" })
	StopAnimation({ DestinationId = CurrentRun.Hero.ObjectId, Name = "HadesReverseDarknessGroundFog" })
	AdjustFrame({ Color = Color.TransparentRed, Duration = 0.0, Fraction = 0 })
	
	ScreenAnchors.DeathBacking = CreateScreenObstacle({ Name = "rectangle01", Group = "Combat_UI_World_Backing", X = ScreenCenterX, Y = ScreenCenterY, Scale = 10.0, ScaleX = ScreenScaleX, ScaleY = ScreenScaleY })
	SetColor({ Id = ScreenAnchors.DeathBacking, Color = Color.Black })
	SetAlpha({ Id = ScreenAnchors.DeathBacking, Fraction = 1.0, Duration = 0 })

	ScreenAnchors.DeathBackground = CreateScreenObstacle({ Name = "rectangle01", Group = "Combat_UI_World_Backing", X = ScreenCenterX, Y = ScreenCenterY, Scale = 10.0, ScaleX = ScreenScaleX, ScaleY = ScreenScaleY })
	SetColor({ Id = ScreenAnchors.DeathBackground, Color = Color.Black })
	SetAlpha({ Id = ScreenAnchors.DeathBackground, Fraction = 1.0, Duration = 0 })

	-- @hack Fix for non-existent group that some vfx got put in accidentally
	CreateGroup({ Name = "Dark_FX", BlendMode = "Normal" })
	InsertGroupBehind({ Name = "Dark_FX", DestinationName = "Standing_Back" })

	RemoveFromGroup({ Id = currentRun.Hero.ObjectId, Name = "Standing" })
	AddToGroup({ Id = currentRun.Hero.ObjectId, Name = "Combat_Menu", DrawGroup = true })
	thread( DoRumble, currentRun.Hero.HeroFinalHitRumbleParameters )

	if not CurrentRun.Cleared then
		Flash({ Id = CurrentRun.Hero.ObjectId, Speed = 0.02, MinFraction = 1.0, MaxFraction = 0.0, Color = Color.Red, Duration = 1.51, ExpireAfterCycle = true })
		ShakeScreen({ Speed = 0, Distance = 0, Duration = 10.0 })
	end
	
	wait( 0.02 )
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = 0.0, DataValue = false, DestinationId = killer.ObjectId })
	PlaySound({ Name = "/SFX/Player Sounds/IrisDeathStartFwoosh" })

	if not CurrentRun.Cleared then
		PlaySound({ Name = "/SFX/Player Sounds/PlayerDeath" })

		wait( 1.11 )
		
		SetAlpha({ Id = killer.ObjectId, Fraction = 0, Duration = 0.2 })
		
		wait( 0.21 )
		--PlaySound({ Name = "/SFX/Player Sounds/MelCastCircleEnd" })
	else
		PlaySound({ Name = "/Leftovers/Menu Sounds/EmoteAscended" })
	end

	if CurrentRun.BountyCleared then
		PlaySound({ Name = "/Music/ChaosVictoryStinger" })
	elseif CurrentRun.IsDreamRun then
		if CurrentRun.Cleared then
			PlaySound({ Name = "/Music/DreamVictoryStinger" })
		else
			PlaySound({ Name = "/Music/DreamLossStinger" })
		end
	elseif CurrentRun.Cleared then
		if GameState.ReachedTrueEnding then
			if CurrentRun.CurrentRoom.RoomSetName == "I" then
				PlaySound({ Name = "/Music/IrisHadesDeathStingerOrch_MC" })
			elseif CurrentRun.CurrentRoom.RoomSetName == "Q" and not CurrentRun.TextLinesRecord.ZeusPalaceAboutTyphonDeath01 then
				PlaySound({ Name = "/Music/IrisDeathStingerOrch_MC" })
			end
		-- if Cleared & not ReachedTrueEnding, no stingers
		end
	else
		PlaySound({ Name = currentRun.CurrentRoom.Encounter.DeathStinger or "/Music/IrisDeathStinger" })
	end

	local sceneOffsetY = -95
	PanCamera({ Id = currentRun.Hero.ObjectId, Duration = 0.2, OffsetY = sceneOffsetY, Retarget = true, EaseIn = 0.0, EaseOut = 1.0 })
	FocusCamera({ Fraction = 1.47, Duration = 0.2, ZoomType = "Ease" })

	local melDeathFlash = "Blank"
	if not CurrentRun.Cleared then
		--melDeathFlash = CreateScreenComponent({ Name = "BlankObstacle", Group = "Overlay", X = ScreenCenterX, Y = ScreenCenterY, Animation = "MelDeathFlash", ScaleX = ScreenScaleX, ScaleY = ScreenScaleY })
	end

	SetGoalAngle({ Id = currentRun.Hero.ObjectId, Angle = 315, CompleteAngle = true })

	if not CurrentRun.Cleared then
		for i = 1, 16 do
			CreateAnimation({ Name = "MelDeathLine", DestinationId = ScreenAnchors.DeathBackground, Group = "Combat_Menu_TraitTray_Overlay_Additive" })
		end
	end

	SetThingProperty({ Property = "Grip", Value = 99999, DestinationId = CurrentRun.Hero.ObjectId })

	local deathAnimation = "Enemy_Chronos_BattleOutro_End"
	if CurrentRun.Cleared and GameState.ReachedTrueEnding then
		deathAnimation = "MelinoeDeathSuccess"
	end
	SetThingProperty({ Property = "ElapsedTimeMultiplier", Value = 1.0, DataValue = false, DestinationNames = { "HeroTeam" } })
	SetGoalAngle({ Id = currentRun.Hero.ObjectId, Angle = 315, CompleteAngle = true })
	SetAnimation({ DestinationId = currentRun.Hero.ObjectId, Name = deathAnimation })
	StopAnimation({ Name = "ChronosPhase2PoweredUpFxEmitterA", DestinationId = currentRun.Hero.ObjectId })
	StopAnimation({ Name = "ChronosPhase2PoweredUpBackingGlow", DestinationId = currentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ChronosPhase2PoweredUpBackingGlowFade", DestinationId = currentRun.Hero.ObjectId })

	if CurrentRun.ActiveBounty ~= nil then
		LoadVoiceBanks("Chaos", nil, true)
		if CurrentRun.BountyCleared then
			local subtitleText = nil
			local subtitleTimeData = nil
			if GameState.PackagedBountyClears[CurrentRun.ActiveBounty] > 1 and GameState.PackagedBountyClearRecordTime[CurrentRun.ActiveBounty] == CurrentRun.GameplayTime then
				subtitleText = "PackagedBountyComplete_Subtitle"
				subtitleTimeData = { LuaKey = "TempTextData", LuaValue = { ClearTime = GetTimerString( CurrentRun.GameplayTime, 2 ) } }
			end
			thread( DisplayInfoBanner, nil, {
				Text = "PackagedBountyEndedMessage", 
				Delay = 0.75,
				TextColor = Color.White,
				FontScale = 0.85,
				AnimationName = "LocationBackingIrisChaosIn",
				AnimationOutName = "LocationBackingIrisChaosOut",
				Duration = 4.25,
				TextOffsetY = 25,
				SubTextColor = Color.ChaosVoice,
				SubtitleTextRevealSound = "/SFX/Menu Sounds/BiomeMapRewardIcon",
				SubtitleOffsetY = -10,
				SubtitleText = subtitleText,
				SubtitleData = subtitleTimeData,
			} )
		else
			-- Bounty failed
			thread( DisplayInfoBanner, nil, {
				Text = "BountyFailedMessage",
				Delay = 0.75,
				TextColor = {161, 45, 117, 255},
				FontScale = 0.85,
				AnimationName = "LocationBackingIrisChaosIn",
				AnimationOutName = "LocationBackingIrisChaosOut",
				Duration = 4.25,
				Layer = "Overlay",
				TextOffsetY = 25,
			} )
		end
	elseif CurrentRun.IsDreamRun then
		LoadVoiceBanks("Hypnos", nil, true)
		if CurrentRun.Cleared then
			local subtitleText = nil
			local subtitleTimeData = nil
			thread( DisplayInfoBanner, nil, {
				Text = "DreamRunClearedMessage",
				Delay = 0.75,
				TextColor = Color.ChronosVoice,
				FontScale = 0.85,
				AnimationName = "InfoBannerDreamIn",
				AnimationOutName = "InfoBannerDreamOut",
				Duration = 4.25,
				Layer = "Overlay",
				TextOffsetY = 25,
				ThreadName = "Outro",
			} )
		else
			-- Dream Run failed
			thread( DisplayInfoBanner, nil, {
				Text = "DreamRunFailedMessage",
				Delay = 0.75,
				TextColor = Color.ChronosVoice,
				FontScale = 0.85,
				AnimationName = "InfoBannerDreamIn",
				AnimationOutName = "InfoBannerDreamOut",
				Duration = 4.25,
				Layer = "Overlay",
				TextOffsetY = 25,
				ThreadName = "Outro",
			} )
		end
	elseif CurrentRun.Cleared then
		if GameState.ReachedTrueEnding then
			thread( DisplayInfoBanner, nil, { Text = "OutroDeathMessageTrueEnding", Delay = 0.75, TextColor = Color.Turquoise, FontScale = 0.85, AnimationName = "LocationBackingIrisGenericIn", AnimationOutName = "LocationBackingIrisGenericOut", ThreadName = "Outro", Duration = 4.25, TextOffsetY = 50 } )
		else
			thread( DisplayInfoBanner, nil, { Text = "OutroDeathMessageAlt", Delay = 0.75, TextColor = Color.Turquoise, FontScale = 0.85, AnimationName = "LocationBackingIrisGenericIn", AnimationOutName = "LocationBackingIrisGenericOut", ThreadName = "Outro", Duration = 4.25, TextOffsetY = 50 } )
		end
	else
		local encounterData = EncounterData[currentRun.CurrentRoom.Encounter.Name] or currentRun.CurrentRoom.Encounter
		thread( DisplayInfoBanner, nil, { Text = encounterData.DeathMessage or "ChronosDefeatedMessage", Delay = 0.75, TextColor = Color.ChronosVoice, FontScale = 0.85, AnimationName = "LocationBackingIrisGenericIn", AnimationOutName = "LocationBackingIrisGenericOut", Duration = 4.25, TextOffsetY = 50 } )
	end

	local timeToEscape = 1.00
	local deathBGPreRunTime = 0.23

	wait( deathBGPreRunTime )
	
	--SetAnimation({ Name = "DeathSequenceMelBG", DestinationId = ScreenAnchors.DeathBackground })
	SetAnimation({ Name = "null", DestinationId = ScreenAnchors.DeathBackground })

	wait( timeToEscape )

	--thread( PlayVoiceLines, GlobalVoiceLines.DeathReturnVoiceLines )
	thread( PlayVoiceLines, EnemyData.NPC_Chronos_02.BossFinisherVoiceLines )
	

	if deathAnimation == "MelinoeDeathEscape" then
		SetAnimation({ Name = "MelinoeDeathEscape2", DestinationId = currentRun.Hero.ObjectId })
	end
	SetScale({ Id = ScreenAnchors.DeathBackground, Fraction = 1 })
	SetColor({ Id = ScreenAnchors.DeathBackground, Color = Color.White })
	
	SetThingProperty({ Property = "AddColor", Value = "true", DestinationId = CurrentRun.Hero.ObjectId })
	SetColor({ Id = CurrentRun.Hero.ObjectId, Color = {1, 1, 1, 1}, Duration = 0.0 })
	SetColor({ Id = CurrentRun.Hero.ObjectId, Color = {0, 0, 0, 1}, Duration = 1.0, EaseIn = 0.9, EaseOut = 1.0})
	
	thread( DeathEscapeVFX, currentRun.Hero.ObjectId, sceneOffsetY )

	SetThingProperty({ Property = "Grip", Value = "Default", DestinationId = CurrentRun.Hero.ObjectId })

	wait( 0.04 )

	SetColor({ Id = CurrentRun.Hero.ObjectId, Color = {0, 0, 0, 1}, Duration = 0.0 })	

	wait( 0.09 )
	Destroy({ Id = melDeathFlash.Id })

	wait( 0.3 )
	Teleport({ Id = killer.ObjectId, OffsetX = 0, OffsetY = 0 })
	ClearLootDrops( killer )

	wait(0.55)

	if currentRun.CurrentRoom.Encounter.DeathExtraSounds ~= nil then
		local randomSound = GetRandomValue( currentRun.CurrentRoom.Encounter.DeathExtraSounds )
		PlaySound({ Name = randomSound })
	end

	if ShouldIncrementEasyMode() and (CurrentRun.EasyModeIncremented or not GameState.EasyModeHadMaxPresentation) then
		thread( EasyModeLevelUpPresentation )
		wait( 3.0 )
	end

	local deathTauntTime = 3.6
	local encounter = CurrentRun.CurrentRoom.Encounter
	if CurrentRun.IsDreamRun then
		-- Hypnos Death Taunt
		wait( 1.0 )
		WaitForSpeechFinished()
		thread( HadesSpeakingPresentation, { SubtitleColor = EnemyData.NPC_Hypnos_DreamRun.SubtitleColor }, { OverlayAnim = "HypnosOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = EnemyData.NPC_Hypnos_DreamRun.DeathTauntVoiceLines, OverlayDeathFx = true, StartDelay = 0 } ) -- nopkg
		wait( deathTauntTime - 1.0 )
	elseif CurrentRun.CurrentRoom.KilledByChaosCurse or CurrentRun.ActiveBounty then
		-- Chaos Death Taunt
		LoadPackages({ Names = "Chaos", IgnoreAssert = true })
		thread( HadesSpeakingPresentation, { SubtitleColor = LootData.TrialUpgrade.SubtitleColor }, { OverlayAnim = "ChaosOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = LootData.TrialUpgrade.DeathTauntVoiceLines, OverlayDeathFx = true } ) -- nopkg
		wait( deathTauntTime )
	elseif encounter ~= nil then
		local encounterData = EncounterData[encounter.Name]
		local chronosTauntRequirements =
		{
			NamedRequirements = { "NightmarePresentationRequirements" },
			ChanceToPlay = 0.2
		}
		if not encounter.Completed then		
			if encounterData.HeroDeathEvents ~= nil then
				RunEventsGeneric( encounterData.HeroDeathEvents, encounter, args )
			elseif CurrentRun.CurrentRoom.Encounter.SpurnedGodName ~= nil then
				-- Olympian Death Taunt
				local spurnedGodName = CurrentRun.CurrentRoom.Encounter.SpurnedGodName
				local spurnedGodData = LootData[spurnedGodName]
				thread( HadesSpeakingPresentation, { SubtitleColor = spurnedGodData.SubtitleColor }, { OverlayAnim = spurnedGodData.OverlayAnim, BlockScreenshake = true, PortraitDuration = 2, VoiceLines = spurnedGodData.DeathTauntVoiceLines, OverlayDeathFx = true } )
				wait( deathTauntTime )
			elseif CurrentRun.CurrentRoom.Encounter.TookChaosCurseDamage ~= nil or CurrentRun.ActiveBounty then
				-- Chaos Death Taunt
				LoadPackages({ Names = "Chaos", IgnoreAssert = true })
				thread( HadesSpeakingPresentation, { SubtitleColor = LootData.TrialUpgrade.SubtitleColor }, { OverlayAnim = "ChaosOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = LootData.TrialUpgrade.DeathTauntVoiceLines, OverlayDeathFx = true } ) -- nopkg
				wait( deathTauntTime )
			elseif CurrentRun.CurrentRoom.Encounter.ArtemisId ~= nil and not CurrentRun.CurrentRoom.Encounter.Completed then
				-- Artemis Death Taunt
				thread( HadesSpeakingPresentation, ActiveEnemies[CurrentRun.CurrentRoom.Encounter.ArtemisId] or { SubtitleColor = Color.ArtemisVoice }, { OverlayAnim = "ArtemisOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = GlobalVoiceLines.ArtemisDeathReactionVoiceLines, OverlayDeathFx = true } )
				wait( deathTauntTime )
			elseif CurrentRun.CurrentRoom.Encounter.HeraclesId ~= nil and not CurrentRun.CurrentRoom.Encounter.Completed then
				-- Heracles Death Taunt
				thread( HadesSpeakingPresentation, ActiveEnemies[CurrentRun.CurrentRoom.Encounter.HeraclesId] or { SubtitleColor = Color.HeraclesVoice }, { OverlayAnim = "HeraclesOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = GlobalVoiceLines.HeraclesDeathReactionVoiceLines, OverlayDeathFx = true } )
				wait( deathTauntTime )
			elseif CurrentRun.CurrentRoom.Encounter.IcarusId ~= nil and not CurrentRun.CurrentRoom.Encounter.Completed then
				-- Icarus Death Taunt
				thread( HadesSpeakingPresentation, ActiveEnemies[CurrentRun.CurrentRoom.Encounter.IcarusId] or { SubtitleColor = Color.IcarusVoice }, { OverlayAnim = "IcarusOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = GlobalVoiceLines.IcarusDeathReactionVoiceLines, OverlayDeathFx = true } )
				wait( deathTauntTime )
			elseif CurrentRun.CurrentRoom.Encounter.NemesisId ~= nil then
				-- Nemesis Death Taunt
				thread( HadesSpeakingPresentation, ActiveEnemies[CurrentRun.CurrentRoom.Encounter.NemesisId] or { SubtitleColor = Color.NemesisVoice }, { OverlayAnim = "NemesisOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = GlobalVoiceLines.NemesisDeathReactionVoiceLines, OverlayDeathFx = true } )
				wait( deathTauntTime )
			elseif IsGameStateEligible( encounter, chronosTauntRequirements ) then
				-- Chronos Death Taunt
				LoadVoiceBanks( { Name = "Intercom" }, nil, true )
				LoadPackages({ Names = "Chronos", IgnoreAssert = true })
				WaitForSpeechFinished()
				thread( HadesSpeakingPresentation, { SubtitleColor = Color.ChronosVoice }, { OverlayAnim = "ChronosOverlay", BlockScreenshake = true, PortraitDuration = 2, VoiceLines = GlobalVoiceLines.ChronosDeathTauntVoiceLines } )
				GameState.NightmaresOccurred = (GameState.NightmaresOccurred or 0) + 1
				CurrentRun.NightmareOccurred = true
				wait( deathTauntTime )
			end
		end
	end

	wait( 2.5 )
	
	DoomAppearancePresentation( SessionMapState.PrevRequiredKillEnemies )

	wait( 1.25 )
	
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 0.2 })

	SetThingProperty({ Property = "AllowAnyFire", Value = true, DestinationId = CurrentRun.Hero.ObjectId, DataValue = false })

	WaitForSpeechFinished()

	-- un-chipmunkify/dreamify only after all speech has finished
	currentRun.Hero.SpeechParams.Chipmunk = nil
	SetAudioEffectState({ Name = "Chipmunk", Value = 0 })
	SetAudioEffectState({ Name = "Dream", Value = 0 })

	UnlockCameraMotion("DeathPresentation")
	RemoveInputBlock({ Name = "DeathPresentation" })
	ToggleCombatControl( CombatControlsDefaults, true, "DeathPresentation")
	SetConfigOption({ Name = "UseOcclusion", Value = true })

end

function mod.ChronosStartBlinkTrailPresentation()
	if not IsEmpty(MapState.BlinkDropTrail) then
		for id, ids in pairs(MapState.BlinkDropTrail) do	
			--SetAnimation({ Name = "ChronosBlinkTrailFxOut", DestinationId = id, CopyFromPrev = true })
			thread(DestroyOnDelay, { id }, 0.1 )
		end
		
		MapState.BlinkDropTrail = {}
	end
	local initialId = SpawnObstacle({ Name = "BlankObstacle", DestinationId = CurrentRun.Hero.ObjectId, Group = "Standing" })
	local blinkIds = { initialId }
	local blinkAnimationIds = {}
	local nextClipRegenTime  = GetWeaponDataValue({ Id = CurrentRun.Hero.ObjectId, WeaponName = "WeaponBlink", Property = "ClipRegenInterval" }) or 0
	local waitPeriod = nextClipRegenTime + (GetWeaponDataValue({ Id = CurrentRun.Hero.ObjectId, WeaponName = "WeaponBlink", Property = "BlinkDuration" }) or 0) - 0.08
	local startTime = _worldTime
	local maxTrailLength = 99 

	MapState.BlinkDropTrail = MapState.BlinkDropTrail or {}
	MapState.BlinkDropTrail[initialId] = blinkIds
	while MapState.BlinkDropTrail and MapState.BlinkDropTrail[initialId] and (_worldTime - startTime) < waitPeriod do
		wait (0.0666,  _PLUGIN.guid .. "." .. "ChronosStartBlinkTrailPresentation")
		local distance = GetDistance({ Id = blinkIds [#blinkIds], DestinationId = CurrentRun.Hero.ObjectId })
		if distance > 0 then
			local targetId = SpawnObstacle({ Name = "BlankObstacle", DestinationId = CurrentRun.Hero.ObjectId, Group = "Standing" })
			table.insert( blinkIds, targetId )
			--CreateAnimationsBetween({ Animation = "ChronosBlinkTrailFxIn", DestinationId = blinkIds [#blinkIds], Id = blinkIds [#blinkIds - 1], Stretch = true, UseZLocation = false, Group = "Standing", SetAnimation = true })
			if TableLength(blinkIds) > maxTrailLength then
				local lastItemId = table.remove( blinkIds, 1 )
				--SetAnimation({ Name = "ChronosBlinkTrailFxOut", DestinationId = lastItemId, CopyFromPrev = true })
				thread(DestroyOnDelay, { lastItemId }, 0.09 )
			end
		end
	end
	if MapState.BlinkDropTrail then
		MapState.BlinkDropTrail[ initialId ] = nil
	end
	local lastItemId = table.remove( blinkIds )
	Destroy({Id = lastItemId})
	local outDuration = 0.16 -- time to remove trail over
	local waitInterval = outDuration/#blinkIds
	local minWaitInterval = 0.06
	local skipInterval = 1
	local skipCounter = 0
	if waitInterval < minWaitInterval then
		local multiplier = math.ceil(minWaitInterval/waitInterval)
		waitInterval = waitInterval * multiplier
		skipInterval = multiplier
	end

	local finalAnchor = SpawnObstacle({ Name = "BlankObstacle", DestinationId = CurrentRun.Hero.ObjectId, Group = "Standing" })
	Attach({ Id = finalAnchor, DestinationId = CurrentRun.Hero.ObjectId })
	if GetDistance({ Id = finalAnchor, DestinationId = CurrentRun.Hero.ObjectId }) > 0 then
		--CreateAnimationsBetween({ Animation = "ChronosBlinkTrailFxIn", DestinationId = blinkIds [#blinkIds - 1], Id = finalAnchor, Stretch = true, UseZLocation = false, Group = "Standing", SetAnimation = true })
	end
	while not IsEmpty( blinkIds ) do
		while skipCounter < skipInterval do
			local lastItemId = table.remove( blinkIds, 1 )
			--SetAnimation({ Name = "ChronosBlinkTrailFxOut", DestinationId = lastItemId, CopyFromPrev = true })
			thread(DestroyOnDelay, { lastItemId }, 0.1 )
			skipCounter = skipCounter + 1
		end
		skipCounter = 0
		wait( waitInterval, _PLUGIN.guid .. "." .. "ChronosStartBlinkTrailPresentation")
	end
	Destroy({ Id = finalAnchor })
end

function mod.ChronosPlayerTeleport( weaponData, traitArgs, triggerArgs )
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 0, Duration = 0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	wait(0.4)
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 1, Duration = 0.0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
end

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

	import "text.lua"
	import "Animations.lua"
	import "DashBoons.lua"

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
			["MelinoeDashStart"] = "Enemy_Chronos_DashFire",
			["MelinoeDash"] = "Enemy_Chronos_DashPreFire",
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
					---ChargeCancelGraphic = "Enemy_Chronos_GrindPostFire",
					FireGraphic = "Enemy_Chronos_GrindFire",
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
					FireGraphic = "Enemy_Chronos_GrindFire",
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
					FireGraphic = "Enemy_Chronos_DashFire",
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

modutil.once_loaded.game(function()

	import "Costumes.lua"
	import "Hammers.lua"
	import "WeaponShop.lua"

	SetupRunData()
	--end

end)