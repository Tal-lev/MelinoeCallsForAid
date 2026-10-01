OverwriteTableKeys( WeaponData, {
	WeaponChronosSummon = 
	{
		InheritFrom = { "BaseSpell", },
		CompleteObjectivesOnFire = { "SpellSummonPrompt" },
		SpawnName = "TimeElemental2",
		Duration = 12,
		MaxSummons = 1,
		OnFiredFunctionNames = { "SpellReloadStarted", "SpellFire" },
		ManaSpendCost = 40,
		SummonMultipliers = 
		{
			MaxHealthMultiplier = 100,
			SpeedMultiplier = 1.6,
			ScaleMultiplier = 1.2,
			DamageMultiplier = 1.5,
		},

		OnChargeFunctionArgs = 
		{
			TimeSlowModifier = 0.001,
			Duration = 0.6,
			DisableBlink = true,
			Force = true,
		},

		FireScreenshake = { Distance = 4, Speed = 400, FalloffSpeed = 1400, Duration = 0.16, Angle = 225, ScreenPreWait = 0.19 },

		ChargeScreenshake = { Distance = 2, Speed = 100, FalloffSpeed = 2000, Duration = 1.0 },
		ChargeCameraMotion = { ZoomType = "Ease", Fraction = 1.08, Duration = 0.7, HoldDuration = 0.0, RestoreDefaultDuration = 0.4 },

		ChargeRumbleParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.14, Duration = 1.4 },
		},		

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/SummonFire" },
				{ Name = "/VO/MelinoeEmotes/EmoteCastingFierce" },
			},
		},
	},
})