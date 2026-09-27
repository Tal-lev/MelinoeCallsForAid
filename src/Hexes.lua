OverwriteTableKeys( TraitData, {
	ChronosSpellTimeSlowTrait = 
		{
			InheritFrom = { "SpellTrait" },
			Icon = "Boon_Selene_27",
			PreEquipWeapons = { "ChronosWeaponSpellTimeSlow" },
			StatLines =
			{
				"ManaSpendCostStatDisplay1",
			},
			PropertyChanges = 
			{
				{
					FalseTraitName = "AxeFreeSpinTrait",
					WeaponName = "WeaponAxeSpin",
					WeaponProperty = "RemoveControlOnCharge3",
					ChangeValue = "WeaponSpellTimeSlow",
				},
				{
					WeaponName = "WeaponAxeSpin",
					WeaponProperty = "AddControlOnFireEnd3",
					ChangeValue = "WeaponSpellTimeSlow",
				},
			},
			ExtractValues = 
			{
				{
					External = true,
					BaseType = "WeaponData",
					BaseName = "WeaponSpellTimeSlow",
					BaseProperty = "BaseDuration",
					ExtractAs = "Duration",
				},
				{
					External = true,
					BaseType = "WeaponData",
					BaseName = "WeaponSpellTimeSlow",
					BaseProperty = "FiredFunctionArgs",
					FiredFunctionArg = "Modifier",
					Format = "NegativePercentDelta",
					ExtractAs = "SlowAmount",
				},
				{
					Format = "ManaSpendCost",
					WeaponName = "WeaponSpellTimeSlow",
					ExtractAs = "ManaCost",
				},
			},

			UpgradePickedVoiceLines =
			{
				{
					RandomRemaining = true,
					PreLineWait = 0.4,
					Queue = "Always",
					SuccessiveChanceToPlayAll = 0.66,
					TriggerCooldowns = { "MelinoeAnyQuipSpeech", "SeleneAnyQuipSpeech" },

					{ Cue = "/VO/Selene_0194", Text = "{#Emph}Phase Shift." },
					{ Cue = "/VO/Selene_0195", Text = "{#Emph}Phase Shift.", PlayFirst = true },
					{ Cue = "/VO/Selene_0196", Text = "Time can be controlled...", BreakIfPlayed = true },
				},
				{ GlobalVoiceLines = "PickedMoonSpellVoiceLines" },
			},
		},
})

OverwriteTableKeys( WeaponData, {
	ChronosWeaponSpellTimeSlow = 
	{
		InheritFrom = { "BaseSpell", },
		CompleteObjectivesOnFire = { "SpellTimeSlowPrompt" },
		OnFiredFunctionNames = { "SpellReloadStarted", "SpellFire", "StartSpellSlow" },
		OnFiredFunctionArgs = 
		{ 
			Modifier = 0.5, 
			Duration = 4.0, 
			LoopingSound = "/SFX/Player Sounds/TimeSlowLoop",
			EndWarnNum = 3,
			EndWarnPresentationFunction = "SpellSlowWarnPresentation",
			EndSlowMotionSound = "/VO/MelinoeEmotes/EmoteGasping",
			EndSlowMotionFunctionName = "EndTimeSlow"
		},

		OnChargeFunctionArgs = 
		{
			TimeSlowModifier = 0.001,
			Duration = 0.8,
			DisableBlink = true,
			Force = true,
		},

		BaseDuration = 4.0,
		ManaSpendCost = 130,

		FireScreenshake = { Distance = 4, Speed = 400, FalloffSpeed = 1400, Duration = 0.16, Angle = 225, ScreenPreWait = 0.19 },

		ChargeScreenshake = { Distance = 2, Speed = 100, FalloffSpeed = 2000, Duration = 1.0 },
		ChargeCameraMotion = { ZoomType = "Ease", Fraction = 1.08, Duration = 0.7, HoldDuration = 0.0, RestoreDefaultDuration = 0.4 },

		ChargeRumbleParameters =
		{
			{ ScreenPreWait = 0.02, Fraction = 0.14, Duration = 1.4 },
		},

		Sounds =
		{
			ChargeSounds =
			{
				-- { Name = "/VO/MelinoeEmotes/EmoteCastingAlt" },
				{
					Name = "/SFX/Player Sounds/TimeSlowCharge" ,
					StoppedBy = { "TriggerRelease" }
				},
			},
			FireSounds =
			{
				{ Name = "/VO/MelinoeEmotes/EmoteCastingFierce" },
			},
		},
	},
})

--Marking the Talents into the Hexes
OverwriteTableKeys( SpellData, {
	ChronosSpellTimeSlowTrait = {
		GameStateRequirements = 
		{
			{
            Path = { "CurrentRun", "Hero", "Weapons", },
            HasAll = { "WeaponAxe", },
            },
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
		},
		Objective = "SpellTimeSlowTrait",
		TraitName = "ChronosSpellTimeSlowTrait",
		Talents = 
		{
			Repeatable = 
			{
				
			},
			Unique = 
			{
				
			},
			Legendary = 
			{
				
			},
		}
	}
})

--Adding the new Weapon to the sets
table.insert(WeaponSets.HeroSpellWeapons, "ChronosWeaponSpellTimeSlow")

--Adding the Spell Trait to the list
table.insert(SpellDisplayData.TraitSortOrder, "ChronosSpellTimeSlowTrait")
