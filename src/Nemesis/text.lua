--inserting Keywords
local newKeywords = {
	"NemBleedDamageOverTime",
    "RetributionIncarnate"
}
game.ConcatTableValuesIPairs(game.KeywordList, newKeywords)

--Inserts text
local TextOrder = {
"Id",
"InheritFrom",
"DisplayName",
"Description",
"OverwriteLocalization",
}

local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/TraitText.en.sjson')
sjson.hook(file, function(data)

    -- Nemesis Aspect
    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisAspect",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Nemesis",
        Description = "{$Keywords.RetributionIncarnate}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "RetributionIncarnate",
      InheritFrom = "BaseTooltip",
      DisplayName = "Retribution Incarnate",
      Description = "Your {$Keywords.Cast} is a brief parry and your {$Keywords.Dash} is shorter yet has knockback.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_Shop",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Nemesis, Retribution Incarnate:",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_Upgrade",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Nemesis {$TooltipData.AspectRarityText}",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_FlavorText",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Proud Daughter of Night and the final act of numerous Greek Tragedies.",
		},
		TextOrder)
	)

    --Cast Boons
    table.insert(data.Texts, sjson.to_object(
    {
      Id = "NemesisZeusCastBoon",
      InheritFrom = "BaseBoon",
      DisplayName = "Storm Parry",
      Description = "Your {$Keywords.CastSet} cause lightning bolts to strike the attacker and inflict {$Keywords.Echo}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisHeraCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Engagement Parry",
      Description = "Your {$Keywords.CastSet} immediately deal damage to the attacker and inflict {$Keywords.Link}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisPoseidonCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Tidal Parry",
      Description = "Your {$Keywords.CastSet} fires a splash that knocks foes away.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisDemeterCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Arctic Parry",
      Description = "Your {$Keywords.CastSet} drops an icy shard on the attacker and inflict {$Keywords.Root}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisShardDamageHitDisplay1",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}Shard Damage:",
      Description = "{#UpgradeFormat}{$TooltipData.StatDisplay1}",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisApolloCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Solar Parry",
      Description = "Your {$Keywords.CastSet} automatically deal damage to the attacker and inflicts {$Keywords.Blind}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisBlindChanceStatDisplay2",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}{$Keywords.Blind} Chance:",
      Description = "{#UpgradeFormat}{$TooltipData.StatDisplay2}",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisAphroditeCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Rapture Parry",
      Description = "Your {$Keywords.CastSet} deals repeated damage to the attacker and inflicts {$Keywords.Weak} and pull.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisPullDamageStatDisplay1",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}Pull Damage:",
      Description = "{#UpgradeFormat}{$TooltipData.StatDisplay1}",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisHephaestusCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Anvil Parry",
      Description = "Your {$Keywords.CastSet} deals damage to the attacker.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisHestiaCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Smolder Parry",
      Description = "Your {$Keywords.CastSet} inflicts {$Keywords.Burn} to the attacker.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisAresCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Sword Parry",
      Description = "Your {$Keywords.CastSet} create a falling blade over the attacker.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisSpawnCastDamageBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Rousing Reception",
      Description = "Damage any foes as they join the {$Keywords.EncounterAlt}, wherever they appear.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisOmegaCastVolleyBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Easy Shot",
      Description = "A piercing arrow fires toward any foe damaged by your {$Keywords.Cast}.",
    },
    TextOrder)
	)
	
	--Nemesis Dresses
    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisVitalityCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Emerald Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you restore {#UpgradeFormat}{$TooltipData.ExtractData.TooltipHeal}{#Prev}{!Icons.Health} whenever you exit a {$Keywords.RoomAlt}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisManaCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Azure Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you restore {#ManaFormat}{$TooltipData.ExtractData.TooltipManaRecovery}{#Prev}{!Icons.Mana} every {#BoldFormat}1 Sec.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisAgilityCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Lavender Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you {$Keywords.HoldAlt} {#UpgradeFormat}{$TooltipData.ExtractData.TooltipSpeed}% {#Prev}faster.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisCastDamageCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Fuchsia Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes your {$Keywords.CastSet} deal {#UpgradeFormat}{$TooltipData.ExtractData.TooltipDamage:P} {#Prev} damage.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisIncomeCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Gilded Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that grants {#MoneyFormatBold}+{$TooltipData.ExtractData.TooltipCash}{!Icons.Currency} {#Prev}whenever you exit a {$Keywords.RoomAlt}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisHighArmorCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Onyx Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that creates {#BoldFormatGraft}+{$TooltipData.ExtractData.ResourceCount}{#Prev}{!Icons.MetaFabricIcon} now.",
    },
    TextOrder)
    )

	table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisSpellCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Moonlight Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you use {#ManaFormat}{$TooltipData.ExtractData.Multiplier:F}{#Prev}{!Icons.Mana} less than before to recharge your {$Keywords.Spell}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisEscalatingCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Crimson Ornaments",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you deal more damage and {#UpgradeFormat}{$TooltipData.ExtractData.IncreasePerRoom:P} {#Prev}after each {$Keywords.EncounterAlt}.",
    },
    TextOrder)
    )

	-- Nemesis Hammers

    table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisLongerCastTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Heightened Reflexes",
		Description = "Your {$Keywords.Cast} Parry has double duration."
	},
	TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisCritAfterSpecialTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Sharp Pursuit",
		Description = "Your {$Keywords.SpecialSet} grant your {$Keywords.AttackSet} {$Keywords.Crit} for 3 seconds."
	},
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisDashPushTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Shoulder Charge",
		Description = "Your {$Keywords.Dash} deals damage and has increased knockback."
	},
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisBlockRevengeTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Retribution Block",
		Description = "Blocking with your {$Keywords.Cast} can also can inflict all your {#ItalicLightFormat}'after you take damage' {#Prev}effects."
	},
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisAttackBleedTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Serrated Blade",
		Description = "your {$Keywords.AttackSet} inflicts {$Keywords.NemBleedDamageOverTime}.",
	},
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "NemBleedDamageOverTime",
      InheritFrom = "BaseTooltip",
      DisplayName = "Bleed",
      Description = "{#ItalicBoldFormat}{$Keywords.Status}: {#Prev}Afflicted foes take damage continuously. Lasts for {#BoldFormatGraft}{$TooltipData.ExtractData.NemBleedDamageOverTimeDuration} Sec.",
    },
	TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "NemBleedDamageOverTimeStatDisplay",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}{$Keywords.NemBleedDamageOverTime} Damage:",
      Description = "{#UpgradeFormat}{$TooltipData.StatDisplay1} {#Prev}{#ItalicFormat}(every {$TooltipData.ExtractData.NemBleedDamageOverTimeFuse} Sec.)",
    },
	TextOrder)
	)

return data
end)


local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/HelpText.en.sjson')
sjson.hook(file, function(data)


  table.insert(data.Texts, sjson.to_object(
    {
      Id = "Objective_NemesisPlayerKills",
      DisplayName = "{#TeamFormat}Foes Slain by {#Prev}{#TeamMelFormat}Nemesis{#Prev}: {$PlayerKills}"
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "Objective_NemesisPlayerMoney",
      DisplayName = "{#TeamFormat}Nemesis's Share{#Prev}: {#UseMoneyFormat}{$PlayerMoney}{!Icons.Currency}"
    },
    TextOrder)
	)

     table.insert(data.Texts, sjson.to_object(
    {
      Id = "Objective_RivalMelinoeKills",
      DisplayName = "{#TeamFormat}Foes Slain by {#Prev}{#TeamNemFormat}Melinoë{#Prev}: {$NemesisKills}",
    },
    TextOrder)
	)

return data
end)