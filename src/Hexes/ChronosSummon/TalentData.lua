OverwriteTableKeys( TraitData, {
    ChronosSummonHealthTalent = 
	{
		InheritFrom = {"SpellTalentTrait"},
		Icon = "Boon_Selene_86",
        RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1,
			},
			Heroic =
			{
				Multiplier = 1,
			},
		},
		AllyDataModifiers = 
		{
			MaxHealthMultiplier = { BaseValue = 1.6, SourceIsMultiplier = true },
			ReportValues = { ReportedMaxHealthMultiplier = "MaxHealthMultiplier"}
		},
		ExtractValues = 
		{
			{
				Key = "ReportedMaxHealthMultiplier",
				ExtractAs = "MaxHealth",
				Format = "PercentDelta"
			},
		}
	},

    ChronosSummonDurationTalent = 
	{
		InheritFrom = {"SpellTalentTrait"},
		Icon = "Boon_Selene_36",
        RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1,
			},
			Heroic =
			{
				Multiplier = 1,
			},
		},
        ChronosSummonModifiers = 
		{ 
			ValidWeapons = WeaponSets.HeroSpellWeapons,
			AddDuration = { BaseValue = 4 },
			ReportValues = { AddDuration = "AddDuration" }
		},
        ExtractValues =
		{
			{
				Key = "AddDuration",
				ExtractAs = "DurationAmount",
				DecimalPlaces = 1,
			},
		}
	},

    ChronosSummonUsesTalent = 
	{
		InheritFrom = {"SpellTalentTrait"},
		Icon = "Boon_Selene_57",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1,
			},
			Heroic =
			{
				Multiplier = 2,
			},
			Legendary =
			{
				Multiplier = 2,
			},
		},
		AcquireFunctionName = "GrantPotionBonusCharges",
		AcquireFunctionArgs = 
		{
			BonusCharges = 1,
		},
		BonusSpellUses = { BaseValue = 1 },
		
		ExtractValues =
		{
			{
				Key = "BonusSpellUses",
				ExtractAs = "BonusUses",
			},
		},
	},

    ChronosDoubleHealTalent = 
	{
		InheritFrom = {"SpellTalentTrait"},
		Icon = "Boon_Selene_50",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1,
			},
			Heroic =
			{
				Multiplier = 1,
			},
			Legendary =
			{
				Multiplier = 1,
			},
		},
	},

    ChronosRolloverUsesTalent = 
	{
		InheritFrom = {"SpellTalentTrait", "LegendaryTalent" },
		Icon = "Boon_Selene_119",
		RolloverSpellUses = true,
	},

})