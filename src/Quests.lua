table.insert( QuestOrderData, "Quest_Chronos_HammerUpgrades")

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
})