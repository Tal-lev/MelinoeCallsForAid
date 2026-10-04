table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosSummonTrait")
table.insert(WeaponSets.HeroSpellWeapons,"WeaponChronosSummon")

OverwriteTableKeys( SpellData, {
	ChronosSummon = 
    {

		Objective = "SpellSummonPrompt",
		TraitName = "SpellChronosSummonTrait",
		--CheckSpellReadyOnAcquire = true,
        GameStateRequirements = 
        {
            {
                Path = {"CurrentRun", "Hero", "TraitDictionary"},
                HasAll = {"ChronosAspect"}
            }
        },
		Talents = 
		{
			Repeatable = 
			{
				"ChronosSummonDurationTalent",
				"ChronosSummonHealthTalent",
				"CurrencyUseTalent",
			},
			Unique = 
			{
				"ChronosSummonUsesTalent",
				"ChronosDoubleHealTalent",
				"ChronosRolloverUsesTalent",
			},
			Legendary = 
			{
				"SummonSpeedTalent",
			},
		},
    },
})