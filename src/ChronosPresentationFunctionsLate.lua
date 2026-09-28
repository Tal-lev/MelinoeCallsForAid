local ZagreusJourney = rom.mods['NikkelM-Zagreus_Journey']
if ZagreusJourney then 
    
    function mod.ChronosStartHadesRunSecretDoorPresentation(secretDoor, useAltDiveAnimation)
	game.HideCombatUI("StartHadesRunSecretDoorPresentation")
	AddInputBlock({ Name = "StartHadesRunSecretDoorPresentation" })
	game.ToggleCombatControl({ "AdvancedTooltip" }, false, "LeaveRoom")

	-- preserve audio/VO presentation
	game.CleanupCustomRoomSounds()
	PlaySound({ Name = "/SFX/Menu Sounds/ChaosRoomEnterExit" })
	--game.thread(game.PlayVoiceLines, game.HeroVoiceLines.ModsNikkelMHadesBiomes_StartNewHadesRunVoiceLines)
	Stop({ Id = game.CurrentRun.Hero.ObjectId })

	local unequipAnimation = game.GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
	SetAnimation({ Name = "Enemy_Chronos_CastFastFire", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 2 })
	game.wait(0.5)
	--SetAnimation({ Name = "Melinoe_Witchcraft_Start", DestinationId = game.CurrentRun.Hero.ObjectId, })

	game.thread(game.DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.7 }, })
	Flash({ Id = game.CurrentRun.Hero.ObjectId, Speed = 0.5, MinFraction = 0, MaxFraction = 1.0, Color = game.Color.White, Duration = 1.0, ExpireAfterCycle = false })
	AdjustColorGrading({ Name = "WeatherSnowCinders", Duration = 0.7 })

	game.wait(0.6)
	AdjustFullscreenBloom({ Name = "NewType09", Duration = 0.1 })
	game.wait(0.2)

	--SetAnimation({ Name = "Melinoe_Witchcraft_End", DestinationId = game.CurrentRun.Hero.ObjectId, })
	AdjustFullscreenBloom({ Name = "Off", Duration = 0.3 })
	PlaySound({ Name = "/Leftovers/SFX/PlayerRespawn" })

	-- She goes through the Oceanus-style sequence of jumping up and in
	PanCamera({ Id = secretDoor.ObjectId, Duration = 1.1, OffsetY = -50, EaseOut = 0 })
	game.wait(0.5)
	SetAnimation({ Name = "Player_Chronos_DashFire", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 0.5 })
	wait( 0.2 )
	SetAlpha({Id = CurrentRun.Hero.ObjectId, Fraction = 0, Duration = 0})
	CreateAnimation({ Name = "ChronosTeleportFxFront", DestinationId = CurrentRun.Hero.ObjectId })
	AdjustColorGrading({ Name = "RainSubtle", Duration = 0.4 })
	if useAltDiveAnimation then
		game.wait(0.53)
		PlaySound({ Name = "/Leftovers/SFX/PlayerJumpMedium" })
	else
		game.wait(0.35)
	end

	--PlaySound({ Name = "/VO/MelinoeEmotes/EmoteEvading" })
	local args = {}
	args.SuccessDistance = 20
	args.DisableCollision = true
	local exitPath = {}
	table.insert(exitPath, secretDoor.ObjectId)
	game.thread(game.MoveHeroAlongPath, exitPath, args)

	game.wait(0.2)
	PanCamera({ Id = secretDoor.ObjectId, Duration = 1.2, OffsetY = 85, Retarget = true })
	game.thread(game.DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.25 }, })
	if not useAltDiveAnimation then
		game.thread(game.SlightDescent)
	end

	-- Custom wait amount
	game.wait(0.2)
	game.FullScreenFadeOutAnimation("ModsNikkelMHadesBiomesRoomTransitionIn")

	game.WaitForSpeechFinished()

	RemoveInputBlock({ Name = "StartHadesRunSecretDoorPresentation" })
	game.ToggleCombatControl({ "AdvancedTooltip" }, true, "LeaveRoom")
    end

    ModUtil.Path.Wrap("NikkelM-Zagreus_Journey" .. "." .. "StartHadesRunSecretDoorPresentation", function(baseFunc, secretDoor, useAltDiveAnimation)
        if HeroHasTrait("ChronosAspect") then
            mod.ChronosStartHadesRunSecretDoorPresentation(secretDoor, useAltDiveAnimation)
        else
            baseFunc(secretDoor, useAltDiveAnimation)
        end
        
    end)

end