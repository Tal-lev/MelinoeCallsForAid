OverwriteTableKeys( TraitData, {
    ChronosAgilityCostume = {
        InheritFrom = { "AgilityCostume" },
        Costume = "GR2/ChronosReformed_Lavender",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosCastDamageCostume = {
        InheritFrom = { "CastDamageCostume" },
        Costume = "GR2/ChronosReformed_Fuchsia",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosManaCostume = {
        InheritFrom = { "ManaCostume" },
        Costume = "GR2/ChronosReformed_Azure",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosVitalityCostume = {
        InheritFrom = { "VitalityCostume" },
        Costume = "GR2/ChronosReformed_Emerald",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosHighArmorCostume = {
        InheritFrom = { "HighArmorCostume" },
        Costume = "GR2/ChronosReformed_Onyx",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosIncomeCostume = {
        InheritFrom = { "IncomeCostume" },
        Costume = "GR2/ChronosReformed_Gilded",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
    ChronosEscalatingCostume = {
        InheritFrom = { "EscalatingCostume" },
        Costume = "GR2/ChronosReformed_Crimson",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    },
})
-- Add Chronos Costumes to list
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosAgilityCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosCastDamageCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosManaCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosVitalityCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosHighArmorCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosIncomeCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "ChronosEscalatingCostume")

-- Add restriction to normal costumes so they won't appear in Chronos
TraitData.AgilityCostume.GameStateRequirements = TraitData.AgilityCostume.GameStateRequirements or {}
table.insert(TraitData.AgilityCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.CastDamageCostume.GameStateRequirements = TraitData.CastDamageCostume.GameStateRequirements or {}
table.insert(TraitData.CastDamageCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.ManaCostume.GameStateRequirements = TraitData.ManaCostume.GameStateRequirements or {}
table.insert(TraitData.ManaCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.VitalityCostume.GameStateRequirements = TraitData.VitalityCostume.GameStateRequirements or {}
table.insert(TraitData.VitalityCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.HighArmorCostume.GameStateRequirements = TraitData.HighArmorCostume.GameStateRequirements or {}
table.insert(TraitData.HighArmorCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.IncomeCostume.GameStateRequirements = TraitData.IncomeCostume.GameStateRequirements or {}
table.insert(TraitData.IncomeCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.SpellCostume.GameStateRequirements = TraitData.SpellCostume.GameStateRequirements or {}
table.insert(TraitData.SpellCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
TraitData.EscalatingCostume.GameStateRequirements = TraitData.EscalatingCostume.GameStateRequirements or {}
table.insert(TraitData.EscalatingCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})

-- Add the restriction to Arachne choice selection.
local ChronosCostumeTraits = {"ChronosAgilityCostume","ChronosCastDamageCostume", "ChronosManaCostume", "ChronosVitalityCostume",
"ChronosHighArmorCostume", "ChronosIncomeCostume", "ChronosEscalatingCostume"}
for key, value in pairs(PresetEventArgs.ArachneCostumeChoices.UpgradeOptions) do
    if not Contains(ChronosCostumeTraits, value.ItemName) then
        if not value.GameStateRequirements then
            value.GameStateRequirements = {}
        end
        table.insert(value.GameStateRequirements, {
            Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
        })
    end
end

--Add new traits to list
for key,value in pairs(ChronosCostumeTraits) do
    table.insert(PresetEventArgs.ArachneCostumeChoices.UpgradeOptions, {
        Type = "Trait",
        ItemName = value,
        Rarity = "Common",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
    })
end
