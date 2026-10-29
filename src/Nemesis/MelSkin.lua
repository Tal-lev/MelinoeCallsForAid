local nemesisDressData = {
    Lavender =
    {
        GrannyTexture = "GR2/Nemesis_Color_Lavender",
        Color = {206, 168, 238, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisAgilityCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Azure =
    {
        GrannyTexture = "GR2/Nemesis_Color_Azure",
        Color = {0, 89, 220, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisManaCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Emerald =
    {
        GrannyTexture = "GR2/Nemesis_Color_Emerald",
        Color = {20, 200, 40, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisVitalityCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Onyx =
    {
        GrannyTexture = "GR2/Nemesis_Color_Onyx",
        Color = {49, 41, 41, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisHighArmorCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Fuchsia =
    {
        GrannyTexture = "GR2/Nemesis_Color_Fuchsia",
        Color = {200, 69, 134, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisCastDamageCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Gilded =
    {
        GrannyTexture = "GR2/Nemesis_Color_Gilded",
        Color = {216, 171, 0, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisIncomeCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    Moonlight =
    {
        GrannyTexture = "GR2/Nemesis_Color_Moonlight",
        Color = {204, 215, 243, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisSpellCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    --Crimson =
    --{
    --    GrannyTexture = "GR2/Nemesis_Color_Crimson",
    --    Color = {220, 0, 0, 255},
    --    IsArachne = true,
    --},
    --["Dark Side"] =
    --{
    --    GrannyTexture = "Models/Chronos/ChronosShadow_Color",
    --    Outline =
    --    {
    --        R = game.Color.ChronosVoice[1],
    --        G = game.Color.ChronosVoice[2],
    --        B = game.Color.ChronosVoice[3],
    --        Opacity = 0.7,
    --        Thickness = 2,
    --        Threshold = 0.6,
    --        FadeInDuration = 0.6,
    --    },
    --    Color = {70, 206, 125, 255},
    --},
    --["Alternate Time"] =
    --{
    --    GrannyTexture = "GR2/Chronos_Color",
    --},
    Slanesh = 
    {
        GrannyTexture = "GR2/Nemesis_Color_Slanesh",
        Color = {206, 168, 238, 255},
    },
    Visage =
    {
        GrannyTexture = "GR2/NemesisDream_Color",
        Outline =
        {
            R = 230,
            G = 23,
            B = 0,
            Opacity = 0.8,
            Thickness = 3,
            Threshold = 0.6,
        },
        Color = {230, 23, 0, 255},
    },
    None =
    {
        GrannyTexture = "",
    },
}

local dressOrder = {
    "Lavender",
    "Azure",
    "Emerald",
    "Onyx",
    "Fuchsia",
    "Gilded",
    "Moonlight",
    --"Crimson",
    --"Dark Side",
    --"Alternate Time",
    "Visage",
    "None",
}

local function isNemesisActive()
    return game.HeroHasTrait("NemesisAspect")
end

local menuParams = {
    OffsetY = -40,
    ZoomFraction = 0.9
}

melskin.RegisterCustomCharacter("Nemesis", nemesisDressData, dressOrder, isNemesisActive, menuParams)