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

	--Starting MelNemesis

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Proud_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Proud_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Proud_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Proud_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Intense_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Intense_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Intense_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Intense_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Vulnerable_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Vulnerable_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Vulnerable_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Vulnerable_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_EmpatheticFlushed_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Hesitant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Hesitant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Hesitant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Hesitant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Casual_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Casual_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Casual_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Casual_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Pleased_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Pleased_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_Pleased_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -300,
		Alpha = 0.7,
		Scale = 0.8,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_PleasedFlushed_01_Exit" },
		}
	},
	TextOrder)
	)

	----Mel and Nemesis Dresses
	--Azure

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAzure_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Moonlight

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisMoonlight_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Emerald

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisEmerald_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Fuchsia

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisFuchsia_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Gilded

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisGilded_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Lavender

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisLavender_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Onyx

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisOnyx_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--AnotherTime

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisAnotherTime_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--DarkSide

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisDarkSide_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Visage

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisVisage_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Slanesh

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Default_01",
		InheritFrom = "Portrait_MelNemesis_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Default_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Proud_01",
		InheritFrom = "Portrait_MelNemesis_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Proud_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Intense_01",
		InheritFrom = "Portrait_MelNemesis_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Intense_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Vulnerable_01",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Empathetic_01",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Hesitant_01",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Casual_01",
		InheritFrom = "Portrait_MelNemesis_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Casual_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Pleased_01",
		InheritFrom = "Portrait_MelNemesis_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_Pleased_01_Exit",
		InheritFrom = "Portrait_MelNemesis_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_PleasedFlushed_01",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelNemesisSlanesh_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelNemesis_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
	},
	TextOrder)
	)

	--Starting Zag Chronos

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesis_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	----Zag Costumes
	--Azure

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAzure_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Azure_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Moonlight

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisMoonlight_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Moonlight_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Emerald

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisEmerald_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Emerald_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Fuchsia

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisFuchsia_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Fuchsia_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Gilded

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisGilded_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Gilded_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Lavender

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisLavender_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Lavender_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Onyx

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisOnyx_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Onyx_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--AnotherTime

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisAnotherTime_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\AnotherTime_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--DarkSide

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisDarkSide_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\DarkSide_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Visage

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisVisage_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Visage_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Slanesh

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagNemesisSlanesh_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortraitNemesis\\Slanesh_Portraits_Nemesis_01",
		OffsetX = -250,
		OffsetY = 40,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)
return data
end)