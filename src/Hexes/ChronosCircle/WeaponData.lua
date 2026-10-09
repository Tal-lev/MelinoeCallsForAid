OverwriteTableKeys( WeaponData, {
	WeaponSpellChronosCircle = 
	{
		InheritFrom = { "BaseSpell", },
		--CompleteObjectivesOnFire = { "SpellPolymorphPrompt" },
		OnFiredFunctionNames = { "SpellReloadStarted", "SpellFire" },
		ManaSpendCost = 60,

		OnChargeFunctionArgs = 
		{
			TimeSlowModifier = 0.001,
			Duration = 0.6,
			DisableBlink = true,
			Force = true,
		},

		FireScreenshake = { Distance = 4, Speed = 400, FalloffSpeed = 1400, Duration = 0.16, Angle = 225, ScreenPreWait = 0.19 },

		ChargeScreenshake = { Distance = 2, Speed = 100, FalloffSpeed = 2000, Duration = 1.5 },
		ChargeCameraMotion = { ZoomType = "Ease", Fraction = 1.08, Duration = 0.7, HoldDuration = 0.0, RestoreDefaultDuration = 0.4 },

		ChargeRumbleParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.14, Duration = 1.4 },
		},

		HitScreenshake = { Distance = 4, Speed = 1000, Duration = 0.10, FalloffSpeed = 3000 },

		HitRumbleParameters =
		{
			{ ScreenPreWait = 0.0, RightFraction = 0.3, Duration = 0.18 },
		},

		HitSimSlowCooldown = 0.3,
		SimSlowDistanceThreshold = 220,
		HitSimSlowParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.10, LerpTime = 0 },
			{ ScreenPreWait = 0.03, Fraction = 1.00, LerpTime = 0.07 },
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/VO/MelinoeEmotes/EmoteCastingFierce" },
			},
		},		
	},

	WeaponSpellChronosCircleGodSent = {}
})