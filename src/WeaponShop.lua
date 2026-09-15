-- Axe Aspect of young Mel

OverwriteTableKeys(WeaponShopItemData, {
    ChronosAspect =
	{
		WeaponName = "WeaponAxe",
		HideAfterPurchased = true,
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
})
	--Adding Axe aspect to weapon shop
    table.insert( ScreenData.WeaponShop.ItemCategories[5], "ChronosAspect")
	table.insert( ScreenData.WeaponShop.ItemCategories[5], "ChronosAspect2")
	table.insert( ScreenData.WeaponShop.ItemCategories[5], "ChronosAspect3")
	table.insert( ScreenData.WeaponShop.ItemCategories[5], "ChronosAspect4")
	table.insert( ScreenData.WeaponShop.ItemCategories[5], "ChronosAspect5")
	
	--Adding Axe aspect to weapon selection
	--table.insert( ScreenData.WeaponUpgradeScreen.DisplayOrder.WeaponAxe, 2 , "ChronosAspect" )