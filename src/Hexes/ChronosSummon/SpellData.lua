table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosSummonTrait")

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
				"SummonSpeedTalent"
			},
			Unique = 
			{
                "SummonSpeedTalent"  
			},
			Legendary = 
			{
				"SummonSpeedTalent"
			},
		},
    },
})