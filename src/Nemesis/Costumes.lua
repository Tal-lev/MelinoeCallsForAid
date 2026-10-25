OverwriteTableKeys( TraitData, {
    NemesisAgilityCostume = {
        InheritFrom = { "AgilityCostume" },
        Costume = "GR2/Nemesis_Color_Lavender",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
            {
            Path = { "CurrentRun", "Hero", "TraitDictionary", },
            HasNone = {"ChronosAspect", }
            },
        },
    },
    NemesisCastDamageCostume = {
        InheritFrom = { "CastDamageCostume" },
        Costume = "GR2/Nemesis_Color_Fuchsia",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    NemesisManaCostume = {
        InheritFrom = { "ManaCostume" },
        Costume = "GR2/Nemesis_Color_Azure",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    NemesisVitalityCostume = {
        InheritFrom = { "VitalityCostume" },
        Costume = "GR2/Nemesis_Color_Emerald",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    NemesisHighArmorCostume = {
        InheritFrom = { "HighArmorCostume" },
        Costume = "GR2/Nemesis_Color_Onyx",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    NemesisIncomeCostume = {
        InheritFrom = { "IncomeCostume" },
        Costume = "GR2/Nemesis_Color_Gilded",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    NemesisSpellCostume = {
        InheritFrom = { "SpellCostume" },
        Costume = "GR2/Nemesis_Color_Moonlight",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    },
    --NemesisEscalatingCostume = {
    --    InheritFrom = { "EscalatingCostume" },
    --    Costume = "GR2/Nemesis_Color_Crimson",
    --    GameStateRequirements =
    --    {
    --        {
    --        Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
    --        IsAny = {"NemesisAspect", }
    --        },
    --    },
    --},
})
-- Add Nemesis Costumes to list
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisAgilityCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisCastDamageCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisManaCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisVitalityCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisHighArmorCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisIncomeCostume")
table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisSpellCostume")
--table.insert( EnemyData.NPC_Arachne_01.Traits, "NemesisEscalatingCostume")

-- Add restriction to normal costumes so they won't appear in Nemesis
TraitData.AgilityCostume.GameStateRequirements = TraitData.AgilityCostume.GameStateRequirements or {}
table.insert(TraitData.AgilityCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.CastDamageCostume.GameStateRequirements = TraitData.CastDamageCostume.GameStateRequirements or {}
table.insert(TraitData.CastDamageCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.ManaCostume.GameStateRequirements = TraitData.ManaCostume.GameStateRequirements or {}
table.insert(TraitData.ManaCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.VitalityCostume.GameStateRequirements = TraitData.VitalityCostume.GameStateRequirements or {}
table.insert(TraitData.VitalityCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.HighArmorCostume.GameStateRequirements = TraitData.HighArmorCostume.GameStateRequirements or {}
table.insert(TraitData.HighArmorCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.IncomeCostume.GameStateRequirements = TraitData.IncomeCostume.GameStateRequirements or {}
table.insert(TraitData.IncomeCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.SpellCostume.GameStateRequirements = TraitData.SpellCostume.GameStateRequirements or {}
table.insert(TraitData.SpellCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
TraitData.EscalatingCostume.GameStateRequirements = TraitData.EscalatingCostume.GameStateRequirements or {}
table.insert(TraitData.EscalatingCostume.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})

-- Add the restriction to Arachne choice selection.
--local NemesisCostumeTraits = {"NemesisAgilityCostume","NemesisCastDamageCostume", "NemesisManaCostume", "NemesisVitalityCostume",
--"NemesisHighArmorCostume", "NemesisIncomeCostume", "NemesisSpellCostume", "NemesisEscalatingCostume"}
local NemesisCostumeTraits = {"NemesisAgilityCostume","NemesisCastDamageCostume", "NemesisManaCostume", "NemesisVitalityCostume",
"NemesisHighArmorCostume", "NemesisIncomeCostume", "NemesisSpellCostume"}
for key, value in pairs(PresetEventArgs.ArachneCostumeChoices.UpgradeOptions) do
    if not Contains(NemesisCostumeTraits, value.ItemName) then
        if not value.GameStateRequirements then
            value.GameStateRequirements = {}
        end
        table.insert(value.GameStateRequirements, {
            Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
        })
    end
end

--Add new traits to list
for key,value in pairs(NemesisCostumeTraits) do
    table.insert(PresetEventArgs.ArachneCostumeChoices.UpgradeOptions, {
        Type = "Trait",
        ItemName = value,
        Rarity = "Common",
        GameStateRequirements =
        {
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
            IsAny = {"NemesisAspect", }
            },
        },
    })
end



