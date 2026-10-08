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
		Name = "Portrait_MelCFA_NoCancel_Default_01",
		InheritFrom = "Portrait_Mel_Default_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Default_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Proud_01",
		InheritFrom = "Portrait_Mel_Proud_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Proud_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Proud_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Intense_01",
		InheritFrom = "Portrait_Mel_Intense_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Intense_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Intense_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Vulnerable_01",
		InheritFrom = "Portrait_Mel_Vulnerable_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Vulnerable_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Vulnerable_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Empathetic_01",
		InheritFrom = "Portrait_Mel_Empathetic_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Empathetic_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01",
		InheritFrom = "Portrait_Mel_EmpatheticFlushed_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_EmpatheticFlushed_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Hesitant_01",
		InheritFrom = "Portrait_Mel_Hesitant_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Hesitant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Hesitant_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Casual_01",
		InheritFrom = "Portrait_Mel_Casual_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Casual_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Casual_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Pleased_01",
		InheritFrom = "Portrait_Mel_Pleased_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_Pleased_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_Pleased_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_PleasedFlushed_01",
		InheritFrom = "Portrait_Mel_PleasedFlushed_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelCFA_NoCancel_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "Portraits\\Melinoe\\Portraits_Melinoe_PleasedFlushed_01",
		CancelAllAttached = false,
	},
	TextOrder)
	)

	--Starting MelChronos

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Default_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Default_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Proud_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Proud_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Proud_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Proud_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Intense_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Intense_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Intense_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Intense_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Vulnerable_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Vulnerable_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Vulnerable_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Vulnerable_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Empathetic_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Empathetic_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_EmpatheticFlushed_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_EmpatheticFlushed_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Hesitant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Hesitant_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Hesitant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Hesitant_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Casual_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Casual_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Casual_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Casual_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Pleased_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Pleased_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01_Exit" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_Pleased_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_Pleased_01" },
		}
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -300,
		Alpha = 0.7,
		CreateAnimations =
		{
			{ Name = "Portrait_MelCFA_NoCancel_PleasedFlushed_01_Exit" },
		}
	},
	TextOrder)
	)

	----Mel and Chronos Dresses
	--Azure

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAzure_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Crimson

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosCrimson_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Emerald

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosEmerald_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Fuchsia

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosFuchsia_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Gilded

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosGilded_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Lavender

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosLavender_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Onyx

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosOnyx_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--AnotherTime

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosAnotherTime_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--DarkSide

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosDarkSide_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	--Visage

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Default_01",
		InheritFrom = "Portrait_MelChronos_Default_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Default_01_Exit",
		InheritFrom = "Portrait_MelChronos_Default_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Proud_01",
		InheritFrom = "Portrait_MelChronos_Proud_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Proud_01_Exit",
		InheritFrom = "Portrait_MelChronos_Proud_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Intense_01",
		InheritFrom = "Portrait_MelChronos_Intense_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Intense_01_Exit",
		InheritFrom = "Portrait_MelChronos_Intense_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Vulnerable_01",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Vulnerable_01_Exit",
		InheritFrom = "Portrait_MelChronos_Vulnerable_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Empathetic_01",
		InheritFrom = "Portrait_MelChronos_Empathetic_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Empathetic_01_Exit",
		InheritFrom = "Portrait_MelChronos_Empathetic_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_EmpatheticFlushed_01",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_EmpatheticFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_EmpatheticFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Hesitant_01",
		InheritFrom = "Portrait_MelChronos_Hesitant_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Hesitant_01_Exit",
		InheritFrom = "Portrait_MelChronos_Hesitant_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Casual_01",
		InheritFrom = "Portrait_MelChronos_Casual_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Casual_01_Exit",
		InheritFrom = "Portrait_MelChronos_Casual_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Pleased_01",
		InheritFrom = "Portrait_MelChronos_Pleased_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_Pleased_01_Exit",
		InheritFrom = "Portrait_MelChronos_Pleased_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_PleasedFlushed_01",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_MelChronosVisage_PleasedFlushed_01_Exit",
		InheritFrom = "Portrait_MelChronos_PleasedFlushed_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
	},
	TextOrder)
	)

	---- Zagreus

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Serious01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Serious01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Defiant01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Defiant01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Explaining01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Explaining01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Unwell01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Zagreus_Unwell01",
		OffsetY = 32,
		OffsetX = -50,
	},
	TextOrder)
	)

	--Starting Zag Chronos

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagChronos_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronos_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAzure_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Azure_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
		Alpha = 0.7,
		Scale = 0.6,
		CreateAnimations =
		{
			{ Name = "Portrait_ZagCFA_NoCancel_Unwell_01_Exit" },
		}
	},
	TextOrder)
	)

	--Crimson

	table.insert(data.Animations, sjson.to_object(
	{
		Name = "Portrait_ZagChronosCrimson_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosCrimson_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Crimson_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosEmerald_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Emerald_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosFuchsia_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Fuchsia_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosGilded_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Gilded_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosLavender_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Lavender_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosOnyx_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Onyx_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosAnotherTime_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\AnotherTime_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosDarkSide_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\DarkSide_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Default_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Default_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Serious_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Serious_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Defiant_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Defiant_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Empathetic_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Empathetic_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Unwell_01",
		InheritFrom = "Portrait_Base_01",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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
		Name = "Portrait_ZagChronosVisage_Unwell_01_Exit",
		InheritFrom = "Portrait_Base_01_Exit",
		FilePath = "JarlUlsfark-MelinoeCallsForAidPortrait\\Visage_Portraits_Chronos_Enlightened_01",
		OffsetX = -250,
		OffsetY = 10,
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