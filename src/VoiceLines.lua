-- Adding Chronos Voice Lines
 local YesChronosReq = 
{
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
}

---- Adding VoiceLines ----

--Adding Blocked Death
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_0319", Text = "Not so fast...", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_0299", Text = "Am I supposed to be impressed?", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_1220", Text = "I am feeling better already!", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_1213", Text = "Rejuvenation...!", GameStateRequirements = YesChronosReq })

-- Drank a Fountain in DreamRun
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[1], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[1], { Cue = "/VO/Chronos_1103", Text = "The source of life...", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[1], { Cue = "/VO/Chronos_1105", Text = "For the road ahead.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[1], { Cue = "/VO/Chronos_1106", Text = "The water runs clear.", GameStateRequirements = YesChronosReq})
-- Drank a Fountain after boss
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[2], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[2], { Cue = "/VO/Chronos_1103", Text = "The source of life...", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[2], { Cue = "/VO/Chronos_1105", Text = "For the road ahead.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[2], { Cue = "/VO/Chronos_1106", Text = "The water runs clear.", GameStateRequirements = YesChronosReq})
-- Drank a Fountain mid room
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[4], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[4], { Cue = "/VO/Chronos_1103", Text = "The source of life...", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[4], { Cue = "/VO/Chronos_1105", Text = "For the road ahead.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.UsedFountainVoiceLines[4], { Cue = "/VO/Chronos_1106", Text = "The water runs clear.", GameStateRequirements = YesChronosReq})

--Equip Raven
local RavenCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "RavenFamiliar" },
    },
}
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0683", Text = "Foul bird!",GameStateRequirements = RavenCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0684", Text = "A {#Emph}bird{#Prev}, in {#Emph}here?", GameStateRequirements = RavenCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0685", Text = "{#Emph}Pff! {#Prev}Feathers!", GameStateRequirements = RavenCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0686", Text = "Begone, {#Emph}bird!", GameStateRequirements = RavenCond })

--Equip Frog
local FrogCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "FrogFamiliar" },
    },
}

table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0958", Text = "Contemptible {#Emph}toad!",GameStateRequirements = FrogCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0959", Text = "A common toad, in {#Emph}here?", GameStateRequirements = FrogCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0960", Text = "Foul {#Emph}frog!", GameStateRequirements = FrogCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0961", Text = "What is this {#Emph}frog?", GameStateRequirements = FrogCond })
--Equip Cat
local CatCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "CatFamiliar" },
    },
}

table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0679", Text = "Accursed feline!",GameStateRequirements = CatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0680", Text = "Damnable creature.", GameStateRequirements = CatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0681", Text = "Back off, {#Emph}cat.", GameStateRequirements = CatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0682", Text = "It {#Emph}scratched {#Prev}me!", GameStateRequirements = CatCond })
--Equip Hound
local HoundCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "HoundFamiliar" },
    },
}
--Equip Cat
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0915", Text = "{#Emph}Heel{#Prev}, foul beast!",GameStateRequirements = HoundCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0916", Text = "Back, you {#Emph}dog.", GameStateRequirements = HoundCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0917", Text = "Malicious {#Emph}cur!", GameStateRequirements = HoundCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0918", Text = "You mongrel!", GameStateRequirements = HoundCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0919", Text = "Contemptible hound!", GameStateRequirements = HoundCond })
--Equip Weasel
local PolecatCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"ChronosAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "PolecatFamiliar" },
    },
}

table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0950", Text = "Get off of me, weasel!",GameStateRequirements = PolecatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0951", Text = "You dare scratch me, weasel?", GameStateRequirements = PolecatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0952", Text = "Ill-tempered little brute!", GameStateRequirements = PolecatCond })
table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0953", Text = "A {#Emph}weasel {#Prev}bred for war?", GameStateRequirements = PolecatCond })

--Starting New Run
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0245", Text = "Three... two... {#Emph}one...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0246", Text = "Three... two... {#Emph}one...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0247", Text = "Three... two... {#Emph}one!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0248", Text = "Three... two... {#Emph}one.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0249", Text = "This... ends... {#Emph}now...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0250", Text = "This... ends... {#Emph}now...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0251", Text = "Time... to... {#Emph}die...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_0252", Text = "Time... is... {#Emph}up...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_1336", Text = "Time to go.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Chronos_1337", Text = "Right! Time to go.",GameStateRequirements = YesChronosReq })

--Devotion Gods angry
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0267", Text = "{#Emph}Urgh... gah...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0268", Text = "How... {#Emph}dare...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0273", Text = "Why... you...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0881", Text = "You... damnable...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0882", Text = "{#Emph}Guh... {#Prev}absurd...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0879", Text = "{#Emph}Gah... {#Prev}again...?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0883", Text = "Even... now...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0274", Text = "Time... out...",GameStateRequirements = YesChronosReq })

--Reach low Health
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0400", Text = "Ridiculous...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0401", Text = "Unbelievable...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0402", Text = "Outrageous...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0403", Text = "Damnation...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0389", Text = "You...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0390", Text = "How...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0391", Text = "How...?",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0392", Text = "But...",GameStateRequirements = YesChronosReq })
table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0393", Text = "This...",GameStateRequirements = YesChronosReq })

--Beat Encounter with low health
table.insert(GlobalVoiceLines.CombatResolvedLowHealthVoiceLines[2],{ Cue = "/VO/Chronos_0303", Text = "Oh-{#Emph}ho...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatResolvedLowHealthVoiceLines[2],{ Cue = "/VO/Chronos_0304", Text = "Ah-{#Emph}hah...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatResolvedLowHealthVoiceLines[2],{ Cue = "/VO/Chronos_0305", Text = "{#Emph}<Laugh>",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatResolvedLowHealthVoiceLines[2],{ Cue = "/VO/Chronos_0306", Text = "{#Emph}<Chuckle>",GameStateRequirements = YesChronosReq })

--Timer low
table.insert(HeroVoiceLines.BiomeTimerAboutToExpireVoiceLines[2],{ Cue = "/VO/Chronos_0301", Text = "Time is running out...",GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BiomeTimerAboutToExpireVoiceLines[2],{ Cue = "/VO/Chronos_0302", Text = "Time grows short...",GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BiomeTimerAboutToExpireVoiceLines[2],{ Cue = "/VO/Chronos_1211", Text = "No Time for you to spare...",GameStateRequirements = YesChronosReq })

--Kill Last Enemy in room
table.insert(GlobalVoiceLines.KillingEnemyVoiceLines[1],{ Cue = "/VO/Chronos_0313", Text = "Wither...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.KillingEnemyVoiceLines[1],{ Cue = "/VO/Chronos_0314", Text = "Begone...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.KillingEnemyVoiceLines[1],{ Cue = "/VO/Chronos_0327", Text = "Learn some respect!",GameStateRequirements = YesChronosReq })

--Gifting Icarus
table.insert(GlobalVoiceLines.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Aphrodite
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Apollo
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Ares
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Demeter
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Heph
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Hera
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Hermes
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Hestia
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Poseidon
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Selene
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })
--Gifting Zeus
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0413", Text = "Here!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0414", Text = "For you!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0415", Text = "A little gift!",GameStateRequirements = YesChronosReq })

--Boon of Zeus
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1324", Text = "If you already have the might of Zeus, then this bodes well!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1278", Text = "{#Emph}This {#Prev}shall come as a {#Emph}shock!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1279", Text = "A {#Emph}storm {#Prev}is coming!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1253", Text = "My son's billowing strength?!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1254", Text = "The mark of Zeus...",GameStateRequirements = YesChronosReq })

--Boon of Hera
table.insert(LootData.HeraUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1255", Text = "That so-called {#Emph}Queen?!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HeraUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1256", Text = "My son's beloved wife?",GameStateRequirements = YesChronosReq })

--Boon of Poseidon
table.insert(LootData.PoseidonUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1325", Text = "The strength of my strong son Poseidon already at hand!",GameStateRequirements = YesChronosReq })
table.insert(LootData.PoseidonUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1257", Text = "That seafaring {#Emph}brat...",GameStateRequirements = YesChronosReq })
table.insert(LootData.PoseidonUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1258", Text = "That water-loving {#Emph}scamp...",GameStateRequirements = YesChronosReq })

--Boon of Demeter
table.insert(LootData.DemeterUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1259", Text = "Unseasonably cold...!",GameStateRequirements = YesChronosReq })
table.insert(LootData.DemeterUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1260", Text = "A {#Emph}chill {#Prev}here in these {#Emph}depths?",GameStateRequirements = YesChronosReq })

--Boon of Apollo
table.insert(LootData.ApolloUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1262", Text = "The light of the {#Emph}sun?!",GameStateRequirements = YesChronosReq })
table.insert(LootData.ApolloUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1261", Text = "Far too much blasted light...",GameStateRequirements = YesChronosReq })

--Boon of Hephaestus
table.insert(LootData.HephaestusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1265", Text = "The forge-god strikes...!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HephaestusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1266", Text = "What {#Emph}is {#Prev}that clanging sound?",GameStateRequirements = YesChronosReq })

--Boon of Hestia
table.insert(LootData.HestiaUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1267", Text = "You dusted off old {#Emph}Hestia!",GameStateRequirements = YesChronosReq })
table.insert(LootData.HestiaUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1268", Text = "Seems rather warm in here...!",GameStateRequirements = YesChronosReq })

--Boon of Ares
table.insert(LootData.AresUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1269", Text = "The vicious god of war...",GameStateRequirements = YesChronosReq })
table.insert(LootData.AresUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1270", Text = "I'll show that Ares real war...",GameStateRequirements = YesChronosReq })

--Boon of Selene
table.insert(LootData.SpellDrop.OnSpawnVoiceLines[1], { Cue = "/VO/Chronos_0674", Text = "The Moon shines even here...",GameStateRequirements = YesChronosReq })
table.insert(LootData.SpellDrop.OnSpawnVoiceLines[1], { Cue = "/VO/Chronos_0672", Text = "The Moon's own light...",GameStateRequirements = YesChronosReq })

-- Encounter Generic MiniBoss Start
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0339", Text = "How frightening.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0340", Text = "{#Emph}Ohh{#Prev}, how fierce.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0341", Text = "Oh dear.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0342", Text = "{#Emph}Oh no...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0343", Text = "Shall that be all?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0344", Text = "{#Emph}Tut-tut...!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0345", Text = "Do cut it out?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0348", Text = "Are you quite done?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0153", Text = "{#Emph}Temper!",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0154", Text = "The {#Emph}nerve!",GameStateRequirements = YesChronosReq })

--Encounter MiniBoss Assassin
table.insert(GlobalVoiceLines.MiniBossEncounterStartVoiceLines[3],{ Cue = "/VO/Chronos_0931", Text = "Come to assassinate me with those knives?",GameStateRequirements = YesChronosReq })

--Health
table.insert(GlobalVoiceLines.UsedHealDropVoiceLines[1],{ Cue = "/VO/Chronos_1214", Text = "Time heals all wounds...",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.UsedHealDropVoiceLines[1],{ Cue = "/VO/Chronos_1219", Text = "Heal me faster, blast you all!",GameStateRequirements = YesChronosReq })

--Hecate Greetings
table.insert(GlobalVoiceLines.HecateBossGreetingLines[7],{ Cue = "/VO/Chronos_0930", Text = "That staff of yours is no match for my scythe.", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.HecateBossGreetingLines[7],{ Cue = "/VO/Chronos_0932", Text = "Those torches of yours made you easy to detect.", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.HecateBossGreetingLines[7],{ Cue = "/VO/Chronos_1230", Text = "Such a night...", GameStateRequirements = YesChronosReq })

--Hecate Defeated
table.insert(HeroVoiceLines.HecateDefeatedVoiceLines[6],{ Cue = "/VO/Chronos_0336", Text = "Too slow, my girl...", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.HecateDefeatedVoiceLines[6],{ Cue = "/VO/Chronos_0337", Text = "Alas, my girl...", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.HecateDefeatedVoiceLines[6],{ Cue = "/VO/Chronos_0298", Text = "My girl, would you please die?", GameStateRequirements = YesChronosReq })

-- Infested Cerberus fight start 
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_1072", Text = "To have come all this way...",GameStateRequirements = YesChronosReq })
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0008", Text = "Greetings, little one.",GameStateRequirements = YesChronosReq })
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0024", Text = "How fare you, little one?",GameStateRequirements = YesChronosReq })
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_1225", Text = "{#Emph}<Scoff>",GameStateRequirements = YesChronosReq })
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0027", Text = "{#Emph}There {#Prev}you are.",GameStateRequirements = YesChronosReq })

--Typhon Start Fight
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/Chronos_0310", Text = "Have you no dignity at all?",GameStateRequirements = YesChronosReq })

--Polyphemus Greeting
table.insert(GlobalVoiceLines.PolyphemusGreetingLines[6],{ Cue = "/VO/Chronos_0925", Text = "Are you enjoying this nightly routine?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.PolyphemusGreetingLines[6],{ Cue = "/VO/Chronos_1064", Text = "Expecting someone else?",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.PolyphemusGreetingLines[6],{ Cue = "/VO/Chronos_0008", Text = "Greetings, little one.",GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.PolyphemusGreetingLines[6],{ Cue = "/VO/Chronos_0024", Text = "How fare you, little one?",GameStateRequirements = YesChronosReq })

--Polyphemus Kill
table.insert(EnemyData.Polyphemus.BossKillVoiceLines[5],{ Cue = "/VO/Chronos_0656", Text = "You are the sheep here.",GameStateRequirements = YesChronosReq })
table.insert(EnemyData.Polyphemus.BossKillVoiceLines[5],{ Cue = "/VO/Chronos_0658", Text = "Livestock...",GameStateRequirements = YesChronosReq })

-- Entering Prometheus Fight
table.insert(RoomData.P_Boss01.EnterVoiceLines[7],{ Cue = "/VO/Chronos_0927", Text = "Decided to give poor Typhon a break?",GameStateRequirements = YesChronosReq })

--Prometheus Memory Game
table.insert(EnemyData.Prometheus.MemoryAttackIntroVoiceLines[4],{ Cue = "/VO/Chronos_0928", Text = "How shall Olympus withstand Typhon with you here?",GameStateRequirements = YesChronosReq })

--Prometheus Kill Lines
table.insert(EnemyData.Prometheus.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0197", Text = "An inevitable outcome, nothing more.", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.Prometheus.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0198", Text = "We must do this again some other time.", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.Prometheus.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0257", Text = "The same predictable result, yet you persist.", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.Prometheus.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0472", Text = "You ought not have anticipated any other outcome.", GameStateRequirements = YesChronosReq})

--Scylla Greetings
table.insert(GlobalVoiceLines.ScyllaGreetingLines[2],{ Cue = "/VO/Chronos_0929", Text = "Night after night you carry on like this?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ScyllaGreetingLines[2],{ Cue = "/VO/Chronos_0783", Text = "Right on Time.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ScyllaGreetingLines[2],{ Cue = "/VO/Chronos_0029", Text = "Greetings.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ScyllaGreetingLines[2],{ Cue = "/VO/Chronos_1119", Text = "Without further ado...", GameStateRequirements = YesChronosReq})

--Fishing Caught
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Chronos_0456", Text = "Behold!", GameStateRequirements = YesChronosReq})

--Familiar Switching Costume
table.insert(GlobalVoiceLines.FamiliarMiscSwitchCostumeVoiceLines[1], { Cue = "/VO/Chronos_0662", Text = "Oh...!", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.FamiliarMiscSwitchCostumeVoiceLines[1], { Cue = "/VO/Chronos_0666", Text = "If you could see yourself.", GameStateRequirements = YesChronosReq})

--Start of Icarus Encounters
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/Chronos_0203", Text = "A visitor, at this hour?", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/Chronos_0984", Text = "Looking for someone?", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/Chronos_1048", Text = "You again...", GameStateRequirements = YesChronosReq})

--Start of Artemis Encounters
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3], { Cue = "/VO/Chronos_0203", Text = "A visitor, at this hour?", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3], { Cue = "/VO/Chronos_0206", Text = "We meet again, my girl.", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3], { Cue = "/VO/Chronos_0984", Text = "Looking for someone?", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3], { Cue = "/VO/Chronos_1048", Text = "You again...", GameStateRequirements = YesChronosReq})

--Costume
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0946", Text = "My, what a lovely dress.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0948", Text = "Oh good, you brought a change of clothes!", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0807", Text = "Your silk is still intact?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0808", Text = "That silk lasted this long?", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0809", Text = "Your silk has served you well.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/Chronos_0664", Text = "A new look!", GameStateRequirements = YesChronosReq})

--Zagreus
table.insert(GlobalVoiceLines.ZagreusBossGreetingLines[4],{ Cue = "/VO/Chronos_0626", Text = "What a meddlesome child that Hades has in you.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ZagreusBossGreetingLines[4],{ Cue = "/VO/Chronos_0936", Text = "At least you bring a proper weapon to our fight.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ZagreusBossGreetingLines[4],{ Cue = "/VO/Chronos_0300", Text = "Youthful vigor, nothing more.", GameStateRequirements = YesChronosReq})
table.insert(GlobalVoiceLines.ZagreusBossGreetingLines[4],{ Cue = "/VO/Chronos_1247", Text = "You have your father's {#Emph}mood...", GameStateRequirements = YesChronosReq})


--Athena encounter end
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/Chronos_1209", Text = "You seem a little short of breath...", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/Chronos_1207", Text = "You are late.", GameStateRequirements = YesChronosReq})

--Athena interact voicelines
table.insert(EnemyData.NPC_Athena_01.InteractVoiceLines[1],{ Cue = "/VO/Chronos_1210", Text = "You seem rather in a hurry...", GameStateRequirements = YesChronosReq})
table.insert(EnemyData.NPC_Athena_01.InteractVoiceLines[1],{ Cue = "/VO/Chronos_0798", Text = "You look a bit unwell.", GameStateRequirements = YesChronosReq})

--Chronos Legions sighted
table.insert(GlobalVoiceLines.ChronosLegionsSightedVoiceLines,{ Cue = "/VO/Chronos_0676", Text = "My legions are susceptible...", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.ChronosLegionsSightedVoiceLines,{ Cue = "/VO/Chronos_0678", Text = "Get your {#Emph}own {#Prev}servants!", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.ChronosLegionsSightedVoiceLines,{ Cue = "/VO/Chronos_0921", Text = "What lunacy is {#Emph}this?", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.ChronosLegionsSightedVoiceLines,{ Cue = "/VO/Chronos_0653", Text = "My {#Emph}legions!", GameStateRequirements = YesChronosReq })

--Killing Eris
table.insert(EnemyData.Eris.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0201", Text = "What did you hope you would accomplish here?", GameStateRequirements = YesChronosReq })
table.insert(EnemyData.Eris.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0258", Text = "What did you expect would change this time?", GameStateRequirements = YesChronosReq })

--Starting Combat
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0621", Text = "You rabble-rousing miscreant, {#Emph}again?", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0316", Text = "You shall be cut in twain...", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0317", Text = "You shall be brought to heel!", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0318", Text = "Expire...", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0338", Text = "My scythe shall find you.", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0331", Text = "Relent.", GameStateRequirements = YesChronosReq })
table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0319", Text = "Not so fast...", GameStateRequirements = YesChronosReq })

modutil.mod.Path.Wrap("DoPatches", function(baseFunc)
    if rom.mods['NikkelM-Zagreus_Journey'] then
    
        --Robbing Charon
        table.insert(HeroVoiceLines.ForbiddenShopItemTakenVoiceLines[2],{ Cue = "/VO/Chronos_1341", Text = "{#Emph}A golden opportunity!", GameStateRequirements = YesChronosReq })
        table.insert(HeroVoiceLines.ForbiddenShopItemTakenVoiceLines[2],{ Cue = "/VO/Chronos_1343", Text = "{#Emph}Gold!", GameStateRequirements = YesChronosReq })
        table.insert(HeroVoiceLines.ForbiddenShopItemTakenVoiceLines[2],{ Cue = "/VO/Chronos_1340", Text = "{#Emph}Solid Gold!", GameStateRequirements = YesChronosReq })
        --Getting Caught Robbing Charon
        table.insert(HeroVoiceLines.ForbiddenShopItemCaughtVoiceLines,{ Cue = "/VO/Chronos_0395", Text = "You would dare?", GameStateRequirements = YesChronosReq })
        table.insert(HeroVoiceLines.ForbiddenShopItemCaughtVoiceLines,{ Cue = "/VO/Chronos_0397", Text = "Absurd...", GameStateRequirements = YesChronosReq })
        table.insert(HeroVoiceLines.ForbiddenShopItemCaughtVoiceLines,{ Cue = "/VO/Chronos_0398", Text = "Preposterous...", GameStateRequirements = YesChronosReq })
       


        --Hades Room Entrance
        table.insert(RoomData.D_Boss01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0937", Text = "You mock me with all these nightly affronts.", GameStateRequirements = YesChronosReq})
        table.insert(RoomData.D_Boss01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0938", Text = "Go on, face me again, see if I care!", GameStateRequirements = YesChronosReq})
        table.insert(RoomData.D_Boss01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0338", Text = "My scythe shall find you.", GameStateRequirements = YesChronosReq})
        table.insert(RoomData.D_Boss01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0382", Text = "You upstart!", GameStateRequirements = YesChronosReq})

        --Hades Injures player
        table.insert(EnemyData.Hades.PlayerInjuredVoiceLines,1,{ Cue = "/VO/Chronos_0372", Text = "Arrogant child.", GameStateRequirements = YesChronosReq})
        table.insert(EnemyData.Hades.PlayerInjuredVoiceLines,1,{ Cue = "/VO/Chronos_0373", Text = "Ignorant child.", GameStateRequirements = YesChronosReq})
        table.insert(EnemyData.Hades.PlayerInjuredVoiceLines,1,{ Cue = "/VO/Chronos_0374", Text = "Mannerless child...", GameStateRequirements = YesChronosReq})
        table.insert(EnemyData.Hades.PlayerInjuredVoiceLines,1,{ Cue = "/VO/Chronos_0375", Text = "Contemptuous child...", GameStateRequirements = YesChronosReq})
    end
    baseFunc()
end)


-- Enemies?

--{ Cue = "/VO/Chronos_0311", Text = "A lasting pain..." },
--{ Cue = "/VO/Chronos_0312", Text = "It lingers, does it not?" },
--{ Cue = "/VO/Chronos_0320", Text = "You cannot run forever..." },
--{ Cue = "/VO/Chronos_0321", Text = "Heedless whelp." },
--{ Cue = "/VO/Chronos_0322", Text = "Impetuous of you..." },
--{ Cue = "/VO/Chronos_0323", Text = "There..." },
--{ Cue = "/VO/Chronos_0324", Text = "Prepared for more?" },
--{ Cue = "/VO/Chronos_0325", Text = "What now?" },
--{ Cue = "/VO/Chronos_0326", Text = "How daft you are..." },
--{ Cue = "/VO/Chronos_0328", Text = "You had it coming." },
--{ Cue = "/VO/Chronos_0329", Text = "We are not done." },
--{ Cue = "/VO/Chronos_0330", Text = "Another, then?" },
--{ Cue = "/VO/Chronos_0332", Text = "Relent, blast you!" },
--{ Cue = "/VO/Chronos_0333", Text = "Embarrassing." },
--{ Cue = "/VO/Chronos_0294", Text = "Your strength shall fail you..." },
--{ Cue = "/VO/Chronos_0295", Text = "But one more cut or two..." },
--{ Cue = "/VO/Chronos_0296", Text = "You only make things worse!" },

--Won Encounter
--{ Cue = "/VO/Chronos_0014", Text = "I think not."
--{ Cue = "/VO/Chronos_0095", Text = "That shall not work.",

--Return from polymorph
--{ Cue = "/VO/Chronos_0656", Text = "You are the sheep here." },
--{ Cue = "/VO/Chronos_0657", Text = "This foul trick." },

--Eris
--{ Cue = "/VO/Chronos_0935", Text = "You look absurd with those newfangled armaments.",
--{ Cue = "/VO/Chronos_0336", Text = "Too slow, my girl..." },
--{ Cue = "/VO/Chronos_0337", Text = "Alas, my girl..." },
--{ Cue = "/VO/Chronos_0298", Text = "My girl, would you please die?" },
--{ Cue = "/VO/Chronos_0310", Text = "Have you no dignity at all?" },
--{ Cue = "/VO/Chronos_0372", Text = "Arrogant child." },
--{ Cue = "/VO/Chronos_0373", Text = "Ignorant child." },
--{ Cue = "/VO/Chronos_0374", Text = "Mannerless child..." },
--{ Cue = "/VO/Chronos_0375", Text = "Contemptuous child..." },

-- Typhon
--{ Cue = "/VO/Chronos_0467", Text = "Thus history repeats as it is wont to do.",
--{ Cue = "/VO/Chronos_0261", Text = "That is what you get for all the inconvenience you caused!",
--{ Cue = "/VO/Chronos_0939", Text = "This night shall go no different from the last.",
--{ Cue = "/VO/Chronos_0308", Text = "This is the end for you." },
--{ Cue = "/VO/Chronos_0309", Text = "You have already lost." },
--Cue = "/VO/Chronos_1122", Text = "{#Emph}Now{#Prev}, monster, exactly as before!"
--{ Cue = "/VO/Chronos_1069", Text = "Come forth, Typhon!", PlayFirst = true },
--{ Cue = "/VO/Chronos_1067", Text = "Oh, Typhon...?" },
--{ Cue = "/VO/Chronos_1068", Text = "Oh, Typhon?" },
--Cue = "/VO/Chronos_1122", Text = "{#Emph}Now{#Prev}, monster, exactly as before!"

--Zag
--{ Cue = "/VO/Chronos_1244", Text = "Your father's old technique...", PlayFirst = true },
--{ Cue = "/VO/Chronos_1245", Text = "Your father's wrath..." },
--{ Cue = "/VO/Chronos_1246", Text = "Did Hades teach you that?" },
--{ Cue = "/VO/Chronos_1248", Text = "You truly are your father's child." },
--{ Cue = "/VO/Chronos_0372", Text = "Arrogant child." },
--{ Cue = "/VO/Chronos_0373", Text = "Ignorant child." },
--{ Cue = "/VO/Chronos_0374", Text = "Mannerless child..." },
--{ Cue = "/VO/Chronos_0375", Text = "Contemptuous child..." },

--Zag Attack
--{ Cue = "/VO/Chronos_0293", Text = "Our family's favorite trick..." },
--{ Cue = "/VO/Chronos_0696", Text = "Your father's tricks?" },

--Asterius
--{ Cue = "/VO/Chronos_0933", Text = "That axe of yours looks awfully unwieldy to me.",
--{ Cue = "/VO/Chronos_0936", Text = "At least you bring a proper weapon to our fight.",

--Theseus
--{ Cue = "/VO/Chronos_0395", Text = "You would dare?" },
--{ Cue = "/VO/Chronos_0397", Text = "Absurd..." },
--{ Cue = "/VO/Chronos_0398", Text = "Preposterous..." },

--Theseus EM
--{ Cue = "/VO/Chronos_0935", Text = "You look absurd with those newfangled armaments.",

--Hades


--Hades Attack
--{ Cue = "/VO/Chronos_0293", Text = "Our family's favorite trick..." },
--{ Cue = "/VO/Chronos_0878", Text = "Accursed... child..." },

--Lost Death Defiance
--{ Cue = "/VO/Chronos_1506", Text = "{#Emph}Augh...! {#Prev}How utterly mortifying...!" }
--{ Cue = "/VO/Chronos_1526", Text = "{#Emph}Aaaugh... impossible...!" }

--Dark Side
--{ Cue = "/VO/Chronos_0362", Text = "Such ferocity." },
--{ Cue = "/VO/Chronos_0363", Text = "Such rancor." },
--{ Cue = "/VO/Chronos_0364", Text = "Such rage." },

--Dodge
--{ Cue = "/VO/Chronos_0365", Text = "Mm." },
---{ Cue = "/VO/Chronos_0366", Text = "Mm, mm!" },
--{ Cue = "/VO/Chronos_0367", Text = "Tsk, tsk..." },
--{ Cue = "/VO/Chronos_0370", Text = "Manners...!" },
--{ Cue = "/VO/Chronos_0353", Text = "Oh...?" },
--{ Cue = "/VO/Chronos_0355", Text = "Please." },
--{ Cue = "/VO/Chronos_0356", Text = "Pishposh." },
--{ Cue = "/VO/Chronos_0347", Text = "Embarrassing..." },
--{ Cue = "/VO/Chronos_0349", Text = "{#Emph}Uh-uh!" },
--{ Cue = "/VO/Chronos_0348", Text = "Are you quite done?" },

--losing
--{ Cue = "/VO/Chronos_0389", Text = "You..." },
--{ Cue = "/VO/Chronos_0390", Text = "How..." },
--{ Cue = "/VO/Chronos_0391", Text = "How...?" },
--{ Cue = "/VO/Chronos_0392", Text = "But..." },
--{ Cue = "/VO/Chronos_0393", Text = "This..." },
--{ Cue = "/VO/Chronos_0394", Text = "I..." },
--{ Cue = "/VO/Chronos_1306", Text = "No, wait!" }

--Defeated Chronos
--{ Cue = "/VO/Chronos_0396", Text = "History repeats...",

--Hades Invis
--{ Cue = "/VO/Chronos_0691", Text = "Show yourself!", PlayFirst = true },
--{ Cue = "/VO/Chronos_0692", Text = "Where did you go..." },
-- Cue = "/VO/Chronos_0693", Text = "A trick of the eye." },
--{ Cue = "/VO/Chronos_0694", Text = "You cannot hide." },
--{ Cue = "/VO/Chronos_0695", Text = "You little sneak!" },

--Devotion gods won
--{ Cue = "/VO/Chronos_0543", Text = "You gods..." }  --last Start Here

--Blocked
--{ Cue = "/VO/Chronos_0873", Text = "I... think... {#Emph}not." }


--Furies: Megera
--{ Cue = "/VO/Chronos_1491", Text = "Who exactly do you think I am? Do you take me for?!", PreLineWait = 1.3 }
--{ Cue = "/VO/Chronos_1493", Text = "But by all means, {#Emph}please{#Prev}, go ahead and try! Or {#Emph}do {#Prev}it, better yet!" }


--Reached Olympus
--{ Cue = "/VO/Chronos_1226", Text = "Olympus..." }

--Lernie
--{ Cue = "/VO/Chronos_1071", Text = "Oh good, you have arrived." },
--{ Cue = "/VO/Chronos_0783", Text = "Right on Time." },

--Lernie Start Fight
--{ Cue = "/VO/Chronos_0348", Text = "Are you quite done?" }

--Mount Olympus
--{ Cue = "/VO/Chronos_1120", Text = "Foul weather, is it not?" },

--Summit
--{ Cue = "/VO/Chronos_1112", Text = "{#Emph}Giant of Storms!" },

--Dress
--{ Cue = "/VO/Chronos_0659", Text = "This is my chosen form."



--General Farewell / Goodbye
--{ Cue = "/VO/Chronos_1033", Text = "Farewell!", PlayFirst = true },
--{ Cue = "/VO/Chronos_1037", Text = "See you later!" },
--{ Cue = "/VO/Chronos_1037_B", Text = "See you later!" },
--{ Cue = "/VO/Chronos_1040", Text = "Another time!" },
--{ Cue = "/VO/Chronos_1041", Text = "Do take care!" },
--{ Cue = "/VO/Chronos_1045", Text = "Go on then!" },

--Charon / Destroying gold?
--{ Cue = "/VO/Chronos_1340", Text = "{#Emph}Solid Gold!", PlayFirst = true },
--{ Cue = "/VO/Chronos_1338", Text = "{#Emph}To Gold!" },
--{ Cue = "/VO/Chronos_1339", Text = "{#Emph}To Gold!" },
--{ Cue = "/VO/Chronos_1341", Text = "{#Emph}A golden opportunity!" },
--{ Cue = "/VO/Chronos_1342", Text = "{#Emph}Gold." },
--{ Cue = "/VO/Chronos_1343", Text = "{#Emph}Gold!" },
--{ Cue = "/VO/Chronos_1344", Text = "{#Emph}Boon? Gold!",

--Loot?
--Cue = "/VO/Chronos_1345", Text = "{#Emph}Onion? Gold!"
--{ Cue = "/VO/Chronos_1346", Text = "{#Emph}Ashes? Gold!",
--{ Cue = "/VO/Chronos_1347", Text = "{#Emph}Bones? Gold.",
--{ Cue = "/VO/Chronos_1348", Text = "{#Emph}Nectar? Gold.",
--{ Cue = "/VO/Chronos_1349", Text = "{#Emph}Hammer? Gold.",
--{ Cue = "/VO/Chronos_1350", Text = "{#Emph}Moon? Gold!",
--{ Cue = "/VO/Chronos_1351", Text = "{#Emph}Tonic? Gold!",
--{ Cue = "/VO/Chronos_1352", Text = "{#Emph}Centaur Heart? Centaur Gold!",
--{ Cue = "/VO/Chronos_1394", Text = "{#Emph}Pom? Gold.",
--{ Cue = "/VO/Chronos_1395", Text = "{#Emph}Armor? Gold!",

--Time Elemental
--{ Cue = "/VO/Chronos_1224", Text = "What is that Tempus {#Emph}doing?!",


--Check /VO/Intercom_