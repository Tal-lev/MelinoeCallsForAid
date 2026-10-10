OverwriteTableKeys( TraitData, {
    
	ChronosClockSize = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_57",
		{
			WeaponName = "WeaponSpellChronosClock",
			WeaponProperty = "ProjectileScaleMultiplier",
			ChangeValue = 1.2,
			ChangeType = "Multiply",
		},		
    },

	ChronosClockDiagonalOneTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_70",
        ManaSpendCostModifiers = 
        {
            Add = 25,
            ReportValues = { ReportedManaCost = "Add" }
        },
        StatLines =
        {
            "TalentManaCostAdditionStatline",
        },
        ExtractValues = 
        {
            {
                Key = "ReportedManaCost",
                ExtractAs = "ManaAddition",
                SkipAutoExtract = true,
                IncludeSigns = true,
            },
        },
    },

	ChronosClockDiagonalTwoTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_78",
        ManaSpendCostModifiers = 
        {
            Add = 25,
            ReportValues = { ReportedManaCost = "Add" }
        },
        StatLines =
        {
            "TalentManaCostAdditionStatline",
        },
        ExtractValues = 
        {
            {
                Key = "ReportedManaCost",
                ExtractAs = "ManaAddition",
                SkipAutoExtract = true,
                IncludeSigns = true,
            },
        },
    },

	ChronosClockHermesTalent = 
	{
		InheritFrom = {"LegendaryTalent", "SpellTalentTrait", "ForceDuoAppearanceTrait"},
		Icon = "JarlUlsfark-MelinoeCallsForAid\\Selene_Hermes_Talent",
		IsDuoBoon = true,
		LinkedGod = "HermesUpgrade",
		SpeakerNames = { "Hermes", },
		GameStateRequirements = 
		{
			NamedRequirements = { "SeleneDuosUnlocked" },
			OrRequirements =
			{
				{
					{
						PathTrue = { "CurrentRun", "Hero", "MetGods", "HermesUpgrade" },
					},
				},
				{
					{
						PathTrue = { "CurrentRun", "Hero", "TraitDictionary", "TimedBuffKeepsake" },
					},
				},
				--{
				--	{
				--		PathTrue = { "CurrentRun", "Hero", "TraitDictionary", "LowHealthCritKeepsake" },
				--	},
				--},
			},
		},
	},
  
})


