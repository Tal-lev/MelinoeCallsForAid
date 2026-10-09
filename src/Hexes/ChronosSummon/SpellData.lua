table.insert(SpellDisplayData.TraitSortOrder, 10, "SpellChronosSummonTrait")
table.insert(WeaponSets.HeroSpellWeapons,"WeaponChronosSummon")

OverwriteTableKeys(LootData.TrialUpgrade, {
			WrathPortrait = "Portrait_Chaos_Default_01_Wrath",
			FullSuperActivatedVoiceLines =
			{
				Queue = "Interrupt",
				{
					RandomRemaining = true,
					Source = { LineHistoryName = "NPC_Chaos_01", SubtitleColor = Color.ChaosVoice },
					GameStateRequirements =
					{
						OrRequirements =
						{
							{
								{
									Path = { "CurrentRun", "CurrentRoom", "Encounter", "SpurnedGodName" },
									IsNone = { "TrialUpgrade" },
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

					{ Cue = "/VO/Chaos_0106", Text = "I have made some adjustments to reality..."},
					{ Cue = "/VO/Chaos_0108", Text = "Some alterations to the fabric of reality..."},
					{ Cue = "/VO/Chaos_0114", Text = "Another possibility to be explored..." },
					{ Cue = "/VO/Chaos_0111", Text = "From my infinite depths rises an opportunity." },
					{ Cue = "/VO/Chaos_0088", Text = "This I shall be curious to see." },
				},
			}
		}
	)

table.insert(GameData.AllHexDuos,"ChronosSummonChaosTalent")

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
		Name = "Portrait_Chaos_Default_01_Wrath",
		InheritFrom = "Portrait_God_01_Wrath",
		FilePath = "Portraits\\Chaos\\Portraits_Chaos_02",
		EndFrame = 1,
		StartFrame = 1,
		OffsetY = -119,
		OffsetX = 470,
	},TextOrder))

	return data
end)

OverwriteTableKeys( SpellData, {
	ChronosSummon = 
    {

		Objective = "SpellChronosSummonPrompt",
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
				"ChronosSummonChaosTalent",
			},
		},
    },
})