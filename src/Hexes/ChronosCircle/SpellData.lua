table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosCircleTrait")
table.insert(WeaponSets.HeroSpellWeapons,"WeaponSpellChronosCircle")

if not LootData.ArtemisUpgrade then
	OverwriteTableKeys(LootData, {
		ArtemisUpgrade = {
			Gender = "Female",
			LootColor = Color.ArtemisVoice,
			WrathPortrait = "Portrait_Artemis_Serious_01_Wrath",
			FullSuperActivatedVoiceLines =
			{
				Queue = "Interrupt",
				{
					RandomRemaining = true,
					Source = { LineHistoryName = "NPC_Artemis_01", SubtitleColor = Color.ArtemisVoice },
					GameStateRequirements =
					{
						OrRequirements =
						{
							{
								{
									Path = { "CurrentRun", "CurrentRoom", "Encounter", "SpurnedGodName" },
									IsNone = { "ArtemisUpgrade" },
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

					{ Cue = "/VO/Artemis_0460", Text = "Hunting livestock, sure."},
					{ Cue = "/VO/Artemis_0461", Text = "Easy targets."},
					{ Cue = "/VO/Artemis_0123", Text = "My mark is yours." },
					{ Cue = "/VO/Artemis_0327", Text = "The hunt is on...", PlayFirst = true },
					{ Cue = "/VO/Artemis_0247", Text = "And our aim be true." },
				},
			}
		}
	})
elseif not LootData.ArtemisUpgrade.Gender then
	OverwriteTableKeys(LootData.ArtemisUpgrade, {
			Gender = "Female",
			LootColor = Color.ArtemisVoice,
			WrathPortrait = "Portrait_Artemis_Serious_01_Wrath",
			FullSuperActivatedVoiceLines =
			{
				Queue = "Interrupt",
				{
					RandomRemaining = true,
					Source = { LineHistoryName = "NPC_Artemis_01", SubtitleColor = Color.ArtemisVoice },
					GameStateRequirements =
					{
						OrRequirements =
						{
							{
								{
									Path = { "CurrentRun", "CurrentRoom", "Encounter", "SpurnedGodName" },
									IsNone = { "ArtemisUpgrade" },
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

					{ Cue = "/VO/Artemis_0460", Text = "Hunting livestock, sure."},
					{ Cue = "/VO/Artemis_0461", Text = "Easy targets."},
					{ Cue = "/VO/Artemis_0123", Text = "My mark is yours." },
					{ Cue = "/VO/Artemis_0327", Text = "The hunt is on...", PlayFirst = true },
					{ Cue = "/VO/Artemis_0247", Text = "And our aim be true." },
				},
			}
		}
	)
end

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
		Name = "Portrait_Artemis_Serious_01_Wrath",
		InheritFrom = "Portrait_God_01_Wrath",
		FilePath = "Portraits\\Artemis\\Portraits_Artemis_Serious_01",
		EndFrame = 1,
		StartFrame = 1,
		OffsetY = -119,
		OffsetX = 470,
	},TextOrder))

	return data
end)

table.insert(GameData.AllHexDuos,"ChronosCircleArtemisTalent")

OverwriteTableKeys( SpellData, {
    ChronosCircle = 
    {

		Objective = "SpellChronosCirclePrompt",
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
				"ChronosCircleArtemisTalent",
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