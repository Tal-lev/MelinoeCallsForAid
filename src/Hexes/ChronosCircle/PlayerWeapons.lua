local file = rom.path.combine(rom.paths.Content, 'Game/Weapons/PlayerWeapons.sjson')
sjson.hook(file, function(data)
	
	table.insert(data.Weapons,
	{
		Name = "WeaponSpellChronosCircle",
		InheritFrom = "1_BaseDamagingWeapon",
		Control = "Shout",
		Type = "GUN",
		Projectile = "null",
		--Projectile = "ChronosRadialOut",
		ChargeSound = "/SFX/Player Sounds/TimeSlowCharge",
		ChargeSoundFadeTime = 0.25,
		RootOwnerWhileFiring = true,
		BlockMoveInput = true,
		CancelMovement = true,
		FullyAutomatic = false,
		ChargeCancelMovement = true,
		FireSound = "null",
		ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
		ChargeCancelGraphic = "NPC_Chronos_Enlightened_Hover",
		FireGraphic = "null",
		ShowFreeAimLine = false,
		AimLineAnimation = "null",
		AutoLock = false,
		AutoLockRange = 1,
		AutoLockArcDistance = 90,
		ChargeTime = 0.6,
		MinChargeToFire = 1.0,
		BarrelLength = 80,
		FireOnRelease = false,
		LockTriggerTransferFromOnSwap = false,
		FailedToFireCooldownDuration = 0.15,
		TriggerReleaseGraphic = "null",
		NumProjectiles = 1,
		FullClipRegen = true,
		TriggerTapIgnoresCooldown = false,
		CanCancelDisables = false,
		AllowExternalForceRelease = false,
		SetCompleteAngleOnFire = false,
		SetCompleteAngleOnCharge = false,
		PriorityFireRequest = true,
		ManualAiming = false,
		Effects = 
		{
			{
				Name = "PolymorphCastDisable",
				DurationFrames = 12,
				DisableMove = true,
				DisableRotate = true,
				DisableAttack = true,
				Cancelable = false,
				RequestTriggerLock = true,
			},
			{
				Name = "PolymorphCastDisableCancellable",
				DurationFrames = 20,
				DisableMove = true,
				DisableRotate = false,
				DisableAttack = false,
				Cancelable = true,
				RequestTriggerLock = true,
			},
			{
				Trigger = "Charging",
				Name = "PolymorphChargeSpeed",
				Type = "SPEED",
				Duration = 0.35,
				Modifier = 0.80,
				Active = true,
				CanAffectInvulnerable = true,
			},
		},
	})

	table.insert(data.Weapons,
	{
		Name = "WeaponSpellChronosCircleGodSent",
		InheritFrom = "WeaponSpellChronosCircle",
		Projectile = "ChronosRadialOutArtemis",
	})

return data
end)