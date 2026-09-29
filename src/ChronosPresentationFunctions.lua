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
	SetAnimation({ Name = "NPC_Chronos_Enlightened_Hover", DestinationId = currentRun.Hero.ObjectId })
	wait(0.03)

	thread( PlayVoiceLines, currentRoom.Encounter.EnterVoiceLines or currentRoom.EnterVoiceLines, true )
	thread( PlayVoiceLines, GlobalVoiceLines[currentRoom.EnterGlobalVoiceLines], true )
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 0 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	wait (0.33)
	--SetAnimation({ Name = args.LandingAnimation or "Melinoe_Drop_Entrance_Fire", DestinationId = CurrentRun.Hero.ObjectId })
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

	--PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading" })
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

function mod.ChronosExitBiomeGRoomPresentation( currentRun, exitDoor )
	AddInputBlock({ Name = "LeaveRoomPresentation" })
	ToggleCombatControl( { "AdvancedTooltip" } , false, "LeaveRoom" )
	HideCombatUI( "ExitBiomeGRoomPresentation" )
	LeaveRoomAudio( currentRun, exitDoor )

	if exitDoor ~= nil then
		if exitDoor.AdditionalIcons ~= nil and not IsEmpty( exitDoor.AdditionalIcons ) then
			Destroy({ Ids = GetAllValues( exitDoor.AdditionalIcons ) })
			exitDoor.AdditionalIcons = nil
		end
		DestroyDoorRewardPresenation( exitDoor )
		if exitDoor.ExitDoorOpenAnimation ~= nil then
			SetAnimation({ DestinationId = exitDoor.ObjectId, Name = exitDoor.ExitDoorOpenAnimation })
		end
	end

	thread( PlayVoiceLines, HeroVoiceLines.OceanusExitVoiceLines, true )

	Stop({ Id = CurrentRun.Hero.ObjectId })
	wait (0.01)

	PlaySound({ Name = "/SFX/Menu Sounds/GeneralWhooshMENULoudLow" })
	local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 0.5 })
	--SetAnimation({ Name = unequipAnimation, DestinationId = CurrentRun.Hero.ObjectId })
	PanCamera({ Id = exitDoor.ObjectId, Duration = 1.1, OffsetY = -50, EaseOut = 0 })
	
	wait( 0.5 )	

	--SetAnimation({ Name = "Melinoe_Drop_Exit_Start", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 0.5 })
	SetThingProperty({ DestinationId = CurrentRun.Hero.ObjectId, Property = "Tallness", Value = 400 })

	wait( 0.35 )

	PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading" })
	local args = {}
	args.SuccessDistance = 20
	args.DisableCollision = true
	local exitPath = {}
	table.insert( exitPath, exitDoor.ObjectId )
	thread( MoveHeroAlongPath, exitPath, args )	
	
	wait( 0.20 )
	
	thread( SlightDescent )
	PanCamera({ Id = exitDoor.ObjectId, Duration = 1.2, OffsetY = 85, Retarget = true})
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.25 }, } )

	FullScreenFadeOutAnimation( "RoomTransitionIn_Down" )

	WaitForSpeechFinished()

	RemoveInputBlock({ Name = "LeaveRoomPresentation" })
	ToggleCombatControl( { "AdvancedTooltip" } , true, "LeaveRoom" )	
end

function mod.ChronosEnterBiomeGRoomPresentation( currentRun, currentRoom )
	AddInputBlock({ Name = "BiomeGRoomEntrance" })
	local roomIntroSequenceDuration = currentRoom.IntroSequenceDuration or RoomData.BaseRoom.IntroSequenceDuration or 0.0
	AdjustFullscreenBloom({ Name = "NewType09" })
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 1.0 })
	wait(0.03)
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
	wait(0.3)

	
	AdjustFullscreenBloom({ Name = "Off", Duration = 1.0 })
	wait(0.03)

	thread( PlayVoiceLines, currentRoom.Encounter.EnterVoiceLines or currentRoom.EnterVoiceLines, true )
	thread( PlayVoiceLines, GlobalVoiceLines[currentRoom.EnterGlobalVoiceLines], true )

	thread(DelayedRemoveInputBlock, 0.35, "BiomeGRoomEntrance")
	
	wait (0.33)
	ShakeScreen({ Speed = 150, Distance = 6, Duration = 0.15, FalloffSpeed = 500, Angle = 90 })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.18, Duration = 0.8 }, } )
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 1.0 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "MelEntranceSplash", DestinationId = CurrentRun.Hero.ObjectId })
end

--Exiting Special Room P
function mod.ChronosOlympusSkyExitPresentation( currentRun, exitDoor )

	CurrentRun.CurrentRoom.NextRoomEntranceFunctionNameOverride = exitDoor.NextRoomEntranceFunctionName
	CurrentRun.CurrentRoom.NextRoomEntranceFunctionArgsOverride = exitDoor.NextRoomEntranceFunctionArgs
	AddInputBlock({ Name = "OlympusLeaveRoomPresentation" })
	
	ToggleCombatControl( { "AdvancedTooltip" } , false, "LeaveRoom" )
	HideCombatUI( "OlympusLeaveRoomPresentation" )

	local exitDoorId = exitDoor.ObjectId
	local door = MapState.OfferedExitDoors[exitDoorId]

	Stop({ Id = CurrentRun.Hero.ObjectId })
	waitUnmodified (0.01)
	PlayInteractAnimation( exitDoorId, { Animation = GetEquippedWeaponValue( "WeaponInteractAnimation" ) } )

	if door ~= nil then
		thread( DestroyDoorRewardPresenation, door )
		if door.ExitDoorOpenAnimation ~= nil then
			SetAnimation({ DestinationId = exitDoorId, Name = door.ExitDoorOpenAnimation })
			thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.4 }, } )
			-- wait( 0.7 )
		end
	end

	local heroExitIds = GetIdsByType({ Name = "HeroExit" })
	local heroExitPointId = GetClosest({ Id = exitDoorId, DestinationIds = heroExitIds, Distance = 800 })
	if heroExitPointId <= 0 and exitDoorId ~= nil then
		heroExitPointId = exitDoorId
	end

	thread( PlayVoiceLines, HeroVoiceLines.OlympusSkyExitVoiceLines, false )

	local args = {}
	args.SuccessDistance = 20
	args.DisableCollision = true
	local exitPath = {}
	table.insert( exitPath, exitDoor.ObjectId )
	thread( MoveHeroAlongPath, exitPath, args )

	waitUnmodified (0.01)

	local jumpSound = PlaySound({ Name = "/SFX/BombFusePreExplode", Id = exitDoor.ObjectId })
	local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
	--SetAnimation({ Name = unequipAnimation, DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 1.8 })
	Flash({ Id = exitDoorId, Speed = 0.65, MinFraction = 0, MaxFraction = 1.0, Color = Color.White, ExpireAfterCycle = true})

	waitUnmodified( 0.5 )

	PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading", Id = CurrentRun.Hero.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId, })
	PanCamera({ Id = exitDoor.ObjectId, Duration = 1.5, OffsetY = -400, Retarget = true })
	
	waitUnmodified( 0.18 )

	PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading", Id = CurrentRun.Hero.ObjectId })

	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.25 }, } )
	--SetAnimation({ Name = "MelinoeCrossCastHold", DestinationId = CurrentRun.Hero.ObjectId })
	ShakeScreen({ Speed = 400, Distance = 4, Angle = 0, FalloffSpeed = 1000, Duration = 1.0 })
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })

	waitUnmodified( 0.05 )
	PlaySound({ Name = "/SFX/OlympusJumpLaunchOnly" })
	StopSound({ Id = jumpSound, Duration = 0.2 })
	jumpSound = nil

	AdjustZLocation({ Id = CurrentRun.Hero.ObjectId, Distance = 1400, Duration = 0.35, })

	waitUnmodified( 0.12 )

	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0, Duration = 0.2 })
	PlaySound({ Name = "/Leftovers/World Sounds/MapZoomInShortHigh" })

	LeaveRoomAudio( currentRun, exitDoor )
	if exitDoor.Room.ExitTowardsFunctionName ~= nil then
		CallFunctionName( exitDoor.Room.ExitTowardsFunctionName, exitDoor, exitDoor.Room.ExitTowardsFunctionArgs )
	end

	if door ~= nil and door.ExitDoorCloseAnimation ~= nil then
		SetAnimation({ DestinationId = exitDoorId, Name = door.ExitDoorCloseAnimation })
		thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.2 }, } )
	end

	IgnoreGravity({ Id = CurrentRun.Hero.ObjectId })
	FullScreenFadeOutAnimation( "RoomTransitionIn_Up" )

	WaitForSpeechFinished()

	RemoveInputBlock({ Name = "OlympusLeaveRoomPresentation" })
	ToggleCombatControl( { "AdvancedTooltip" } , true, "LeaveRoom" )
end

--Chronos Entrance P
function mod.ChronosOlympusSkyEntrancePresentation( currentRun, currentRoom, args )
	args = args or {}
	SessionMapState.SkyEntranceInProgress = true
	currentRoom.BlockAggro = true
	local notifyName = args.NotifyName or "SkyEntranceInput"
	currentRoom.EntrancePresentationNotifyName = notifyName

	local startPointOptions = GetIds({ Name = "SkySpawnPoints" }) or { currentRoom.HeroEndPoint }
	local startPoint = nil

	if ActiveEnemies ~= nil and not IsEmpty(ActiveEnemies) then
		startPoint = GetClosest({ Id = GetRandomValue(ActiveEnemies).ObjectId, DestinationIds = startPointOptions,  })
	else
		startPoint = GetRandomValue(startPointOptions)
	end

	AddInputBlock({ Name = "OlympusSkyEntrancePresentation" })
	SetPlayerInvulnerable( "OlympusSkyEntrance" )
	if not args.NoInput then
		ToggleCombatControl( CombatControlsDefaults, false, "OlympusSkyEntrancePresentation" )
	end
	local roomIntroSequenceDuration = currentRoom.IntroSequenceDuration or RoomData.BaseRoom.IntroSequenceDuration or 0.0
	AdjustFullscreenBloom({ Name = "NewType09" })

	if startPoint ~= nil then
		AngleTowardTarget({ Id = currentRun.Hero.ObjectId, DestinationId = startPoint })
		Teleport({ Id = currentRun.Hero.ObjectId, DestinationId = startPoint })
	end
	LockCamera({ Id = currentRun.Hero.ObjectId, Duration = 0, OffsetY = -150 })
	PanCamera({ Id = currentRun.Hero.ObjectId, Duration = 1.2, EaseIn = 0, Retarget = true})
	AdjustZoom({ Fraction = 0.5, LerpTime = 0.0 })
	wait(0.03)
	local airSoundId = PlaySound({ Name = "/Leftovers/Ambience/WhippingWindLoopLoud", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/SFX/GasBomb", Id = CurrentRun.Hero.ObjectId })

	ApplyUpwardForce({ Id = currentRun.Hero.ObjectId, Speed = -100 })
	FadeIn({ Duration = 0.0 })
	FullScreenFadeInAnimation( "RoomTransitionOut_Down" )

	RemoveInputBlock({ Name = "OlympusSkyEntrancePresentation" })
	RemoveInputBlock({ Name = "StartRoom" })
	RemoveInputBlock({ Name = "StartRoomPresentation" })

	-- Start these earlier than normal in this case
	local encounterData = EncounterData[currentRoom.Encounter.Name] or currentRoom.Encounter
	RunEventsGeneric( encounterData.EncounterSpawnsStartEvents, currentRoom.Encounter )
	currentRoom.Encounter.RanEncounterSpawnsStartEvents = true

	SetAnimation({ Name = "HeroTouchdownCircle", DestinationId = CurrentRun.Hero.ObjectId })
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 0.0 })
	SetUnitProperty({ Property = "MoveGraphic", Value = nil, DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "CollideWithUnits", Value = false, DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "CollideWithObstacles", Value = false, DestinationId = CurrentRun.Hero.ObjectId })

	AdjustZoom({ Fraction = currentRoom.ZoomFraction, LerpTime = 3.65 })

	wait(1.0) -- buffer before you can dash-to-slam-down

	if not GameState.SkyEntranceInputSuccess and GameState.SkyEntranceIntroduced then
		CheckObjectiveSet("SkyEntranceInput")
	end

	SetWeaponProperty({ WeaponName = "WeaponBlink", DestinationId = CurrentRun.Hero.ObjectId, Property = "Enabled", Value = false })
	ToggleCombatControl( { "Rush" }, true, "OlympusSkyEntrancePresentation" )
	NotifyOnControlPressed({ Names = { "Rush" }, Notify = notifyName, Timeout = 2.35 })


	thread( PlayVoiceLines, HeroVoiceLines.OlympusSkyEntranceVoiceLines, false )

	waitUntil( notifyName )

	if not _eventTimeoutRecord[notifyName] then
		thread( MarkObjectiveComplete, "SkyEntranceInput" )
		GameState.SkyEntranceInputSuccess = true
	else
		thread( MarkObjectiveFailed, "SkyEntranceInput" )
	end
	GameState.SkyEntranceIntroduced = true

	Stop({ Id = currentRun.Hero.ObjectId })
	AddInputBlock({ Name = "OlympusSkyEntrancePresentation" })

	if IsLocationBlocked({ Id = currentRun.Hero.ObjectId }) then
		LockCamera({ Id = currentRun.Hero.ObjectId, Duration = 0.3 })
		local destinationId = GetClosest({ Id = currentRun.Hero.ObjectId, DestinationIds = GetIds({ Name = "SpawnPoints" }) })
		if destinationId == nil or destinationId == 0 then
			destinationId = currentRoom.HeroEndPoint
		end
		Teleport({ Id = currentRun.Hero.ObjectId, DestinationId = destinationId })
		wait( 0.15 )
	end

	wait( 0.01 )

	PlaySound({ Name = "/SFX/OlympusJumpSlam", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/VO/MelinoeEmotes/EmoteAttackingFierce", Id = CurrentRun.Hero.ObjectId })

	StopSound({ Id = airSoundId, Duration = 0.2 })

	AdjustZLocation({ Id = currentRun.Hero.ObjectId, Distance = 500, Duration = 0.0 })
	ApplyUpwardForce({ Id = currentRun.Hero.ObjectId, Speed = -2000 })
	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 0.0, Duration = 0.0 })
	--SetAnimation({ Name = "Melinoe_Drop_Exit_End", DestinationId = CurrentRun.Hero.ObjectId })

	wait( 0.05 )

	SetAlpha({ Id = currentRun.Hero.ObjectId, Fraction = 1.0, Duration = 0.25 })
	SetAnimation({ Name = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	StopAnimation({ DestinationId = CurrentRun.Hero.ObjectId, Names = { "HeroTouchdownCircleA", "HeroTouchdownCircleShadow", "HeroTouchdownFx" } })

	SetUnitProperty({ Property = "CollideWithUnits", Value = true, DestinationId = CurrentRun.Hero.ObjectId })
	SetUnitProperty({ Property = "CollideWithObstacles", Value = true, DestinationId = CurrentRun.Hero.ObjectId })
	--SetUnitProperty({ Property = "MoveGraphic", Value = "MelinoeRun", DestinationId = CurrentRun.Hero.ObjectId })
	AdjustFullscreenBloom({ Name = "Off", Duration = 1.0 })

	wait( 0.03 )

	thread( PlayVoiceLines, currentRoom.Encounter.EnterVoiceLines or currentRoom.EnterVoiceLines, true )
	thread( PlayVoiceLines, GlobalVoiceLines[currentRoom.EnterGlobalVoiceLines], true )

	wait( 0.1 )

	currentRoom.BlockAggro = false
	CreateProjectileFromUnit({ Name = "HeroSkyTouchdown", Id = currentRun.Hero.ObjectId, DestinationId = currentRun.Hero.ObjectId, FireFromTarget = true })
	
	SetAlpha({ Id = dropShadow, Fraction = 0, Duration = 0.03 })
	ShakeScreen({ Speed = 150, Distance = 6, Duration = 0.15, FalloffSpeed = 500, Angle = 90 })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.18, Duration = 0.8 }, } )
	
	-- Aggro all units
	for id, enemy in pairs( ShallowCopyTable( ActiveEnemies ) ) do
		if not enemy.IsDead and not enemy.IsAggroed then
			enemy.AggroWhenReady = true
			enemy.ForcedWeaponInterrupt = true
			enemy.AggroReactionTime = nil
			enemy.AggroReactionTimeMin = 0.05
			enemy.AggroReactionTimeMax = 0.3
			SetThreadWait(enemy.AIThreadName, 0.01)
			notifyExistingWaiters(enemy.AINotifyName)
		end
	end

	wait( 0.4 )

	RemoveInputBlock({ Name = "OlympusSkyEntrancePresentation" })
	ToggleCombatControl( CombatControlsDefaults, true, "OlympusSkyEntrancePresentation" )
	SetWeaponProperty({ WeaponName = "WeaponBlink", DestinationId = CurrentRun.Hero.ObjectId, Property = "Enabled", Value = true })

	wait( 0.05 )
	
	SessionMapState.SkyEntranceInProgress = nil
	SetPlayerVulnerable( "OlympusSkyEntrance" )
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

--Interact Animation
function mod.ChronosPlayInteractAnimation( interactableObjectId, args )
	args = args or {}

	--if not args.SkipInputBlock then
	--	AddTimerBlock( CurrentRun, "MelinoeInteractEquip" )
	--	AddInputBlock({ Name = "MelinoeInteractEquip" })
	--end

	--SetAnimation({ Name = "NPC_Chronos_Enlightened_Hover", DestinationId = CurrentRun.Hero.ObjectId })
	--AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = interactableObjectId })
	thread( DoRumble, { { ScreenPreWait = 0.02, RightFraction = 0.17, Duration = 0.1 }, } )
	--if interactableObjectId then
	--	waitUnmodified( 0.08 )
	--end
	--if not args.SkipInputBlock then
	--	thread( RemoveInteractAnimationInputBlock )
	--end
	waitUnmodified( 0.08 )
end

function mod.ChronosPlayUnequipAnimation( args )
	wait( 0.35 )
	local animation = "NPC_Chronos_Enlightened_Hover"
	if animation ~= nil then
		--SetAnimation({ Name = animation, DestinationId = CurrentRun.Hero.ObjectId })
		wait( 0.34 )
		CreateAnimation({ Name = "HecateTeleportFxFrontFast", DestinationId = CurrentRun.Hero.ObjectId, OffsetZ = 40, Scale = 0.60, DrawGroup = "FX_Standing_Add" })
	end
end

function mod.ChronosPreNarrativeUnequipAnimation()
	if SessionMapState.WeaponsDisabled then
		return false
	end
	Halt({ Id = CurrentRun.Hero.ObjectId })
	EndRamWeapons({ Id = CurrentRun.Hero.ObjectId })
	local animation = "NPC_Chronos_Enlightened_Hover"
	--SetAnimation({ Name = animation, DestinationId = CurrentRun.Hero.ObjectId })

end

function mod.ChronosPickupWeaponKitInteractPresentation( weaponKit )
	--AddInputBlock({ Name = "MelinoeInteractEquip" })
	--SetAnimation({ Name = "Melinoe_InteractToEquip", DestinationId = CurrentRun.Hero.ObjectId })
	--CreateAnimation({ Name = "ItemGet_Weapon", DestinationId = CurrentRun.Hero.ObjectId })
	--AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = weaponKit.ObjectId })
	thread( DoRumble, { { ScreenPreWait = 0.02, RightFraction = 0.17, Duration = 0.2 }, } )
	--if interactableObjectId then
	--	wait( 0.08 )
	--	CreateAnimation({ Name = "ItemGet_Weapon", DestinationId = CurrentRun.Hero.ObjectId, Scale = 1.0 })
	--end
	--thread( RemoveInteractAnimationInputBlock )
	wait( 0.11 )
	--CreateAnimation({ Name = "ItemGet_Weapon", DestinationId = CurrentRun.Hero.ObjectId, Scale = 1.5 })
end

--Fishing animation
function mod.ChronosFishingStartPresentation( source, args )

	for massiveTraitName, v in pairs(SessionMapState.ReadiedMassiveAttacks) do
		local traitData = TraitData[massiveTraitName]
		StopAnimation({ Name = traitData.BlastReadyVfx, DestinationId = CurrentRun.Hero.ObjectId })
		StopAnimation({ Name = traitData.BlastReadyDarkVfx, DestinationId = CurrentRun.Hero.ObjectId })
	end

	local fishingPointId = args.FishingPointId
	local fishingAnimationPointId = args.FishingAnimationPointId

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = fishingPointId })
	local unequipAnim = GetEquippedWeaponValue( "UnequipAnimation" )
	if unequipAnim ~= nil then
		SetAnimation({ Name = unequipAnim, DestinationId = CurrentRun.Hero.ObjectId,  })
	end
	wait(1.0)

	thread( PlayVoiceLines, HeroVoiceLines.FishingInitiatedVoiceLines, true )

	SetAnimation({ Name = "Enemy_Chronos_SwingLeftPreFire", DestinationId = CurrentRun.Hero.ObjectId })
	wait(0.65)

	Destroy({ Id = fishingPointId })
	--SetAlpha({ Id = fishingPointId, Fraction = 0 })
	SetAlpha({ Id = args.FishingPointId, Fraction = 0.0 })
	BlockVfx({ DestinationId = args.FishingPointId })

	local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
	local roomData = RoomData[currentRoom.Name] or currentRoom

	SetAnimation({ Name = "FishingBobberIdle", DestinationId = fishingAnimationPointId })
	CreateAnimation({ Name = "FishingSplashA", DestinationId = fishingAnimationPointId })
	PlaySound({ Name = roomData.FishingStartSound or "/Leftovers/SFX/FishingPlunk", Id = fishingAnimationPointId })
	thread( DoRumble, { { ScreenPreWait = 0.06, RightFraction = 0.18, Duration = 0.2 }, } )

	local showedObjective = CheckObjectiveSet("Fishing")
	HideCombatUI("Fishing")
	if GameState.FishingSuccesses ~= nil and GameState.FishingSuccesses >= 1 then
		thread( InCombatTextArgs, { Text = "Fishing_Hint", TargetId = CurrentRun.Hero.ObjectId, OffsetY = -205, SkipRise = true, SkipFlash = true, Duration = 2.5, PreDelay = 1.0, ShadowScaleX = 0.66 } )
	else
		thread( InCombatTextArgs, { Text = "Fishing_Hint_NewPlayer", TargetId = CurrentRun.Hero.ObjectId, OffsetY = -205, SkipRise = true, SkipFlash = true, Duration = 2.5, PreDelay = 1.0, ShadowScaleX = 0.66 } )
	end

	if roomData.ZoomFraction ~= nil then
		AdjustZoom({ Fraction = roomData.ZoomFraction + 0.03, LerpTime = 2.5 })
	else
		AdjustZoom({ Fraction = 1.03, LerpTime = 2.5 })
	end

	thread( FishingInProgressPresentation )
end

function mod.ChronosFishingInProgressPresentation()

	local fidgetInterval = RandomFloat( FishingData.FidgetInterval.Min, FishingData.FidgetInterval.Max )	

	wait ( fidgetInterval )

	if CurrentRun.Hero.FishingInput then
		return
	end
	--SetAnimation({ Name = "Melinoe_Fishing_Fidget", DestinationId = CurrentRun.Hero.ObjectId })

	wait ( 10.5 - fidgetInterval )

	if CurrentRun.Hero.FishingInput then
		return
	end
	thread( PlayVoiceLines, HeroVoiceLines.FishingInProgressVoiceLines, true )

end

function mod.ChronosFishingEndPresentation( fishData, fishingAnimationPointId, args )

	SetAlpha({ Id = fishingAnimationPointId, Fraction = 0, Duration = 0 })

	local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
	local roomData = RoomData[currentRoom.Name] or currentRoom

	if fishData ~= nil and args.Success then

		GameState.FishingSuccesses = (GameState.FishingSuccesses or 0) + 1
		CurrentRun.FishingSuccesses = (CurrentRun.FishingSuccesses or 0) + 1
		GameState.FishCaught[fishData.Name] = (GameState.FishCaught[fishData.Name] or 0) + 1
		CurrentRun.FishCaught[fishData.Name] = (CurrentRun.FishCaught[fishData.Name] or 0) + 1
		if args.UsedFamiliar then
			GameState.FishingSuccessesFamiliar = (GameState.FishingSuccessesFamiliar or 0) + 1
			CurrentRun.FishingSuccessesFamiliar = (CurrentRun.FishingSuccessesFamiliar or 0) + 1
		else
			GameState.FishingSuccessesManual = (GameState.FishingSuccessesManual or 0) + 1
			CurrentRun.FishingSuccessesManual = (CurrentRun.FishingSuccessesManual or 0) + 1
		end

		thread( MarkObjectiveComplete, "Fishing" )
		thread( PlayVoiceLines, fishData.FishCaughtVoiceLines, nil, nil, args )

		CreateAnimation({ Name = "FishingSplashA", DestinationId = fishingAnimationPointId })
		CreateAnimation({ Name = "FishingSplashB", DestinationId = fishingAnimationPointId })
		
		--Shake({ Id = CurrentRun.Hero.ObjectId, Distance = 2, Speed = 200, Duration = 0.35 })
		PlaySound({ Name = "/SFX/CriticalHit" })
		if args.UsedFamiliar then
			PlaySound({ Name = "/SFX/Familiars/CatMeowExclaim2", Id = MapState.FamiliarUnit.ObjectId })
		else
			PlaySound({ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingMelee" })
		end
		thread( DoRumble, { { ScreenPreWait = 0.04, RightFraction = 0.28, Duration = 0.4 }, } )
		wait(0.1)
		PlaySound({ Name = "/SFX/Player Sounds/ZagreusWhooshDropIn" })

		wait(0.2)
		--Shake({ Id = CurrentRun.Hero.ObjectId, Distance = 2, Speed = 200, Duration = 0.35 })
		PlaySound({ Name = "/SFX/Enemy Sounds/Megaera/MegDeathSplash", Id = fishingAnimationPointId })
		--PlaySound({ Name = "/VO/MelinoeEmotes/EmoteCharging" })
		if not args.UsedFamiliar then
			SetAnimation({ Name = "Enemy_Chronos_SwingLeftFire", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 2 })
		end
		thread( DoRumble, { { ScreenPreWait = 0.7, LeftFraction = 0.35, Duration = 0.4 }, } )
		
		local resourceTimes = 1
		if RandomChance( GetTotalHeroTraitValue("DoubleToolRewardChance") * GetTotalHeroTraitValue( "LuckMultiplier", { IsMultiplier = true })) then
			resourceTimes = resourceTimes + 1
		end
		
		if resourceTimes > 1 then
			thread( ChaosRewardIncreasedPresentation, fishingAnimationPointId )
			waitUnmodified( 0.25, RoomThreadName )
		end
		AddResource( fishData.Name, 1 * resourceTimes, "Fishing" )

		thread( GrantElementFromTool, "ToolFishingRod2" )

		PlaySound({ Name = "/Leftovers/SFX/VictoryScreenUpdateSFX", Delay = 1 })

		local fishingText = "Fishing_SuccessGoodTitle"

		if not CurrentRun.Hero.IsDead then
			thread( PlayVoiceLines, fishData.FishIdentifiedVoiceLines, nil, nil, args )
		end

		thread( DisplayInfoBanner, nil, {
			Icon = fishData.Name,
			TitleText = fishingText,
			SubtitleText = "Fishing_SuccessSubtitle",
			SubtitleData = { LuaKey = "TempTextData", LuaValue = fishData },
			IconOffsetY = 6,
			SubtitleOffsetY = 60,
			HighlightIcon = true,
			IconMoveSpeed = 0.1,
			IconScale = 1.0,
			AdditionalAnimation = "FishCatchPresentationSparkles",
			IconBackingAnimationName = "LocationBackingIrisSmallSubtitleIn",
			IconBackingAnimationOutName = "LocationBackingIrisSmallSubtitleOut",
			AnimationName = "InfoBannerFishingIn",
			AnimationOutName = "InfoBannerFishingOut",
		})

		CheckCodexUnlock( "Fish", fishData.Name )

		wait ( 0.22 )
		ApplyForce({ Id = CurrentRun.Hero.ObjectId, Speed = 640, Angle = GetAngleBetween({ DestinationId = CurrentRun.Hero.ObjectId, Id = fishingAnimationPointId}) })

		wait( 0.88 )

		if MapState.FamiliarUnit ~= nil and MapState.FamiliarUnit.Name == "CatFamiliar" then
			PlaySound({ Name = MapState.FamiliarUnit.VictorySound or "/EmptyCue", Id = MapState.FamiliarUnit.ObjectId })
		end

	else
		GameState.FishingFails = (GameState.FishingFails or 0) + 1
		CurrentRun.FishingFails = (CurrentRun.FishingFails or 0) + 1

		thread( MarkObjectiveFailed, "Fishing" )
		--Shake({ Id = CurrentRun.Hero.ObjectId, Distance = 2, Speed = 200, Duration = 0.35 })
		SetAnimation({ Name = "Enemy_Chronos_BattleOutro_Start", DestinationId = CurrentRun.Hero.ObjectId })
		PlaySound({ Name = roomData.FishingFailSound or "/Leftovers/SFX/BigSplashRing", Delay = 0.3 })
		PlaySound({ Name = "/SFX/CrappyRewardDrop", Delay = 0.5 })

		PlaySound({ Name = "/Leftovers/SFX/ImpCrowdLaugh" })
		thread( DoRumble, { { ScreenPreWait = 0.02, RightFraction = 0.17, Duration = 0.7 }, } )

		if CurrentRun.Hero.FishingState == "TooLate" then
			thread( PlayVoiceLines, HeroVoiceLines.FishNotCaughtTooLateVoiceLines, true )
		elseif CurrentRun.Hero.FishingState == "WayLate" then
			thread( PlayVoiceLines, HeroVoiceLines.FishNotCaughtWayTooLateVoiceLines, true )
		else
			thread( PlayVoiceLines, HeroVoiceLines.FishNotCaughtVoiceLines, true )
		end
		thread( InCombatTextArgs, { TargetId = fishingAnimationPointId, Text = "Fishing_Missed", Duration = 2.0, PreDelay = 0.6 } )
		wait( 1.1 )
	end
	CurrentRun.Hero.FishingStarted = false
	RemoveTimerBlock( CurrentRun, "Fishing" )
	UnfreezePlayerUnit("Fishing")
	UnblockCombatUI("Fishing")
	
	for massiveTraitName, v in pairs(SessionMapState.ReadiedMassiveAttacks) do
		local traitData = TraitData[massiveTraitName]
		CreateAnimation({ Name = traitData.BlastReadyVfx, DestinationId = CurrentRun.Hero.ObjectId })
		CreateAnimation({ Name = traitData.BlastReadyDarkVfx, DestinationId = CurrentRun.Hero.ObjectId })
	end

	if roomData.ZoomFraction ~= nil then
		AdjustZoom({ Fraction = roomData.ZoomFraction, LerpTime = 1.5 })
	else
		AdjustZoom({ Fraction = 1.0, LerpTime = 1.5 })
	end
	if not MapState.InOverlook then
		PanCamera({ Id = CurrentRun.Hero.ObjectId, Duration = 0.5 })
	end
	if not roomData.IgnoreFishingCameraClamps then
		local cameraClamps = roomData.CameraClamps or GetDefaultClampIds()
		SetCameraClamp({ Ids = cameraClamps, SoftClamp = roomData.SoftClamp })
	end
end

--Mining
function mod.ChronosPickaxeStartPresentation( source, args, user )	
	thread( PlayVoiceLines, HeroVoiceLines.PickaxeUseInProgressVoiceLines, true )

	SetAnimation({ Name = "Enemy_Chronos_SwingLeftPreFire", DestinationId = user.ObjectId })

	AngleTowardTarget({ Id = user.ObjectId, DestinationId = source.ObjectId })

	--PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading", Id = user.ObjectId })

	waitUnmodified( 0.06, user.PreHarvestThreadName )
	PlaySound({ Name = "/SFX/Enemy Sounds/Chronos/EmoteAttackingRanged", Id = user.ObjectId })

	SetAnimation({ Name = "Enemy_Chronos_SwingLeftFire", DestinationId = user.ObjectId })
	waitUnmodified( 0.1, user.PreHarvestThreadName )
	CreateAnimation({ Name = "HarvestPickaxeSwing", DestinationId = user.ObjectId })
	waitUnmodified( 0.1, user.PreHarvestThreadName )

	CreateAnimation({ Name = "OreHarvestSpark", DestinationId = source.ObjectId })
	CreateAnimation({ Name = "OreHarvestSpike", DestinationId = source.ObjectId, Group = "FX_Standing_Add" })

	Shake({ Id = source.ObjectId, Distance = 2, Speed = 300, Duration = 0.32 })
	PlaySound({ Name = "/SFX/PickaxeHitSFX", Id = source.ObjectId })

	waitUnmodified( 0.3, user.PreHarvestThreadName )
end

--Shoveling
function mod.ChronosShovelStartPresentation( source, args, user )

	AddOnDamagedFunction( user, "ShovelPointUseCanceled" )
	user.OnHostilePolymorphFunctionName = "ShovelPointUseCanceled"
	user.PreHarvestThreadName = "ShovelStartPresentation"

	waitUnmodified( 0.02, user.PreHarvestThreadName )

	SetAnimation({ Name = "Enemy_Chronos_GrindPreFire", DestinationId = user.ObjectId })	
	AngleTowardTarget({ Id = user.ObjectId, DestinationId = source.ObjectId })
	waitUnmodified(0.5, user.PreHarvestThreadName)
	CreateAnimation({ Name = "ShovelDirtIn", DestinationId = user.ObjectId })
	waitUnmodified(0.17, user.PreHarvestThreadName)

	SetAnimation({ Name = "Enemy_Chronos_GrindFire", DestinationId = user.ObjectId })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.7, Duration = 0.2 }, } )	
	ShakeScreen({ Speed = 300, Distance = 6, Duration = 0.1, FalloffSpeed = 10000, Angle = 90 })
	waitUnmodified( RandomFloat(0.3, 0.3), user.PreHarvestThreadName )

	thread( PlayVoiceLines, HeroVoiceLines.ShovelVoiceLines, true )

	Shake({ Id = user.ObjectId, Speed = 100, Distance = 1, Duration = 0.3 })
	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.5, Duration = 0.5 }, } )
	waitUnmodified( 0.3, user.PreHarvestThreadName )

	Shake({ Id = user.ObjectId, Speed = 200, Distance = 2, Duration = 0.2 })
	waitUnmodified( 0.2, user.PreHarvestThreadName )

	SetAnimation({ Name = "Enemy_Chronos_GrindPostFire", DestinationId = user.ObjectId })
	waitUnmodified( 0.1, user.PreHarvestThreadName )

	ShakeScreen({ Speed = 300, Distance = 6, Duration = 0.1, FalloffSpeed = 10000, Angle = 90 })	
	RemoveOnDamagedFunction( user, "ShovelPointUseCanceled" )
	user.OnHostilePolymorphFunctionName = nil
	CreateAnimation({ Name = "ShovelDirtOutSpray", DestinationId = source.ObjectId })
	waitUnmodified( 0.12 )

end

function mod.ChronosHarvestStartPresentation( source, args, user )
	args = args or {}

	AddOnDamagedFunction( user, "HarvestPointUseCanceled" )
	user.OnHostilePolymorphFunctionName = "HarvestPointUseCanceled"
	user.PreHarvestThreadName = "HarvestStartPresentation"

	SetAnimation({ Name = "Enemy_Chronos_DashPreFire", DestinationId = user.ObjectId })
	AngleTowardTarget({ Id = user.ObjectId, DestinationId = source.ObjectId })

	waitUnmodified( 0.1, user.PreHarvestThreadName )

	-- thread( PlayVoiceLines, args.VoiceLines or HeroVoiceLines.HarvestVoiceLines, true )

	waitUnmodified( 0.1, user.PreHarvestThreadName )

	RemoveOnDamagedFunction( user, "HarvestPointUseCanceled" )
	user.OnHostilePolymorphFunctionName = nil

	PlaySound({ Name = source.PickUpSound or "/SFX/ResourceGatherSFX", Id = user.ObjectId })

	SetAnimation({ Name = "Player_Chronos_DashFire", DestinationId = user.ObjectId })
	waitUnmodified(0.1)

	if args.PresentationFunctionName ~= nil then
		CallFunctionName( args.PresentationFunctionName, source, args, user )
	else
		UsedHarvestPointPresentation( source, args, user )
	end
	
end

function mod.ChronosFamiliarHarvestStartPresentation( source, args, user )
	local familiar = MapState.FamiliarUnit
	familiar.BlockVictoryPresentation = true

	local originalCanGuard = familiar.CanGuard
	familiar.CanGuard = false

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = familiar.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/World Sounds/Caravan Interior/FloatingRockInteract", Id = CurrentRun.Hero.ObjectId })

	PolecatFamiliarStopAI( familiar )

	thread( PlayVoiceLines, HeroVoiceLines.FamiliarHarvestVoiceLines, true )

	waitUnmodified( 0.25 )
	PlaySound({ Name = familiar.EquipSound or "/EmptyCue", Id = familiar.ObjectId })
	--SetAnimation({ Name = "MelinoeCrossCast", DestinationId = CurrentRun.Hero.ObjectId })
	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = source.ObjectId, })
	if not familiar.Burrowing then
		CreateAnimation({ Name = "ItemGet_Tool", DestinationId = familiar.ObjectId, OffsetZ = -60 })
	end

	waitUnmodified( 0.15 )

	thread( BackPlayerUpForHarvest, user, source )

	local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
	local roomData = RoomData[currentRoom.Name] or currentRoom

	if not IsWithinDistance({ Id = familiar.ObjectId, DestinationId = source.ObjectId, Distance = familiar.MinDistanceToTeleportForHarvestPoints })
		or ( roomData.PolecatFamiliarMovementRequiresLineOfSight and not HasLineOfSight({ Id = familiar.ObjectId, DestinationId = source.ObjectId, StopsUnits = true }) )
		or familiar.Burrowing then

		if not familiar.Burrowing then
			SetAnimation({ Name = "Familiar_Polecat_DropIn_Exit", DestinationId = familiar.ObjectId })
			wait(0.2)

			-- teleport to the closest spawn point first
			FamiliarTeleportPresentation( familiar )
			SetAlpha({ Id = familiar.ObjectId, Fraction = 0.0, Duration = 0.2 })
			wait( 0.21 )
		end

		local spawnPointId = GetClosest({ Id = source.ObjectId, DestinationName = "SpawnPoints", DestinationIds = GetIdsByType({ Name = "FamiliarPoint" }), RequiredLocationUnblocked = true, })
		if spawnPointId == 0 then
			-- fall back to the hero's position if no spawn points exist
			spawnPointId = CurrentRun.Hero.ObjectId
		end
		Teleport({ Id =  familiar.ObjectId, DestinationId = spawnPointId })
		AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
		FamiliarTeleportPresentation( familiar )
		SetAnimation({ Name = "Familiar_Polecat_DropIn_Enter", DestinationId = familiar.ObjectId })
		SetAlpha({ Id = familiar.ObjectId, Fraction = 1.0, Duration = 0.2 })
		wait( 0.18 )

		PolecatFamiliarMoveToLocation( familiar, { Id = source.ObjectId, SuccessDistance = 130 } )
	else
		-- speed up for non-teleport version
		local initialSpeed = GetUnitDataValue({ Id = familiar.ObjectId, Property = "Speed" })
		SetUnitProperty({ Property = "Speed", Value = 900, DestinationId = familiar.ObjectId })
		PolecatFamiliarMoveToLocation( familiar, { Id = source.ObjectId, SuccessDistance = 130 } )
		SetUnitProperty({ Property = "Speed", Value = initialSpeed, DestinationId = familiar.ObjectId })
	end

	waitUnmodified(0.05)
	AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
	waitUnmodified(0.05)
	SetAnimation({ DestinationId = familiar.ObjectId, Name = "Familiar_Polecat_Harvest" })
	waitUnmodified(0.3)

	PlaySound({ Name = source.PickUpSound or "/SFX/ResourceGatherSFX", Id = user.ObjectId })
	thread( UsedHarvestPointPresentation, source, args, user )
	familiar.BlockVictoryPresentation = false
	familiar.CanGuard = originalCanGuard
end

function mod.ChronosFamiliarShovelStartPresentation( source, args, user )

	local familiar = MapState.FamiliarUnit

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = familiar.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/World Sounds/Caravan Interior/FloatingRockInteract", Id = CurrentRun.Hero.ObjectId })

	HoundFamiliarStopAI( familiar )

	thread( PlayVoiceLines, HeroVoiceLines.FamiliarHarvestVoiceLines, true )

	waitUnmodified( 0.25 )
	PlaySound({ Name = familiar.EquipSound or "/EmptyCue", Id = familiar.ObjectId })
	--SetAnimation({ Name = "MelinoeCrossCast", DestinationId = CurrentRun.Hero.ObjectId })
	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = source.ObjectId, })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = familiar.ObjectId, OffsetZ = -60 })

	waitUnmodified( 0.15 )

	if familiar.HarvestSound ~= nil then
		PlaySound({ Name = familiar.HarvestSound, Id = familiar.ObjectId })
	end

	thread( BackPlayerUpForHarvest, user, source )

	local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
	local roomData = RoomData[currentRoom.Name] or currentRoom

	if not IsWithinDistance({ Id = familiar.ObjectId, DestinationId = source.ObjectId, Distance = familiar.MinDistanceToTeleportForShovelPoints })
		or ( roomData.HoundFamiliarMovementRequiresLineOfSight and not HasLineOfSight({ Id = familiar.ObjectId, DestinationId = source.ObjectId, StopsUnits = true }) ) then

		SetAnimation({ Name = "Familiar_Hound_DropIn_Exit", DestinationId = familiar.ObjectId })
		wait(0.2)

		-- teleport to the closest spawn point first
		FamiliarTeleportPresentation( familiar )
		SetAlpha({ Id = familiar.ObjectId, Fraction = 0.0, Duration = 0.2 })
		wait( 0.21 )

		local spawnPointId = GetClosest({ Id = source.ObjectId, DestinationName = "SpawnPoints", DestinationIds = GetIdsByType({ Name = "FamiliarPoint" }), RequiredLocationUnblocked = true, })
		if spawnPointId == 0 then
			-- fall back to the hero's position if no spawn points exist
			spawnPointId = CurrentRun.Hero.ObjectId
		end
		Teleport({ Id =  familiar.ObjectId, DestinationId = spawnPointId })
		AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
		FamiliarTeleportPresentation( familiar )
		SetAnimation({ Name = "Familiar_Hound_DropIn_Enter", DestinationId = familiar.ObjectId })
		SetAlpha({ Id = familiar.ObjectId, Fraction = 1.0, Duration = 0.2 })
		wait( 0.18 )
	end

	AdjustFamiliarPathfinding( familiar, { NodeDistance = 16, NodeSuccessDistance = 8 } )
	HoundFamiliarMoveToLocation( familiar, { Id = source.ObjectId, KeepStandingOnFinish = true, SuccessDistance = 100 } )
	AdjustFamiliarPathfinding( familiar, { ResetNodeDistances = true })

	waitUnmodified(0.05)
	AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
	waitUnmodified(0.05)
	SetAnimation({ DestinationId = familiar.ObjectId, Name = "Familiar_Hound_Dig_ShovelPoint" })
	waitUnmodified(0.18)
	CreateAnimation({ Name = "ShovelDirtInSprayHound", DestinationId = familiar.ObjectId })
	waitUnmodified(0.35)
	CreateAnimation({ Name = "ShovelDirtOutSprayHound", DestinationId = source.ObjectId })
	waitUnmodified(0.4)
end

function mod.ChronosFamiliarPickaxeStartPresentation( source, args, user )

	local familiar = MapState.FamiliarUnit
	familiar.BlockVictoryPresentation = true

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = familiar.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/World Sounds/Caravan Interior/FloatingRockInteract", Id = CurrentRun.Hero.ObjectId })

	RavenFamiliarStopAI( familiar )

	thread( PlayVoiceLines, HeroVoiceLines.FamiliarHarvestVoiceLines, true )

	waitUnmodified( 0.25 )
	PlaySound({ Name = familiar.EquipSound or "/EmptyCue", Id = familiar.ObjectId })
	--SetAnimation({ Name = "MelinoeCrossCast", DestinationId = CurrentRun.Hero.ObjectId })
	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = source.ObjectId, })
	if familiar.TargetHeight ~= familiar.SkyHeight then
		CreateAnimation({ Name = "ItemGet_Tool", DestinationId = familiar.ObjectId, OffsetZ = -60 })
	end

	waitUnmodified( 0.15 )

	if familiar.HarvestSound ~= nil then
		PlaySound({ Name = familiar.HarvestSound, Id = familiar.ObjectId })
	end

	thread( BackPlayerUpForHarvest, user, source )

	if GetDistance({ Id = familiar.ObjectId, DestinationId = source.ObjectId }) >= familiar.MinDistanceToTeleportWhenMining or familiar.TargetHeight == familiar.SkyHeight then
		if familiar.TargetHeight ~= familiar.SkyHeight then
			-- teleport to the closest spawn point first
			FamiliarTeleportPresentation( familiar )
			SetAlpha({ Id = familiar.ObjectId, Fraction = 0.0, Duration = 0.2 })
			wait( 0.21 )
		end

		local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
		local roomData = RoomData[currentRoom.Name] or currentRoom

		local spawnPointId = GetClosest({ Id = source.ObjectId, DestinationName = "SpawnPoints", DestinationIds = GetIdsByType({ Name = "FamiliarPoint" }), RequiredLocationUnblocked = true, })
		if spawnPointId == 0 then
			-- fall back to the hero's position if no spawn points exist
			spawnPointId = CurrentRun.Hero.ObjectId
		end
		Teleport({ Id =  familiar.ObjectId, DestinationId = spawnPointId })
		AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
		FamiliarTeleportPresentation( familiar )
		SetAnimation({ Name = "Familiar_Raven_Idle", DestinationId = familiar.ObjectId })
		familiar.TargetHeight = familiar.FlightHeight
		AdjustZLocation({ Id = familiar.ObjectId, Distance = familiar.FlightHeight - GetZLocation({ Id = familiar.ObjectId }), Duration = 0 })
		SetAlpha({ Id = familiar.ObjectId, Fraction = 1.0, Duration = 0.2 })
		wait( 0.18 )
	end

	RavenFamiliarMoveToLocation( familiar, { Id = source.ObjectId, KeepFlyingOnFinish = true, SuccessDistance = 120, NotifyDistance = 150 } )
	waitUnmodified(0.05)
	AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = source.ObjectId })
	waitUnmodified(0.26)
	SetAnimation({ DestinationId = familiar.ObjectId, Name = "Familiar_Raven_Mine" })
	waitUnmodified(0.41)
	CreateAnimation({ Name = "OreHarvestSpark", DestinationId = source.ObjectId })
	CreateAnimation({ Name = "OreHarvestSpike", DestinationId = source.ObjectId, Group = "FX_Standing_Add" })
	familiar.BlockVictoryPresentation = false

end

function mod.ChronosFamiliarExorcismStartPresentation( source, args, user )

	-- PlaySound({ Name = "/SFX/Enemy Sounds/Exalted/ExaltedPreAttackFlashSoundBow" })

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = MapState.FamiliarUnit.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/World Sounds/Caravan Interior/FloatingRockInteract", Id = CurrentRun.Hero.ObjectId })

	thread( PlayVoiceLines, HeroVoiceLines.FamiliarHarvestVoiceLines, true )

	waitUnmodified( 0.25 )
	PlaySound({ Name = MapState.FamiliarUnit.EquipSound or "/EmptyCue", Id = MapState.FamiliarUnit.ObjectId })
	--SetAnimation({ Name = "MelinoeCrossCast", DestinationId = CurrentRun.Hero.ObjectId })
	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = source.ObjectId, })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = MapState.FamiliarUnit.ObjectId, OffsetZ = -60 })

	waitUnmodified( 0.15 )

	if MapState.FamiliarUnit.HarvestSound ~= nil then
		PlaySound({ Name = MapState.FamiliarUnit.HarvestSound, Id = MapState.FamiliarUnit.ObjectId })
	end

	PlaySound({ Name = "/SFX/ThanatosAttackBell" })
	thread( BackPlayerUpForHarvest, user, source )
	FrogFamiliarMoveToLocation( MapState.FamiliarUnit )
	waitUnmodified( 0.35 )

	if MapState.FamiliarUnit.EffortSound ~= nil then
		PlaySound({ Name = MapState.FamiliarUnit.EffortSound, Id = MapState.FamiliarUnit.ObjectId })
	end
	SetAnimation({ DestinationId = MapState.FamiliarUnit.ObjectId, Name = "Familiar_Frog_Exorcise" })

	AdjustColorGrading({ Name = "Team09", Duration = 0.3 })
	ShakeScreen({ Speed = 400, Distance = 3, Duration = 1.0, FalloffSpeed = 2000 })
	AdjustRadialBlurStrength({ Fraction = 0.5, Duration = 0.3 })
	AdjustRadialBlurDistance({ Fraction = 1.15, Duration = 1.1 })
	AngleTowardTarget({ Id = MapState.FamiliarUnit.ObjectId, DestinationId = source.ObjectId })
	PlaySound({ Name = "/Leftovers/Menu Sounds/EmoteAscended" })
	waitUnmodified( 1.1 )

	AdjustColorGrading({ Name = "Off", Duration = 0.3 })
	AdjustRadialBlurStrength({ Fraction = 0, Duration = 0.3 })
	AdjustRadialBlurDistance({ Fraction = 0, Duration = 0.3  })
end

function mod.ChronosFamiliarFishingPresentation( fishingPoint )

	AddInputBlock({ Name = "MelFamiliarFishing" })
	AddTimerBlock( CurrentRun, "Fishing" )

	local familiar = MapState.FamiliarUnit

	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = familiar.ObjectId })
	--SetAnimation({ Name = "Melinoe_CrossCast_Start_Fast", DestinationId = CurrentRun.Hero.ObjectId })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = "/Leftovers/World Sounds/Caravan Interior/FloatingRockInteract", Id = CurrentRun.Hero.ObjectId })
	PlaySound({ Name = familiar.EquipSound or "/EmptyCue", Id = familiar.ObjectId })

	CatFamiliarStopAI( familiar )

	thread( PlayVoiceLines, HeroVoiceLines.FamiliarHarvestVoiceLines, true )

	waitUnmodified( 0.25 )
	--SetAnimation({ Name = "MelinoeCrossCast", DestinationId = CurrentRun.Hero.ObjectId })
	AngleTowardTarget({ Id = CurrentRun.Hero.ObjectId, DestinationId = fishingPoint.ObjectId, })
	CreateAnimation({ Name = "ItemGet_Tool", DestinationId = MapState.FamiliarUnit.ObjectId, OffsetZ = -60 })

	waitUnmodified( 0.15 )
	
	if GetDistance({ Id = familiar.ObjectId, DestinationId = fishingPoint.ObjectId }) >= FamiliarData.CatFamiliar.MinDistanceToTeleportForFishing then
		SetAnimation({ Name = "Familiar_Cat_DropIn_Exit", DestinationId = familiar.ObjectId })
		familiar.Awake = true
		wait(0.2)
		-- teleport to the closest spawn point first
		FamiliarTeleportPresentation( familiar )
		SetAlpha({ Id = familiar.ObjectId, Fraction = 0.0, Duration = 0.2 })
		wait( 0.2 )
		AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = fishingPoint.ObjectId })
		PlaySound({ Name = "/SFX/Familiars/CatGrumpy", Id = familiar.ObjectId })

		local currentRoom = CurrentHubRoom or CurrentRun.CurrentRoom
		local roomData = RoomData[currentRoom.Name] or currentRoom

		local spawnPointId = GetClosest({ Id = fishingPoint.ObjectId, DestinationName = "SpawnPoints", DestinationIds = GetIdsByType({ Name = "FamiliarPoint" }), RequiredLocationUnblocked = true, })
		if spawnPointId == 0 then
			-- fall back to the hero's position if no spawn points exist
			spawnPointId = CurrentRun.Hero.ObjectId
		end
		Teleport({ Id =  familiar.ObjectId, DestinationId = spawnPointId })
		FamiliarTeleportPresentation( familiar )
		SetAnimation({ Name = "Familiar_Cat_DropIn_Enter", DestinationId = familiar.ObjectId })
		SetAlpha({ Id = familiar.ObjectId, Fraction = 1.0, Duration = 0.2 })
		wait( 0.18 )
	end

	CatFamiliarMoveToLocation( familiar, { Id = fishingPoint.ObjectId, StayAwake = true, SuccessDistance = 150, OnFailGoToNearestToGoal = true } )
	wait( 0.02 )
	AngleTowardTarget({ Id = familiar.ObjectId, DestinationId = fishingPoint.ObjectId })
	SetAnimation({ Name = "Familiar_Cat_Fish_Start", DestinationId = familiar.ObjectId })
	wait( RandomFloat( 1.0, 1.5 ) )

	SetAnimation({ Name = "Familiar_Cat_Fish_Swipe", DestinationId = familiar.ObjectId })
	
	wait( 0.2 )

	RemoveInputBlock({ Name = "MelFamiliarFishing" })
	RemoveTimerBlock( CurrentRun, "Fishing" )

	SetAnimation({ Name = "FishingPointUsed", DestinationId = fishingPoint.ObjectId })

	PlaySound({ Name = "/SFX/Player Sounds/ZagreusGunReloadCompleteFlashLucifer" })

	ReenableFamiliar( familiar, { InitialDelay = 1.0, MoveToRandomLocation = true } )

end
--Hug Hecate
--Hug Persephone
