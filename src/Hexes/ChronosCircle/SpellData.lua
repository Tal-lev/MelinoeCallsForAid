table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosCircleTrait")

OverwriteTableKeys( SpellData, {
    ChronosCircle = 
    {

		--Objective = "SpellPolymorphPrompt",
		TraitName = "SpellChronosCircleTrait",
		Talents = 
		{
			Repeatable = 
			{
				"CooldownDamageTalent",
				"ChargeRegenTalent",          
			},
			Unique = 
			{
                "CooldownDamageTalent",
                "ChronosCircleIn",
			},
			Legendary = 
			{
				"CooldownDamageTalent",
			},
		},
    },
})
