table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosCircleTrait")
table.insert(WeaponSets.HeroSpellWeapons,"WeaponSpellChronosCircle")

OverwriteTableKeys( SpellData, {
    ChronosCircle = 
    {

		--Objective = "SpellPolymorphPrompt",
		TraitName = "SpellChronosCircleTrait",
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
				"CooldownDamageTalent",
				"ChargeRegenTalent",   
                "ChronosCircleDamageTalent",       
			},
			Unique = 
			{
                "ChronosCircleInTalent",
                "ChronosCircleBlindTalent",
                "ChronosCircleWeakTalent",
                "ChronosCircleGlowTalent",
			},
			Legendary = 
			{
				"CooldownDamageTalent",
			},
		},
    },
})

--Restricting Incompatible Hexes

SpellData.Polymorph.GameStateRequirements = SpellData.Polymorph.GameStateRequirements or {}
table.insert(SpellData.Polymorph.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Meteor.GameStateRequirements = SpellData.Meteor.GameStateRequirements or {}
table.insert(SpellData.Meteor.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Transform.GameStateRequirements = SpellData.Transform.GameStateRequirements or {}
table.insert(SpellData.Transform.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Leap.GameStateRequirements = SpellData.Leap.GameStateRequirements or {}
table.insert(SpellData.Leap.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Laser.GameStateRequirements = SpellData.Laser.GameStateRequirements or {}
table.insert(SpellData.Laser.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Summon.GameStateRequirements = SpellData.Summon.GameStateRequirements or {}
table.insert(SpellData.Summon.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.TimeSlow.GameStateRequirements = SpellData.TimeSlow.GameStateRequirements or {}
table.insert(SpellData.TimeSlow.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.Potion.GameStateRequirements = SpellData.Potion.GameStateRequirements or {}
table.insert(SpellData.Potion.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
SpellData.MoonBeam.GameStateRequirements = SpellData.MoonBeam.GameStateRequirements or {}
table.insert(SpellData.MoonBeam.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})