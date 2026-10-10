local file = rom.path.combine(rom.paths.Content, 'Game/Weapons/PlayerWeapons.sjson')
sjson.hook(file, function(data)
	
	table.insert(data.Weapons,
	{
		Name = "WeaponSpellChronosClock",
		InheritFrom = "1_BaseDamagingWeapon",
		Control = "Shout",
		Type = "GUN",
		Projectile = "null",
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
		},
	})

	table.insert(data.Weapons,
	{
		Name = "WeaponSpellChronosClockGodSent",
		InheritFrom = "WeaponSpellChronosClock",
	})

return data
end)