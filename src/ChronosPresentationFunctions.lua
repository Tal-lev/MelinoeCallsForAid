--Entering New Room by falling Oceanus/Olympus
function mod.ChronosRoomEntranceDrop( currentRun, currentRoom, args)
	AddInputBlock({ Name = "RoomEntrancePortal" })

	args = args or {}

	local dropShadow = SpawnObstacle({ Name = "DrownedChambersEntranceShadowFade", DestinationId =  currentRoom.HeroEndPoint, OffsetY = -12, OffsetX = 0 })
	SetAlpha({ Id = dropShadow, Fraction = 0.0, Duration = 0.01 })
	SetScale({ Id = dropShadow, Fraction = 0.00, Duration = 0.01 })
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 0 })
	if args.Sound ~= nil then
		PlaySound({ Name = args.Sound, Id = CurrentRun.Hero.ObjectId })
	end

	wait(0.03)
	SetAlpha({ Id = dropShadow, Fraction = 0.00, Duration = 0.8 })
	SetScale({ Id = dropShadow, Fraction = 0.10, Duration = 0.8 })

	if currentRoom.HeroEndPoint ~= nil then
		AngleTowardTarget({ Id = currentRun.Hero.ObjectId, DestinationId = currentRoom.HeroEndPoint })
		Teleport({ Id = currentRun.Hero.ObjectId, DestinationId = currentRoom.HeroEndPoint })
	end
	LockCamera({ Id = currentRun.Hero.ObjectId, Duration = 0, OffsetY = -150 })
	AdjustZLocation({ Id = currentRun.Hero.ObjectId, Distance = 1800, Duration = 0.0 })
	PanCamera({ Id = currentRun.Hero.ObjectId, Duration = 1.2, EaseIn = 0, Retarget = true})
	if args.StartZoomFraction then
		FocusCamera({ Fraction = args.StartZoomFraction, Duration = 0.01 })
	end
	wait(0.03)
	if args.StartZoomFraction then
		FocusCamera({ Fraction = currentRun.CurrentRoom.ZoomFraction, Duration = args.ZoomDuration, ZoomType = "Ease" })
	end

	ApplyUpwardForce({ Id = currentRun.Hero.ObjectId, Speed = -100 })
	FadeIn({ Duration = 0.0 })
	FullScreenFadeInAnimation( "RoomTransitionOut_Down" )
	--SetAnimation({ Name = "Melinoe_Drop_Exit_End", DestinationId = CurrentRun.Hero.ObjectId })

	wait(0.3)

	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 1.0 })

	wait(0.03)

	thread( PlayVoiceLines, currentRoom.Encounter.EnterVoiceLines or currentRoom.EnterVoiceLines, true )
	thread( PlayVoiceLines, GlobalVoiceLines[currentRoom.EnterGlobalVoiceLines], true )
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 0 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	wait (0.33)
	SetAnimation({ Name = args.LandingAnimation or "Melinoe_Drop_Entrance_Fire", DestinationId = CurrentRun.Hero.ObjectId })
	SetAlpha({ Id = dropShadow, Fraction = 0, Duration = 0.03 })
	ShakeScreen({ Speed = 150, Distance = 6, Duration = 0.15, FalloffSpeed = 500, Angle = 90 })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.18, Duration = 0.8 }, } )
	PlaySound({ Name = "/Leftovers/SFX/BallLand", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/SFX/FootstepsWheatHeavy2", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/SFX/FootstepsWheatHeavy2", Id = CurrentRun.Hero.ObjectId, Delay = 0.2 })
	CreateAnimation({ Name = "DustPuffBNoDecal", DestinationId = CurrentRun.Hero.ObjectId })
	--PlaySound({ Name = "/Leftovers/SFX/BigSplashRing", Id = CurrentRun.Hero.ObjectId })
	RemoveInputBlock({ Name = "RoomEntrancePortal" })
	
	wait( args.IntroHoldDuration or 0 )
end

--Entering room from chaos portal
function mod.ChronosRoomEntrancePortal( currentRun, currentRoom, args )
	args = args or {}

	AddInputBlock({ Name = "RoomEntrancePortal" })

	local dropShadow = SpawnObstacle({ Name = "DrownedChambersEntranceShadowFade", DestinationId =  currentRoom.HeroEndPoint, OffsetY = -12, OffsetX = 0 })
	SetAlpha({ Id = dropShadow, Fraction = 0, Duration = 0.01 })
	SetAlpha({ Id = CurrentRun.Hero.ObjectId, Fraction = 0, Duration = 0 })
	SetScale({ Id = dropShadow, Fraction = 0.02, Duration = 0.01 })
	wait(0.03)
	--SetAlpha({ Id = dropShadow, Fraction = 0.80, Duration = 0.8 })
	SetScale({ Id = dropShadow, Fraction = 0.10, Duration = 0.8 })

	if currentRoom.HeroEndPoint ~= nil then
		AngleTowardTarget({ Id = currentRun.Hero.ObjectId, DestinationId = currentRoom.HeroEndPoint })
		Teleport({ Id = currentRun.Hero.ObjectId, DestinationId = currentRoom.HeroEndPoint })
	end
	LockCamera({ Id = currentRun.Hero.ObjectId, Duration = 0, OffsetY = -150 })
	AdjustZLocation({ Id = currentRun.Hero.ObjectId, Distance = 1800, Duration = 0.0 })
	PanCamera({ Id = currentRun.Hero.ObjectId, Duration = 1.2, EaseIn = 0, Retarget = true})
	wait(0.03)

	ApplyUpwardForce({ Id = currentRun.Hero.ObjectId, Speed = -100 })
	FadeIn({ Duration = 0.0 })
	FullScreenFadeInAnimation( "RoomTransitionOut_Down" )
	--SetAnimation({ Name = "Melinoe_Drop_Exit_End", DestinationId = CurrentRun.Hero.ObjectId })

	wait(0.3)

	

	wait(0.03)

	thread( PlayVoiceLines, currentRoom.Encounter.EnterVoiceLines or currentRoom.EnterVoiceLines, true )
	thread( PlayVoiceLines, GlobalVoiceLines[currentRoom.EnterGlobalVoiceLines], true )

	if not args.SkipLocationBanner then
		RoomEntranceDisplayLocationText( currentRoom )
	end
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 0 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })

	wait( 0.33 )
	--SetAnimation({ Name = "Melinoe_Drop_Entrance_Fire", DestinationId = CurrentRun.Hero.ObjectId })
	SetAlpha({ Id = dropShadow, Fraction = 0, Duration = 0.03 })
	ShakeScreen({ Speed = 150, Distance = 6, Duration = 0.15, FalloffSpeed = 500, Angle = 90 })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.18, Duration = 0.8 }, } )
	PlaySound({ Name = "/Leftovers/SFX/BallLand", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/SFX/FootstepsWheatHeavy2", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/SFX/FootstepsWheatHeavy2", Id = CurrentRun.Hero.ObjectId, Delay = 0.2 })
	CreateAnimation({ Name = "DustPuffBNoDecal", DestinationId = CurrentRun.Hero.ObjectId })
	--PlaySound({ Name = "/Leftovers/SFX/BigSplashRing", Id = CurrentRun.Hero.ObjectId })
	RemoveInputBlock({ Name = "RoomEntrancePortal" })
	


	Destroy({ Id = dropShadow })
end

--Function when player dies as chronos
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

-- Chronos Entering Chaos Gate 
function mod.ChronosLeaveRoomSecretDoorPresentation(currentRun, secretDoor)
	HideCombatUI( "LeaveRoomSecretDoorPresentation" )
	AddInputBlock({ Name = "LeaveRoomSecretDoorPresentation" })
	ToggleCombatControl( { "AdvancedTooltip" } , false, "LeaveRoom" )

	local nextRoomData = RoomData[secretDoor.Room.Name] or secretDoor.Room
	
	SetAudioEffectState({ Name = "SpellCharge", Value = 0 })
	-- preserve audio/VO presentation
	CleanupCustomRoomSounds()
	PlaySound({ Name = "/SFX/Menu Sounds/ChaosRoomEnterExit" })
	thread( PlayVoiceLines, HeroVoiceLines.SecretUnlockedVoiceLines )
	thread( InCombatText, secretDoor.ObjectId, "SecretPassageOpened", 1 )
	Stop({ Id = CurrentRun.Hero.ObjectId })

	if GameState.TextLinesRecord.ChaosFirstPickUp then
		--local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
		SetAnimation({ Name = "Enemy_Chronos_CastFastFire", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 2 })
		wait( 0.5 )
		--SetAnimation({ Name = "Melinoe_Witchcraft_Start", DestinationId = CurrentRun.Hero.ObjectId, })
	else
		wait( 2.0 )
		--local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
		SetAnimation({ Name = "Enemy_Chronos_CastFastFire", DestinationId = CurrentRun.Hero.ObjectId })
		wait( 1.0 )
		--SetAnimation({ Name = "Melinoe_Witchcraft_Start", DestinationId = CurrentRun.Hero.ObjectId, })
		wait( 0.9 )
	end

	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.7 }, } )
	Flash({ Id = CurrentRun.Hero.ObjectId, Speed = 0.5, MinFraction = 0, MaxFraction = 1.0, Color = Color.White, Duration = 1.0, ExpireAfterCycle = false })
	AdjustColorGrading({ Name = secretDoor.EntranceColorGrade or "Chaos", Duration = 0.7 })

	wait(0.6)

	-- The 'damage hit' happens here
	if secretDoor.HealthCost ~= nil and secretDoor.HealthCost > 0 then
		CreateAnimation({ Name = "SacrificeHealthFx", DestinationId = CurrentRun.Hero.ObjectId })
		PlaySound({ Name = "/VO/MelinoeEmotes/EmoteHurt", Id = CurrentRun.Hero.ObjectId })
		thread( DisplayPlayerDamageText, { triggeredById = CurrentRun.Hero.ObjectId, PercentMaxDealt = secretDoor.HealthCost/CurrentRun.Hero.MaxHealth, DamageAmount = secretDoor.HealthCost } )
	end
	AdjustFullscreenBloom({ Name = "NewType09", Duration = 0.1 })

	wait( 0.2 )

	--SetAnimation({ Name = "Melinoe_Witchcraft_End", DestinationId = CurrentRun.Hero.ObjectId, })
	AdjustFullscreenBloom({ Name = "Off", Duration = 0.3 })
	PlaySound({ Name = "/Leftovers/SFX/PlayerRespawn" })

	-- She goes through the Oceanus-style sequence of jumping up and in
	PanCamera({ Id = secretDoor.ObjectId, Duration = 1.1, OffsetY = -50, EaseOut = 0 })	

	wait( 0.3 )	

	SetAnimation({ Name = "Player_Chronos_DashFire", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 0.5 })
	wait( 0.2 )
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 0, Duration = 0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })

	wait( 0.35 )

	PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading" })
	local args = {}
	args.SuccessDistance = 20
	args.DisableCollision = true
	local exitPath = {}
	table.insert( exitPath, secretDoor.ObjectId )
	thread( MoveHeroAlongPath, exitPath, args )	
	
	wait( 0.2 )
	
	PanCamera({ Id = secretDoor.ObjectId, Duration = 1.2, OffsetY = 85, Retarget = true})
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.25 }, } )
	thread( SlightDescent )
	
	local doorHeal = GetDoorHealAmount( CurrentRun )
	if doorHeal > 0 then
		thread( OnPlayerHealed, CurrentRun.Hero, { ActualHealAmount = doorHeal } )
	end

	FullScreenFadeOutAnimation( nextRoomData.LeavePrevRoomWipeAnimation or currentRun.CurrentRoom.LeaveWipeAnimation )

	WaitForSpeechFinished()

	RemoveInputBlock({ Name = "LeaveRoomSecretDoorPresentation" })
	ToggleCombatControl( { "AdvancedTooltip" } , true, "LeaveRoom" )
end

--Chronos Dash Blink
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

-- Chronos Dash 
function mod.ChronosPlayerTeleport( weaponData, traitArgs, triggerArgs )
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 0, Duration = 0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	wait(0.4)
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 1, Duration = 0.0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
end
