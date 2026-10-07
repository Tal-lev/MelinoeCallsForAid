local file = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_Portraits_VFX.sjson')
sjson.hook(file, function(data)
	
	local TextOrder = {
	"Name",
	"InheritFrom",
	"FilePath",
	"OffsetY",
	"OffsetX",
	}

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_01",
		CreateAnimations = {
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_MoonGlow_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_MainGlow"},
			{ Name = "Portrait_Mel_LaurelGlow"},
			{ Name = "Portrait_Mel_Hesitant_Glint" },
			{ Name = "Portrait_Mel_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Proud_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Proud_01",
		CreateAnimations = {
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_MoonGlow_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_MainGlow"},
			{ Name = "Portrait_Mel_LaurelGlow"},
			{ Name = "Portrait_Mel_Hesitant_Glint" },
			{ Name = "Portrait_Mel_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Proud_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Proud_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Intense_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Intense_01",
		CreateAnimations = {
			{ Name = "Portrait_Mel_Intense_MoonGlow_In" },
			{ Name = "Portrait_Mel_Body2_MoonGlow_In" },
			{ Name = "Portrait_Mel_Intense_Wiggle_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body2_ArmGlow"},
			{ Name = "Portrait_Mel_Intense_MainGlow"},
			{ Name = "Portrait_Mel_Intense_LaurelGlow"},
			{ Name = "Portrait_Mel_Intense_Glint" },
			{ Name = "Portrait_Mel_Intense_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Intense_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Intense_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Vulnerable_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Vulnerable_01",
		CreateAnimations =
		{
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_Vulnerable_MainGlow"},
			{ Name = "Portrait_Mel_Vulnerable_LaurelGlow"},
			{ Name = "Portrait_Mel_Vulnerable_Glint" },
			{ Name = "Portrait_Mel_Vulnerable_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Vulnerable_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Vulnerable_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Empathetic_01",
		CreateAnimations =
		{
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_Vulnerable_MainGlow"},
			{ Name = "Portrait_Mel_Vulnerable_LaurelGlow"},
			{ Name = "Portrait_Mel_Vulnerable_Glint" },
			{ Name = "Portrait_Mel_Vulnerable_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Empathetic_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_EmpatheticFlushed_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_EmpatheticFlushed_01",
		CreateAnimations =
		{
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_MoonGlow_In" },
			{ Name = "Portrait_Mel_Vulnerable_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_Vulnerable_MainGlow"},
			{ Name = "Portrait_Mel_Vulnerable_LaurelGlow"},
			{ Name = "Portrait_Mel_Vulnerable_Glint" },
			{ Name = "Portrait_Mel_Vulnerable_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_EmpatheticFlushed_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Hesitant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Hesitant_01",
		CreateAnimations = {
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_Hesitant_MoonGlow_In" },
			{ Name = "Portrait_Mel_Hesitant_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_Hesitant_MainGlow"},
			{ Name = "Portrait_Mel_Hesitant_LaurelGlow"},
			{ Name = "Portrait_Mel_Hesitant_Glint" },
			{ Name = "Portrait_Mel_Body1_Glint"},
			{ Name = "Portrait_Mel_Hesitant_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Hesitant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Hesitant_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Casual_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Casual_01",
		CreateAnimations = {
			{ Name = "Portrait_Mel_Body1_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body1_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body1_MoonGlow_In" },
			{ Name = "Portrait_Mel_Hesitant_MoonGlow_In" },
			{ Name = "Portrait_Mel_Hesitant_Wiggle_In" },
			{ Name = "Portrait_Mel_Body1_ArmGlow"},
			{ Name = "Portrait_Mel_Hesitant_MainGlow"},
			{ Name = "Portrait_Mel_Hesitant_LaurelGlow"},
			{ Name = "Portrait_Mel_Hesitant_Glint" },
			{ Name = "Portrait_Mel_Body1_Glint"},
			{ Name = "Portrait_Mel_Hesitant_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Casual_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Casual_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Pleased_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Pleased_01",
		CreateAnimations =
		{
			{ Name = "Portrait_Mel_Pleased_MoonGlow_In" },
			{ Name = "Portrait_Mel_Body2_MoonGlow_In" },
			{ Name = "Portrait_Mel_Pleased_Wiggle_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body2_ArmGlow"},
			{ Name = "Portrait_Mel_Pleased_MainGlow"},
			{ Name = "Portrait_Mel_Pleased_LaurelGlow"},
			{ Name = "Portrait_Mel_Body2_Glint"},
			{ Name = "Portrait_Mel_Pleased_Glint" },
			{ Name = "Portrait_Mel_Pleased_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_Pleased_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_Pleased_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_PleasedFlushed_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_PleasedFlushed_01",
		CreateAnimations =
		{
			{ Name = "Portrait_Mel_Pleased_MoonGlow_In" },
			{ Name = "Portrait_Mel_Body2_MoonGlow_In" },
			{ Name = "Portrait_Mel_Pleased_Wiggle_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle1_In" },
			{ Name = "Portrait_Mel_Body2_Wiggle2_In" },
			{ Name = "Portrait_Mel_Body2_ArmGlow"},
			{ Name = "Portrait_Mel_Pleased_MainGlow"},
			{ Name = "Portrait_Mel_Pleased_LaurelGlow"},
			{ Name = "Portrait_Mel_Body2_Glint"},
			{ Name = "Portrait_Mel_Pleased_Glint" },
			{ Name = "Portrait_Mel_Pleased_Blink" }
		}
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelAndChronos_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_MelinoeAndChronos_PleasedFlushed_01"
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagDefault",
		OffsetY = 32,
		OffsetX = -135,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagDefault",
		OffsetY = 32,
		OffsetX = -135,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagSerious",
		OffsetY = 32,
		OffsetX = -70,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagSerious",
		OffsetY = 32,
		OffsetX = -70,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagDefiant",
		OffsetY = 32,
		OffsetX = 0,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagDefiant",
		OffsetY = 32,
		OffsetX = 0,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagEmpathatic",
		OffsetY = 32,
		OffsetX = -100,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagEmpathatic",
		OffsetY = 32,
		OffsetX = -100,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagUnwell",
		OffsetY = 32,
		OffsetX = -100,
	},
    TextOrder)
    )

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "ModsNikkelMHadesBiomes_Portrait_ZagChronos_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\ChronosAndZagUnwell",
		OffsetY = 32,
		OffsetX = -100,
	},
    TextOrder)
    )

return data
end)