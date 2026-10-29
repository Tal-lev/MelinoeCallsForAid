local chronosDressData = {
    Lavender =
    {
        GrannyTexture = "GR2/ChronosReformed_Lavender",
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
        GrannyTexture = "GR2/ChronosReformed_Azure",
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
        GrannyTexture = "GR2/ChronosReformed_Emerald",
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
        GrannyTexture = "GR2/ChronosReformed_Onyx",
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
        GrannyTexture = "GR2/ChronosReformed_Fuchsia",
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
        GrannyTexture = "GR2/ChronosReformed_Gilded",
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
    --Moonlight =
    --{
    --    GrannyTexture = "GR2/ChronosReformed_Color",
    --    Color = {204, 215, 243, 255},
    --    IsArachne = true,
    --},
    Crimson =
    {
        GrannyTexture = "GR2/ChronosReformed_Crimson",
        Color = {220, 0, 0, 255},
        IsArachne = true,
        GameStateRequirements = {
            {
                Path = { "GameState", "TraitsTaken" },
                CountOf = {"NemesisEscalatingCostume",},
                Comparison = ">=",
                Value = 1,
            },
        },
    },
    ["Dark Side"] =
    {
        GrannyTexture = "Models/Chronos/ChronosShadow_Color",
        Outline =
        {
            R = game.Color.ChronosVoice[1],
            G = game.Color.ChronosVoice[2],
            B = game.Color.ChronosVoice[3],
            Opacity = 0.7,
            Thickness = 2,
            Threshold = 0.6,
            FadeInDuration = 0.6,
        },
        Color = {70, 206, 125, 255},
    },
    ["Alternate Time"] =
    {
        GrannyTexture = "GR2/Chronos_Color",
    },
    Beard = {
        GrannyTexture = "GR2/ChronosReformed_Beard",
        GameStateRequirements = {
            {
                PathTrue = { "GameState", "TextLinesRecord", "NeoChronosAboutBeard01" }

            },
        },
    },
    Visage =
    {
        GrannyTexture = "GR2/ChronosDream_Color",
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
    --"Moonlight",
    "Crimson",
    "Dark Side",
    "Alternate Time",
    "Beard",
    "Visage",
    "None",
}

local function isChronosActive()
    return game.HeroHasTrait("ChronosAspect")
end

local menuParams = {
    OffsetY = -80,
    ZoomFraction = 0.8
}

melskin.RegisterCustomCharacter("Chronos", chronosDressData, dressOrder, isChronosActive, menuParams)