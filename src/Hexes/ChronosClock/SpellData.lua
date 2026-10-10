table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosClockTrait")
table.insert(WeaponSets.HeroSpellWeapons,"WeaponSpellChronosClock")

OverwriteTableKeys(LootData.HermesUpgrade, {
		WrathPortrait = "Portrait_Hermes_Serious_01_Wrath",
		FullSuperActivatedVoiceLines =
		{
			Queue = "Interrupt",
			{
				RandomRemaining = true,
				Source = { LineHistoryName = "NPC_Hermes_01", SubtitleColor = Color.HermesVoice },
				GameStateRequirements =
				{
					OrRequirements =
					{
						{
							{
								Path = { "CurrentRun", "CurrentRoom", "Encounter", "SpurnedGodName" },
								IsNone = { "HermesUpgrade" },
							},
						},
						{
							{
								PathTrue = { "CurrentRun", "CurrentRoom", "Encounter", "Completed" },
							},
						},
					},
					NamedRequirements = { "FullSuperVoiceLinesEligible" },
				},

				{ Cue = "/VO/Hermes_0347", Text = "Express shipping!"},
				{ Cue = "/VO/Hermes_0377", Text = "Not quick enough!"},
				{ Cue = "/VO/Hermes_0329", Text = "All right I better go!" },
				{ Cue = "/VO/Hermes_0126", Text = "Hermes, at your service!" },
			},
		},
	})

local file = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Portraits_VFX.sjson')
sjson.hook(file, function(data)
	
	local TextOrder = {
	"Name",
	"InheritFrom",
	"FilePath",
	"OffsetY",
	"OffsetX",
	"Alpha",
	"CreateAnimations",
	}	

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_Hermes_Serious_01_Wrath",
		InheritFrom = "Portrait_God_01_Wrath",
		FilePath = "Portraits\\Hermes\\Portraits_Hermes_Serious_01",
		EndFrame = 1,
		StartFrame = 1,
		OffsetY = -119,
		OffsetX = 470,
	},TextOrder))

	return data
end)

table.insert(GameData.AllHexDuos,"ChronosClockHermesTalent")

OverwriteTableKeys( SpellData, {
    ChronosClock = 
    {

		Objective = "SpellChronosClockPrompt",
		TraitName = "SpellChronosClockTrait",
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
                "ChronosClockSize",     
			},
			Unique = 
			{
                "ChronosClockDiagonalOneTalent",
				"ChronosClockDiagonalTwoTalent",
			},
			Legendary = 
			{
				--"CooldownDamageTalent",
				"ChronosClockHermesTalent",
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