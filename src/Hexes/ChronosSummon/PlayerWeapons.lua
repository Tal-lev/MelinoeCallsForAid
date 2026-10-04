local file = rom.path.combine(rom.paths.Content, 'Game/Weapons/PlayerWeapons.sjson')
sjson.hook(file, function(data)
	
	table.insert(data.Weapons,
	{
		Name = "WeaponChronosSummon",
		InheritFrom = "1_BaseDamagingWeapon",
		Control = "Shout",
		Projectile = "null",
		ShowFreeAimLine = false,
		AimLineAnimation = "null",
		ChargeStartAnimation = "Enemy_Chronos_CastSlowFire",
		ChargeCancelGraphic = "Enemy_Chronos_CastSlowFire",
		ChargeSound = "/SFX/Player Sounds/TimeSlowCharge",
		ChargeSoundFadeTime = 0.25,
		FireGraphic = "Enemy_Chronos_CastSlowFire",
		SelfVelocity = 0,
		ChargeRangeMultiplier = 1.0,
		ChargeSpeedMultiplier = 1.0,
		ChargeFinishFx = "null",
		FullClipRegen = true,
		Cooldown = 0.1,
		MinChargeToFire = 1.0,
		ChargeTime = 0.5,
		IgnoreOwnerAttackDisabled = true,
		ChargeCancelMovement = true,
		CancelMovement = true,
		RootOwnerWhileFiring = true,
		FullyAutomatic = false,
		AutoLock = false,
		LockTriggerForCharge = true,
		AllowExternalForceRelease = false,
		FireOnRelease = false,
		CanCancelDisables = false,
		SetCompleteAngleOnFire = false,
		PriorityFireRequest = true,
		Effects =
		{
			{
				Trigger = "Charging",
				Name = "ShieldSelfSpeed",
				Type = "SPEED",
				HaltOnStart = true,
				Duration = 0.02,
				Modifier = 0.2,
				Active = true,
				CanAffectInvulnerable = true,
			},
			{
				Trigger = "Charging",
				Name = "GunSelfSpeed",
				Duration = 0.02,
				DisableMove = true,
				Active = true,
				CanAffectInvulnerable = true,
			},
		},
	})

return data
end)