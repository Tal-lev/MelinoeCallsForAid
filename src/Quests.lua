table.insert( QuestOrderData, "Quest_Chronos_HammerUpgrades")
table.insert( QuestOrderData, "Quest_Chronos_SeleneDuos")
table.insert( QuestOrderData, "Quest_Chronos_ArachneCostume")
table.insert( QuestOrderData, "Quest_Nemesis_HammerUpgrades")
table.insert( QuestOrderData, "Quest_Nemesis_ArachneCostume")
table.insert( QuestOrderData, "Quest_Nemesis_RivalMelCompetition")

OverwriteTableKeys( QuestData, {

    Quest_Chronos_HammerUpgrades =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "MetaCurrency",
		RewardResourceAmount = 250,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    "ChronosTelescopicSwing",
                    "ChronosRadialCast",
                    "ChronosTeleportRift",
                    "ChronosDualGrind",
                    "ChronosSpecialDamage",
                    "ChronosTriplePurge",
				},
				Comparison = ">=",
				Value = 2,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
                    "ChronosTelescopicSwing",
                    "ChronosRadialCast",
                    "ChronosTeleportRift",
                    "ChronosDualGrind",
                    "ChronosSpecialDamage",
                    "ChronosTriplePurge",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},

    Quest_Chronos_SeleneDuos =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultOlympianQuest" },
		RewardResourceName = "CardUpgradePoints",
		RewardResourceAmount = 9,
		UnlockGameStateRequirements =
		{
			NamedRequirements = { "SeleneDuosUnlocked" },
			{
				PathTrue = { "GameState", "TextLinesRecord", "SeleneGrantsOlympianDuos01" },
			},
            {
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    "SpellChronosCircleTrait",
                    "SpellChronosClockTrait",
                    "SpellChronosSummonTrait",
				},
				Comparison = ">=",
				Value = 1,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
					"ChronosCircleArtemisTalent",
                    "ChronosClockHermesTalent",
                    "ChronosSummonChaosTalent",
				},
			},
		},
	},

	Quest_Chronos_ArachneCostume =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultFatesQuest" },
		RewardResourceName = "MetaFabric",
		RewardResourceAmount = 3,
		UnlockGameStateRequirements =
		{
			{
				PathTrue = { "GameState", "TextLinesRecord", "ArachneGift02" },
			},
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    "ChronosVitalityCostume",
					"ChronosManaCostume",
					"ChronosAgilityCostume",
					"ChronosIncomeCostume",
					"ChronosCastDamageCostume",
					"ChronosHighArmorCostume",
					--"ChronosSpellCostume",
					"ChronosEscalatingCostume",
				},
				Comparison = ">=",
				Value = 1,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
					"ChronosVitalityCostume",
					"ChronosManaCostume",
					"ChronosAgilityCostume",
					"ChronosIncomeCostume",
					"ChronosCastDamageCostume",
					"ChronosHighArmorCostume",
					--"ChronosSpellCostume",
					"ChronosEscalatingCostume",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0606", Text = "My sisters have keen interest in skilled weavers of all sorts." },
			},
		},
	},

	Quest_Nemesis_HammerUpgrades =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "MetaCurrency",
		RewardResourceAmount = 250,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    "NemesisLongerCastTrait",
                    "NemesisCritAfterSpecialTrait",
                    "NemesisDashPushTrait",
                    "NemesisBlockRevengeTrait",
                    "NemesisAttackBleedTrait",
                    --"ChronosTriplePurge",
				},
				Comparison = ">=",
				Value = 2,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
                    "NemesisLongerCastTrait",
                    "NemesisCritAfterSpecialTrait",
                    "NemesisDashPushTrait",
                    "NemesisBlockRevengeTrait",
                    "NemesisAttackBleedTrait",
                    --"ChronosTriplePurge",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},

	Quest_Nemesis_ArachneCostume =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultFatesQuest" },
		RewardResourceName = "MetaFabric",
		RewardResourceAmount = 3,
		UnlockGameStateRequirements =
		{
			{
				PathTrue = { "GameState", "TextLinesRecord", "ArachneGift02" },
			},
			{
				Path = { "GameState", "TraitsTaken" },
				CountOf =
				{
                    "NemesisVitalityCostume",
					"NemesisManaCostume",
					"NemesisAgilityCostume",
					"NemesisIncomeCostume",
					"NemesisCastDamageCostume",
					"NemesisHighArmorCostume",
					"NemesisSpellCostume",
					--"NemesisEscalatingCostume",
				},
				Comparison = ">=",
				Value = 1,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "TraitsTaken" },
				HasAll =
				{
					"NemesisVitalityCostume",
					"NemesisManaCostume",
					"NemesisAgilityCostume",
					"NemesisIncomeCostume",
					"NemesisCastDamageCostume",
					"NemesisHighArmorCostume",
					"NemesisSpellCostume",
					--"NemesisEscalatingCostume",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0606", Text = "My sisters have keen interest in skilled weavers of all sorts." },
			},
		},
	},

	Quest_Nemesis_RivalMelCompetition =
	{
		InheritFrom = { "DefaultQuestItem", "DefaultUnseenQuest" },
		RewardResourceName = "SuperGiftPoints",
		RewardResourceAmount = 2,
		UnlockGameStateRequirements =
		{
			{
				Path = { "GameState", "JarlUlsfarkRivalMelBetWon" },
				CountOf =
				{
                    "RivalMelStaff",
					"RivalMelDagger",
					"RivalMelTorch",
					"RivalMelAxe",
                    "RivalMelLob",
                    "RivalMelSuit",
				},
				Comparison = ">=",
				Value = 1,
			},
		},
		CompleteGameStateRequirements =
		{
			{
				Path = { "GameState", "JarlUlsfarkRivalMelBetWon" },
				HasAll =
				{
                    "RivalMelStaff",
					"RivalMelDagger",
					"RivalMelTorch",
					"RivalMelAxe",
                    "RivalMelLob",
                    "RivalMelSuit",
				},
			},
		},

		CashedOutVoiceLines =
		{
			{
				PreLineWait = 0.4,
				GameStateRequirements =
				{
					{
					},
				},
				Cooldowns =
				{
					{ Name = "MorosProphecyFulfilledSpeech", Time = 3 },
				},
				SkipAnim = true,
				RequiredSourceValueFalse = "InPartnerConversation",
				ObjectType = "NPC_Moros_01",

				{ Cue = "/VO/Moros_0216", Text = "A necessary step along your path." },
			},
		},
	},
})