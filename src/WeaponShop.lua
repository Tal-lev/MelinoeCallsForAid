-- Axe Aspect of young Mel

OverwriteTableKeys(WeaponShopItemData, {
    ChronosAspect =
	{
		WeaponName = "WeaponAxe",
		HideAfterPurchased = false,
		IconScale = 0.8,
		UnlockTextId = "WeaponShopAspectUnlock",
		Cost =
		{
			MixerIBoss = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WorldUpgrades", "WorldUpgradeWeaponUpgradeSystem" },
			},
			{
					PathTrue = { "GameState", "TextLinesRecord", "NeoChronosGift01" }
			},
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{
				BreakIfPlayed = true,
				PreLineWait = 0.65,
				ObjectType = "NPC_Skelly_01",
				PreLineAnim = "Skelly_Babbling",
				TriggerCooldowns = { "SkellyAnyQuipSpeech" },
				{ Cue = "/VO/Skelly_0346", Text = "Wait, {#Emph}who?!" },
			},
		},
	},
    ChronosAspect2 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ChronosAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ChronosAspect3 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ChronosAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect2" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ChronosAspect4 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ChronosAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect3" }
			}
		},
		PreRevealGlobalVoiceLines = "AxeAspectUpgradedVoiceLines",
	},
	ChronosAspect5 =
	{
		WeaponName = "WeaponAxe",
		HideAfterPurchased = false,
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "ChronosAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect4" }
			}
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{ GlobalVoiceLines = "SkellyWeaponMaxUpgradeReactionVoiceLines" },
			{ GlobalVoiceLines = "SkellyWeaponUpgradeReactionVoiceLines" },
		},
	},

	NemesisAspect =
	{
		WeaponName = "WeaponStaffSwing",
		HideAfterPurchased = false,
		IconScale = 0.8,
		UnlockTextId = "WeaponShopAspectUnlock",
		Cost =
		{
			MixerFBoss = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WorldUpgrades", "WorldUpgradeWeaponUpgradeSystem" },
			},
			{
					PathTrue = { "GameState", "TextLinesRecord", "NemesisGift08" }
			},
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{
				BreakIfPlayed = true,
				PreLineWait = 0.65,
				ObjectType = "NPC_Skelly_01",
				PreLineAnim = "Skelly_Babbling",
				TriggerCooldowns = { "SkellyAnyQuipSpeech" },
				{ Cue = "/VO/Skelly_0346", Text = "Wait, {#Emph}who?!" },
			},
		},
	},

	NemesisAspect2 =
	{
		WeaponName = "WeaponStaffSwing",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "NemesisAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect" }
			}
		},
		PreRevealGlobalVoiceLines = "StaffAspectUpgradedVoiceLines",
	},
	NemesisAspect3 =
	{
		WeaponName = "WeaponAxe",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "NemesisAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect2" }
			}
		},
		PreRevealGlobalVoiceLines = "StaffAspectUpgradedVoiceLines",
	},
	NemesisAspect4 =
	{
		WeaponName = "WeaponStaffSwing",
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "NemesisAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 1,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect3" }
			}
		},
		PreRevealGlobalVoiceLines = "StaffAspectUpgradedVoiceLines",
	},
	NemesisAspect5 =
	{
		WeaponName = "WeaponStaffSwing",
		HideAfterPurchased = false,
		IconScale = 0.8,
		Graphic = "WeaponArt05",
		TraitUpgrade = "NemesisAspect",
		InheritFrom = { "BaseWeaponUpgrade", },
		Cost =
		{
			WeaponPointsRare = 2,
		},
		GameStateRequirements =
		{
			{
				PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect4" }
			}
		},
		PreRevealVoiceLines =
		{
			TriggerCooldowns = { "MelinoeMiscWeaponEquipSpeech" },
			{ GlobalVoiceLines = "SkellyWeaponMaxUpgradeReactionVoiceLines" },
			{ GlobalVoiceLines = "SkellyWeaponUpgradeReactionVoiceLines" },
		},
	},
})
	--Adding Axe aspect to weapon shop
    table.insert( ScreenData.WeaponShop.ItemCategories[1], "ChronosAspect")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "ChronosAspect2")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "ChronosAspect3")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "ChronosAspect4")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "ChronosAspect5")

	table.insert( ScreenData.WeaponShop.ItemCategories[1], "NemesisAspect")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "NemesisAspect2")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "NemesisAspect3")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "NemesisAspect4")
	--table.insert( ScreenData.WeaponShop.ItemCategories[1], "NemesisAspect5")
	
	--Adding Axe aspect to weapon selection
	--table.insert( ScreenData.WeaponUpgradeScreen.DisplayOrder.WeaponAxe, 2 , "ChronosAspect" )