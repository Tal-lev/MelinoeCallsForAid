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

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosDualGrind",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Looped Arc",
			Description = "Your {$Keywords.SpecialEX} fires an additional Arc behind you."
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosSpecialDamage",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Wind Cuts",
			Description = "Your {$Keywords.Special} deals low damage at a rapid interval."
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosTriplePurge",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Golden Sale",
			Description = "Your Boons purge for triple the gold."
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
      Id = "ChronosDemeterSprintBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Frigid Dash",
      Description = "Your {$Keywords.Dash} create a gust of wind that that slows enemies.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosApolloSprintBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Blinding Dash",
      Description = "Before and after {$Keywords.Dash}, Create a blinding blast.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosHestiaSprintBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Heat Dash",
      Description = "Your {$Keywords.Dash} leaves a cinder trail, and any damage you take from burning is reduced to {$TraitData.ChronosHestiaSprintBoon.DamageClamps.Value}.",
    },
    TextOrder)
	)

    --Hexes

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "SpellChronosCircleTrait",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Wheel of Time",
      Description = "Your {$Keywords.Spell} fires an expanding ring that deals {#BoldFormatGraft}200 {#Prev}Damage.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleInTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Closing In",
      Description = "Your {$Keywords.Spell} fires an additional shrinking ring that deals {#BoldFormatGraft}200 {#Prev}Damage.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleBlindTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Blinding Halo",
      Description = "Your {$Keywords.Spell} inflicts {$Keywords.Blind} on affected enemies.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleGlowTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Shining Halo",
      Description = "Your {$Keywords.Spell} inflicts {$Keywords.DelayedKnockback} on affected enemies.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleWeakTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Bewildering Halo",
      Description = "Your {$Keywords.Spell} inflicts {$Keywords.Weak} on affected enemies.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleDamageTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Old Scars",
      Description = "Your {$Keywords.Spell} deals increased damage.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosCircleArtemisTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Aim of Artemis",
      Description = "Your {$Keywords.Spell} can be {$Keywords.FirstTimeSpell}: Your {$Keywords.Spell} may deal {$Keywords.Crit}  and {$TraitData.AresStatusDoubleDamageBoon.DamagePercent:F} damage.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
  {
      Id = "DoubleDamageChanceStatDisplay2",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}Double Damage Chance:",
      Description = "{$TooltipData.StatDisplay2}",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "SpellChronosSummonTrait",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Summon Tempus",
      Description = "Your {$Keywords.Spell} Summons a Healing Tempus for 12 seconds.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosSummonHealthTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Tempus Vigor",
      Description = "Your Summoned Tempus has {$TooltipData.ExtractData.MaxHealth} increased Max Health.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosSummonDurationTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "More Sand",
      Description = "Your {$Keywords.Spell} Summon remains for +{$TooltipData.ExtractData.DurationAmount} seconds.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosSummonUsesTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Abundant Tempus",
      Description = "You can use your {$Keywords.Spell} {#UpgradeFormat}+{$TooltipData.ExtractData.BonusUses} {#Prev}time before using a {$Keywords.Fountain}.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosDoubleHealTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Rejuvenation",
      Description = "Your {$Keywords.Spell} Summon Healing twice as quickly.",
    },
    TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosRolloverUsesTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Conservation",
      Description = "Using {$Keywords.FountainPlural} grants {#UpgradeFormat}+{$TraitData.SpellChronosSummonTrait.MaxUses} {#Prev}uses of your {$Keywords.Spell}, even if you still have uses left.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosSummonChaosTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Curiosity of Chaos",
      Description = "Your {$Keywords.Spell} can be {$Keywords.FirstTimeSpell}: Your {$Keywords.Spell} Summons a random {$Keywords.MiniBoss}.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "SpellChronosClockTrait",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Broken Clock",
      Description = "Your {$Keywords.Spell} fires two linear explosions, one vertical, one horizontal.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosClockSize",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "New Casing",
      Description = "Your {$Keywords.Spell} is larger.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosClockDiagonalOneTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Noon to Night",
      Description = "Your {$Keywords.Spell} fires at 1 and 2 O'clock.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosClockDiagonalTwoTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "AfterNoon to Dawn",
      Description = "Your {$Keywords.Spell} fires at 4 and 5 O'clock.",
    },
    TextOrder)
	)

  table.insert(data.Texts, sjson.to_object(
    {
      Id = "ChronosClockHermesTalent",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Urgency of Hermes",
      Description = "Your {$Keywords.Spell} can be {$Keywords.FirstTimeSpell}: Your {$Keywords.Spell} fires consecutively with the rotation of the clock.",
    },
    TextOrder)
	)

return data
end)