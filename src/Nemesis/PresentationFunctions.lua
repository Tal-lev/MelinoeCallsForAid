--Mining
function mod.NemesisPickaxeStartPresentation( source, args, user )	
	thread( PlayVoiceLines, HeroVoiceLines.PickaxeUseInProgressVoiceLines, true )

	SetAnimation({ Name = "MelinoePickAxeMineStart", DestinationId = user.ObjectId })

	AngleTowardTarget({ Id = user.ObjectId, DestinationId = source.ObjectId })

	PlaySound({ Name = "/SFX/Enemy Sounds/Nemesis/EmoteAttacking", Id = user.ObjectId })

	waitUnmodified( 0.06, user.PreHarvestThreadName )
	PlaySound({ Name = "/SFX/Player Sounds/ZagreusSwordOverhead", Id = user.ObjectId })

	SetAnimation({ Name = "MelinoePickAxeMineSwing", DestinationId = user.ObjectId })
	waitUnmodified( 0.1, user.PreHarvestThreadName )
	CreateAnimation({ Name = "HarvestPickaxeSwing", DestinationId = user.ObjectId })
	waitUnmodified( 0.1, user.PreHarvestThreadName )

	CreateAnimation({ Name = "OreHarvestSpark", DestinationId = source.ObjectId })
	CreateAnimation({ Name = "OreHarvestSpike", DestinationId = source.ObjectId, Group = "FX_Standing_Add" })

	Shake({ Id = source.ObjectId, Distance = 2, Speed = 300, Duration = 0.32 })
	PlaySound({ Name = "/SFX/PickaxeHitSFX", Id = source.ObjectId })

	waitUnmodified( 0.3, user.PreHarvestThreadName )
end

function mod.NemesisLeaveRoomSecretDoorPresentation( currentRun, secretDoor )
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
		local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
		SetAnimation({ Name = unequipAnimation, DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 2 })
		wait( 0.5 )
		SetAnimation({ Name = "Melinoe_Witchcraft_Start", DestinationId = CurrentRun.Hero.ObjectId, })
	else
		wait( 2.0 )
		local unequipAnimation = GetEquippedWeaponValue("UnequipAnimation") or "MelinoeIdleWeaponless"
		SetAnimation({ Name = unequipAnimation, DestinationId = CurrentRun.Hero.ObjectId })
		wait( 1.0 )
		SetAnimation({ Name = "Melinoe_Witchcraft_Start", DestinationId = CurrentRun.Hero.ObjectId, })
		wait( 0.9 )
	end

	thread( DoRumble, { { ScreenPreWait = 0.02, Fraction = 0.15, Duration = 0.7 }, } )
	Flash({ Id = CurrentRun.Hero.ObjectId, Speed = 0.5, MinFraction = 0, MaxFraction = 1.0, Color = Color.White, Duration = 1.0, ExpireAfterCycle = false })
	AdjustColorGrading({ Name = secretDoor.EntranceColorGrade or "Chaos", Duration = 0.7 })

	wait(0.6)

	-- The 'damage hit' happens here
	if secretDoor.HealthCost ~= nil and secretDoor.HealthCost > 0 then
		CreateAnimation({ Name = "SacrificeHealthFx", DestinationId = CurrentRun.Hero.ObjectId })
		PlaySound({ Name = "/SFX/Enemy Sounds/Nemesis/EmoteHurt", Id = CurrentRun.Hero.ObjectId }) -- Nemesis Changed
		thread( DisplayPlayerDamageText, { triggeredById = CurrentRun.Hero.ObjectId, PercentMaxDealt = secretDoor.HealthCost/CurrentRun.Hero.MaxHealth, DamageAmount = secretDoor.HealthCost } )
	end
	AdjustFullscreenBloom({ Name = "NewType09", Duration = 0.1 })

	wait( 0.2 )

	SetAnimation({ Name = "Melinoe_Witchcraft_End", DestinationId = CurrentRun.Hero.ObjectId, })
	AdjustFullscreenBloom({ Name = "Off", Duration = 0.3 })
	PlaySound({ Name = "/Leftovers/SFX/PlayerRespawn" })

	-- She goes through the Oceanus-style sequence of jumping up and in
	PanCamera({ Id = secretDoor.ObjectId, Duration = 1.1, OffsetY = -50, EaseOut = 0 })	

	wait( 0.5 )	

	SetAnimation({ Name = "Melinoe_Drop_Exit_Start", DestinationId = CurrentRun.Hero.ObjectId, SpeedMultiplier = 0.5 })

	wait( 0.35 )

	PlaySound({ Name = "/SFX/Enemy Sounds/Nemesis/EmoteEvading" }) -- Nemesis Changed
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