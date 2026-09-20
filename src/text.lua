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

    -- Chronos Aspect
    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosAspect",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Chronos",
        Description = "The Titan of Time.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosAspect_Shop",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Chronos, The Titan of Time:",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosAspect_Upgrade",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Chronos {$TooltipData.AspectRarityText}",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosAspect_FlavorText",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Grandfather Time, Father of gods who once ruled a Golden Age.",
		},
		TextOrder)
	)
    

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosAspectStatDisplay",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "",
			Description = ""

		},
		TextOrder)
	)

    -- Chronos Dresses
    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosVitalityCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Emerald Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you restore {#UpgradeFormat}{$TooltipData.ExtractData.TooltipHeal}{#Prev}{!Icons.Health} whenever you exit a {$Keywords.RoomAlt}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosManaCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Azure Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you restore {#ManaFormat}{$TooltipData.ExtractData.TooltipManaRecovery}{#Prev}{!Icons.Mana} every {#BoldFormat}1 Sec.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosAgilityCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Lavender Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you {$Keywords.HoldAlt} {#UpgradeFormat}{$TooltipData.ExtractData.TooltipSpeed}% {#Prev}faster.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosCastDamageCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Fuchsia Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes your {$Keywords.CastSet} deal {#UpgradeFormat}{$TooltipData.ExtractData.TooltipDamage:P} {#Prev} damage.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosIncomeCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Gilded Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that grants {#MoneyFormatBold}+{$TooltipData.ExtractData.TooltipCash}{!Icons.Currency} {#Prev}whenever you exit a {$Keywords.RoomAlt}.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosHighArmorCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Onyx Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that creates {#BoldFormatGraft}+{$TooltipData.ExtractData.ResourceCount}{#Prev}{!Icons.MetaFabricIcon} now.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
    {
        Id = "ChronosEscalatingCostume",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Crimson Doublet",
        Description = "Don a {#UpgradeFormat}+{$TooltipData.ExtractData.TooltipAmount}{#Prev}{!Icons.ArmorTotal_NoTooltip} {$Keywords.Costume} that makes you deal more damage and {#UpgradeFormat}{$TooltipData.ExtractData.IncreasePerRoom:P} {#Prev}after each {$Keywords.EncounterAlt}.",
    },
    TextOrder)
    )

    -- Chronos Hammers

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosTelescopicSwing",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Rip in Time",
			Description = "Your {$Keywords.Attack} tears the fabric of reality leaving ripples in its wake."
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosRadialCast",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Time's Orbit",
			Description = "Your {$Keywords.Cast} fires {#UpgradeFormat}6 {#Prev} orbiting projectiles."
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosTeleportRift",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Frozen Pocket",
			Description = "Your {$Keywords.Dash} leaves a time bubble behind."
		},
		TextOrder)
	)

    --Dash Boons
    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosZeusSprintBoon",
      InheritFrom = "BaseBoon",
      DisplayName = "Thunder Dash",
      Description = "{$Keywords.Dash} causes surrounding foes to be struck by two lightning bolts.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosHeraSprintBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Nexus Dash",
      Description = "Your {$Keywords.Dash} create a fissure that deals damage in a long line.",
    },
    TextOrder)
	)
    
    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosPoseidonSprintBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Breaker Dash",
      Description = "After {$Keywords.Dash}, create a wave blast that knocks foes away.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosHestiaSprintBoon",
      InheritFrom = "BaseBoon",
      DisplayName = "Heat Dash",
      Description = "Your {$Keywords.Dash} leaves a cinder trail, and any damage you take from burning is reduced to {$TraitData.ChronosHestiaSprintBoon.DamageClamps.Value}.",
    },
    TextOrder)
	)

return data
end)