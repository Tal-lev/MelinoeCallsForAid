---@module "NikkelM-Cosmetics_API"
CosmeticsAPI = rom.mods["NikkelM-Cosmetics_API"]

CosmeticsAPI.RegisterCrossroadsPackages({ "JarlUlsfark-MelinoeCallsForAidCosmetics" })

local mainHubAreaCosmetics = {
    {
		Id = _PLUGIN.guid .. "." .. "Cosmetic_Leaves_coins",
		Name = {
			en = "Leaves, Coins",
		},
		Description = {
			en =
			"{$Keywords.CosmeticAltAdd}: Shining golden coins collected during a lost golden age.",
		},
		FlavorText = {
			en =
			"These typically would melt in the forge of the boatman, yet these few are left as a memory.",
		},
		CosmeticsGroup = "Cosmetic_FallenLeaves01",
		InsertAfterCosmetic = "Cosmetic_FallenLeaves02",
		ShopCategory = "CosmeticsShop_Main",
		ActivateIds = { 743698, 743740, 743700, 743706, 743702, 743649, 743681, 743660, 743732, 743647, 743760, 743738,
						743792, 743654, 743773, 743811, 743761, 743757, 743800, 743820, 743744, 743767, 743707, 743673,
						743791, 743815, 743802, 743795, 743776, 743739, 743683, 743663, 743784, 743759, 743676, 743763,
						743672, 743821, 743713, 743807, 743666, 743780, 743808, 743735, 743786, 743801, 743746, 743730,
						743793, 743755, 743749, 743687, 743750, 743636, 743818, 743805, 743747, 743797, 743699, 743682,
						743790, 743766, 743783, 743679, 743723, 743753, 743777, 743796, 743788, 743695, 743745, 743708,
						743728, 743684, 743646, 743694, 743712, 743803, 743782, 743806, 743798, 743697, 743787, 743693,
						743781, 743762, 743756, 743703, 743680, 743689, 743639, 743711, 743772, 743822, 743769, 743816,
						743640, 743718, 743701, 743721, 743799, 743686, 743789, 780412, 743685, 743737, 743717, 743653,
						743764, 743804, 743768, 743710, 743643, 743722, 743752, 743775, 743729, 743691, 743734, 743779,
						743778, 743742, 743657, 743690, 743675, 743814, 743813, 743662, 743825, 743828, 743765, 743667,
						743724, 743809, 743648, 743715, 743704, 743817, 743719, 743819, 743670, 743758, 743664, 743751,
						743671, 743812, 743774, 743705, 743650, 743771, 743785, 743748, 743678, 743726, 743741, 743810,
						780414, 743659, 743770, 743696, 743692, 743720, 743826, 743709, 743716, 743651, 743688, 743665,
						743714, 743725, 743754, 743727, 743645, 743731, 743829, 743668, 743743, 743733, 743677, 743827,
						743669, 743661, 743652, },
		IconPath = "JarlUlsfark-MelinoeCallsForAidCosmetics\\GoldCoin_Icon",
		CosmeticAnimationPath = "JarlUlsfark-MelinoeCallsForAidCosmetics\\GoldCoin_Big",
		AnimationScale = 1,
		AnimationOffsetY = 0,
		--IsCauldron = true,
		--CauldronLidAnimationPath = "JarlUlsfark-Tools_of_the_Trade_Cosmetics\\CauldronKirbyLid",
		-- For the bubbling water animation
		--AnimationInheritFrom = "DefaultCosmeticItem",
		GameStateRequirements = {
			PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect" }
		},
		AlwaysRevealImmediately = true,
		Cost = {
			CosmeticsPoints = 200,
		},
		RevealReactionVoiceLines = {
			{
				PreLineWait = 0.35,
				ObjectType = "NPC_Dora_01",
				{
					Cue = "/VO/Dora_0442",
					Text = "Bet you can cook up some {#Emph}real {#Prev}nasty curses in this baby.",
					PreLineFunctionName = "GenericPresentation",
					PreLineFunctionArgs = game.PresetAudioArgs.DoraNormalAppearArgs
				},
			},
			{ GlobalVoiceLines = "PositiveReactionVoiceLines" },
		},
	},
}

for _, cosmeticData in ipairs(mainHubAreaCosmetics) do
	if cosmeticData.GameStateRequirements == nil then
		cosmeticData.GameStateRequirements = {}
	end

	CosmeticsAPI.RegisterCosmetic(cosmeticData)
end


-- #region CosmeticsShop_PreRun
local preRunCosmetics = {
    -- #endregion
	-- #region Skelly Dais/Cosmetic_SkellyFloor01
	{
		Id = _PLUGIN.guid .. "." .. "Cosmetic_SkellyFloor_TartarusGolden",
		Name = {
			-- de = "Dais, Fancy",
			-- el = "Dais, Fancy",
			en = "Dais, Golden",
			-- es = "Dais, Fancy",
			-- fr = "Dalle Raffinée",
			-- it = "Dais, Fancy",
			-- ja = "Dais, Fancy",
			-- ko = "Dais, Fancy",
			-- pl = "Dais, Fancy",
			-- ["pt-BR"] = "Dais, Fancy",
			-- ru = "Dais, Fancy",
			-- tr = "Dais, Fancy",
			-- uk = "Dais, Fancy",
			-- ["zh-CN"] = "Dais, Fancy",
			-- ["zh-TW"] = "Dais, Fancy",
		},
		Description = {
			-- de =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- el =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			en =
			"{$Keywords.CosmeticSwap}: Royal platform of stone and goal, set right where {$Keywords.CharSkelly} typically resides.",
			-- es =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			--fr =
			--"{$Keywords.CosmeticSwap} : Une plateforme de pierre finement ouvragée, là où {$Keywords.CharSkelly} se tient habituellement.",
			-- it =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ja =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ko =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- pl =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ["pt-BR"] =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ru =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- tr =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- uk =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ["zh-CN"] =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
			-- ["zh-TW"] =
			-- "{$Keywords.CosmeticSwap}: Intricate stone platform, set right where {$Keywords.CharSkelly} typically resides.",
		},
		FlavorText = {
			-- de =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- el =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			en =
			"With symbolisms as could be found in the golden reign in the House of Hades in times past, the Commander should be suitably inspired to splendid deeds while standing upon this dais.",
			-- es =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			--fr =
			--"Avec des symboles tels qu'on en trouvait jadis dans la Maison d'Hadès, le Commandant devrait être dûment inspiré à de grands exploits en se tenant sur ce piédestal.",
			-- it =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ja =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ko =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- pl =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ["pt-BR"] =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ru =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- tr =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- uk =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ["zh-CN"] =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
			-- ["zh-TW"] =
			-- "With symbolisms as could be found in the House of Hades in times past, the Commander should be suitably inspired to great deeds while standing upon this dais.",
		},
		CosmeticsGroup = "Cosmetic_SkellyFloor01",
		InsertAfterCosmetic = "Cosmetic_SkellyFloor01c",
		ShopCategory = "CosmeticsShop_PreRun",
		SetAnimationIds = { 587209 },
		IconPath = "JarlUlsfark-MelinoeCallsForAidCosmetics\\Travel_TerrainFlourish_04a_Icon",
		CosmeticAnimationPath = "JarlUlsfark-MelinoeCallsForAidCosmetics\\Travel_TerrainFlourish_04a",
		AnimationScale = 4,
		GameStateRequirements = {
			NamedRequirements = { "T1Cosmetic" },
            {
			    PathTrue = { "GameState", "WeaponsUnlocked", "ChronosAspect" }
		    },
		},
		AlwaysRevealImmediately = true,
		Cost = {
			CosmeticsPoints = 250,
			CharonPoints = 2,
			OreIMarble = 2,
		},
		RevealReactionVoiceLines = {
			{
				PreLineWait = 0.35,
				ObjectType = "NPC_Skelly_01",
				RequiredSourceValueFalse = "InPartnerConversation",
				{ Cue = "/VO/Skelly_0256", Text = "{#Emph}Ooh{#Prev}, scary..." },
			},
			{
				PreLineWait = 0.35,
				ObjectType = "NPC_Dora_01",
				{ Cue = "/VO/Dora_0470", Text = "A more-imposing place for the good Commander to stand.", PreLineFunctionName = "GenericPresentation", PreLineFunctionArgs = game.PresetAudioArgs.DoraNormalAppearArgs, },
			},
		},
	},
}

for _, cosmeticData in ipairs(preRunCosmetics) do
	if cosmeticData.GameStateRequirements == nil then
		cosmeticData.GameStateRequirements = {}
	end
	CosmeticsAPI.RegisterCosmetic(cosmeticData)
end