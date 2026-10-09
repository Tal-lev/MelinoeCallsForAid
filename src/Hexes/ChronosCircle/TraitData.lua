function mod.ChronosCheckCircleCharge( triggerArgs, functionArgs )
	if triggerArgs.name == "ChronosRadialOut" then
		SessionMapState.BlockSpellCharge = nil
	end
end

OverwriteTableKeys( TraitData, {

    SpellChronosCircleTrait = 
	{
		InheritFrom = { "SpellTrait" },
		Icon = "Boon_Selene_41",
		PreEquipWeapons = { "WeaponSpellChronosCircle", },
		StatLines =
		{
			"ManaSpendCostStatDisplay1",
		},
		OnProjectileDeathFunction = 
		{
			Name = _PLUGIN.guid .. "." .. "ChronosCheckCircleCharge",
		},
		PropertyChanges = 
		{
            {
				WeaponName = "WeaponSpellChronosCircle",
				ProjectileName = "ChronosRadialOut",
                ProjectileProperties = {
                    Damage = 200,
                },
			},
		},
		ExtractValues = 
		{
			{
				Format = "ManaSpendCost",
				WeaponName = "WeaponSpellChronosCircle",
				ExtractAs = "ManaCost",
			},
		},

		UpgradePickedVoiceLines =
		{
			{
				RandomRemaining = true,
				PreLineWait = 0.4,
				Queue = "Always",
				SuccessiveChanceToPlayAll = 0.66,
				TriggerCooldowns = { "MelinoeAnyQuipSpeech", "SeleneAnyQuipSpeech" },

				{ Cue = "/VO/Selene_0184", Text = "{#Emph}Twilight Curse." },
				{ Cue = "/VO/Selene_0185", Text = "{#Emph}Twilight Curse.", PlayFirst = true, },
				{ Cue = "/VO/Selene_0186", Text = "The Twilight Curse is yours to use.", BreakIfPlayed = true },
				{ Cue = "/VO/Selene_0187", Text = "Then let us turn our foes.", BreakIfPlayed = true },
				-- { Cue = "/VO/Selene_0127", Text = "{#Emph}Night Curse.", PlayFirst = true },
				-- { Cue = "/VO/Selene_0050", Text = "On this phase I see that the hex of Shadow Servant shall be yours.", BreakIfPlayed = true },
			},
			{ GlobalVoiceLines = "PickedMoonSpellVoiceLines" },
		},
	},
})