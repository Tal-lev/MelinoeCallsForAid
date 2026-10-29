-- Adding Chronos Voice Lines
 local YesNemesisReq = 
{
    {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAny = {"NemesisAspect", },
    },
    {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasNone = {"ChronosAspect", },
    },
}

---- Adding VoiceLines ----

--Adding Blocked Death
--table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_0319", Text = "Not so fast...", GameStateRequirements = YesChronosReq })

-- Drank a Fountain in DreamRun
--table.insert(GlobalVoiceLines.UsedFountainVoiceLines[1], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})
-- Drank a Fountain after boss
--table.insert(GlobalVoiceLines.UsedFountainVoiceLines[2], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})
-- Drank a Fountain mid room
--table.insert(GlobalVoiceLines.UsedFountainVoiceLines[4], { Cue = "/VO/Chronos_1102", Text = "Refreshing, is it not?", GameStateRequirements = YesChronosReq})

--Equip Raven
local RavenCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"NemesisAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "RavenFamiliar" },
    },
}
--table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0683", Text = "Foul bird!",GameStateRequirements = RavenCond })

--Equip Frog
local FrogCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"NemesisAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "FrogFamiliar" },
    },
}

--table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0958", Text = "Contemptible {#Emph}toad!",GameStateRequirements = FrogCond })
--Equip Cat
local CatCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"NemesisAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "CatFamiliar" },
    },
}

--table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0679", Text = "Accursed feline!",GameStateRequirements = CatCond })

--Equip Hound
local HoundCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"NemesisAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "HoundFamiliar" },
    },
}
--Equip Cat
--table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0915", Text = "{#Emph}Heel{#Prev}, foul beast!",GameStateRequirements = HoundCond })

--Equip Weasel
local PolecatCond = 
{
    {
    Path = {"CurrentRun", "Hero", "TraitDictionary"},
    HasAny = {"NemesisAspect", },
    },
    {
        Path = { "GameState", "EquippedFamiliar" },
        IsAny = { "PolecatFamiliar" },
    },
}

--table.insert(GlobalVoiceLines.FamiliarEquipVoiceLines[1], { Cue = "/VO/Chronos_0950", Text = "Get off of me, weasel!",GameStateRequirements = PolecatCond })

--Starting New Run
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Nemesis_0175", Text = "Just like guard duty...",GameStateRequirements = YesNemesisReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/NemesisField_0614", Text = "Been too long...",GameStateRequirements = YesNemesisReq })
table.insert(GlobalVoiceLines.StartNewRunVoiceLines[4],{ Cue = "/VO/Nemesis_0207", Text = "Really shouldn't get {#Emph}too {#Prev}comfortable in here...",GameStateRequirements = YesNemesisReq })


--Devotion Gods angry
--table.insert(GlobalVoiceLines.GodRejectedVoiceLines[11],{ Cue = "/VO/Chronos_0267", Text = "{#Emph}Urgh... gah...",GameStateRequirements = YesChronosReq })

--Reach low Health
--table.insert(HeroData.LowHealthVoiceLines,{ Cue = "/VO/Chronos_0400", Text = "Ridiculous...",GameStateRequirements = YesChronosReq })

--Beat Encounter with low health
--table.insert(GlobalVoiceLines.CombatResolvedLowHealthVoiceLines[2],{ Cue = "/VO/Chronos_0303", Text = "Oh-{#Emph}ho...!",GameStateRequirements = YesChronosReq })

--Timer low
--table.insert(HeroVoiceLines.BiomeTimerAboutToExpireVoiceLines[2],{ Cue = "/VO/Chronos_0301", Text = "Time is running out...",GameStateRequirements = YesChronosReq })
--Kill Last Enemy in room
--table.insert(GlobalVoiceLines.KillingEnemyVoiceLines[1],{ Cue = "/VO/Chronos_0313", Text = "Wither...",GameStateRequirements = YesChronosReq })

--Gifting Icarus
--table.insert(GlobalVoiceLines.GiftGivenVoiceLines,{ Cue = "/VO/Chronos_0412", Text = "Here, I insist!",GameStateRequirements = YesChronosReq })

--Gifting Aphrodite
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.AphroditeUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })


--Gifting Apollo
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.ApolloUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })
--Gifting Ares
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.AresUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })
--Gifting Demeter
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.DemeterUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Gifting Heph
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.HephaestusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })
--Gifting Hera
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.HeraUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })
--Gifting Hermes
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.HermesUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Gifting Hestia
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.HestiaUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Gifting Poseidon
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.PoseidonUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Gifting Selene
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.SpellDrop.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Gifting Zeus
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0045",Text = "You need all the help you can get, so here! Don't need this anyway.",GameStateRequirements = YesNemesisReq })
table.insert(LootData.ZeusUpgrade.GiftGivenVoiceLines,{ Cue = "/VO/NemesisField_0047",Text = "Won't be needing this at all, but you look like you will.",GameStateRequirements = YesNemesisReq })

--Boon of Zeus
table.insert(LootData.ZeusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0137",Text = "Don't need Olympus handing everything to you.",GameStateRequirements = YesNemesisReq })
--Boon of Hera
table.insert(LootData.HeraUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0137",Text = "Don't need Olympus handing everything to you.",GameStateRequirements = YesNemesisReq })

--Boon of Poseidon
table.insert(LootData.PoseidonUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Nemesis_0209", Text = "Well, soak it up...",GameStateRequirements = YesNemesisReq })
table.insert(LootData.PoseidonUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0133",Text = "Want a little taste of all that power for myself. Come on, I'll trade you...",GameStateRequirements = YesNemesisReq })

--Boon of Demeter
table.insert(LootData.DemeterUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Nemesis_0205", Text = "Not too hot, not too cold...",GameStateRequirements = YesNemesisReq })



--Boon of Apollo
table.insert(LootData.ApolloUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0141",Text = "Olympus isn't gonna care if you give up one little blessing, will they?",GameStateRequirements = YesNemesisReq })

--Boon of Hephaestus
table.insert(LootData.HephaestusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0141",Text = "Olympus isn't gonna care if you give up one little blessing, will they?",GameStateRequirements = YesNemesisReq })
table.insert(LootData.HephaestusUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0136",Text = "Give me some of your borrowed strength, and you'll get some of mine.",GameStateRequirements = YesNemesisReq })


--Boon of Hestia
table.insert(LootData.HestiaUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Nemesis_0205", Text = "Not too hot, not too cold...",GameStateRequirements = YesNemesisReq })
--Boon of Ares
table.insert(LootData.AresUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0142",Text = "What would it take for you to give up some of your Olympian muscle?",GameStateRequirements = YesNemesisReq })
table.insert(LootData.AresUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0135",Text = "Got something here you need, but it'll cost you some of your false power from Olympus.",GameStateRequirements = YesNemesisReq })


--Boon of Selene
table.insert(LootData.SpellDrop.OnSpawnVoiceLines[1], { Cue = "/VO/NemesisField_0573", Text = "Selene...",GameStateRequirements = YesNemesissReq })
table.insert(LootData.SpellDrop.OnSpawnVoiceLines[1], { Cue = "/VO/NemesisField_0492", Text = "You're a suck-up, Selene!",GameStateRequirements = YesNemesissReq })

-- Encounter Generic MiniBoss Start
--table.insert(GlobalVoiceLines.MiniBossEncounterMiscStartLines[2],{ Cue = "/VO/Chronos_0339", Text = "How frightening.",GameStateRequirements = YesChronosReq })

--Encounter MiniBoss Assassin
table.insert(GlobalVoiceLines.MiniBossEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0501", Text = "Hey, no fair. How come you get two blades when I only get one?",GameStateRequirements = YesNemesisReq })
					
--Health
--table.insert(GlobalVoiceLines.UsedHealDropVoiceLines[1],{ Cue = "/VO/Chronos_1214", Text = "Time heals all wounds...",GameStateRequirements = YesChronosReq })

--Hecate Greetings
--table.insert(GlobalVoiceLines.HecateBossGreetingLines[7],{ Cue = "/VO/Chronos_0930", Text = "That staff of yours is no match for my scythe.", GameStateRequirements = YesChronosReq })

--Hecate Defeated
--table.insert(HeroVoiceLines.HecateDefeatedVoiceLines[6],{ Cue = "/VO/Chronos_0336", Text = "Too slow, my girl...", GameStateRequirements = YesChronosReq })


-- Infested Cerberus fight start 
table.insert(EncounterData.BossInfestedCerberus01.EnterVoiceLines[5],{ Cue = "/VO/NemesisField_0498", Text = "Not everybody in the Fields deserves to be here, but right now it can't be helped.",GameStateRequirements = YesNemesisReq })
					
--Typhon Start Fight
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/NemesisField_0152", Text = "To the victor go the spoils. So come show me what you've got.",GameStateRequirements = YesNemesisReq })
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/NemesisField_0151",Text = "Look at you, all tough and fierce. Show me how strong you really are.",GameStateRequirements = YesNemesisReq })
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/NemesisField_0150",Text = "Can tell you're angry. Then let it out and show me what you're made of.",GameStateRequirements = YesNemesisReq })
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/NemesisField_0149",Text = "Let's see how strong you really are. Hit me, and don't hold back.",GameStateRequirements = YesNemesisReq })
table.insert(EncounterData.BossTyphonHead01.FightStartVoiceLines[6],{ Cue = "/VO/NemesisField_0148",Text = "Look at you acting tough. Go on, hit me hard as you can. Free shot.",GameStateRequirements = YesNemesisReq })


--Polyphemus Greeting
--table.insert(GlobalVoiceLines.PolyphemusGreetingLines[6],{ Cue = "/VO/Chronos_0925", Text = "Are you enjoying this nightly routine?",GameStateRequirements = YesChronosReq })

--Polyphemus Kill
--table.insert(EnemyData.Polyphemus.BossKillVoiceLines[5],{ Cue = "/VO/Chronos_0656", Text = "You are the sheep here.",GameStateRequirements = YesChronosReq })

-- Entering Prometheus Fight
--table.insert(RoomData.P_Boss01.EnterVoiceLines[7],{ Cue = "/VO/Chronos_0927", Text = "Decided to give poor Typhon a break?",GameStateRequirements = YesChronosReq })

--Prometheus Memory Game
--table.insert(EnemyData.Prometheus.MemoryAttackIntroVoiceLines[4],{ Cue = "/VO/Chronos_0928", Text = "How shall Olympus withstand Typhon with you here?",GameStateRequirements = YesChronosReq })

--Prometheus Kill Lines
--table.insert(EnemyData.Prometheus.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0197", Text = "An inevitable outcome, nothing more.", GameStateRequirements = YesChronosReq})

--Scylla Greetings
table.insert(GlobalVoiceLines.ScyllaGreetingLines[2],{ Cue = "/VO/NemesisField_0030",Text = "Can hardly stand all this water and the singing, but this has to be done." , GameStateRequirements = YesNemesisReq})

--Scylla Death
--table.insert(EnemyData.Scylla.BossKillVoiceLines[6],{ Cue = "/VO/Intercom_0089", Text = "Like so many sailors sent to a watery grave...", GameStateRequirements = YesChronosReq})


--Fishing Caught
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0182", Text = "Thank the Fates.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0183", Text = "Fair catch.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0184", Text = "Had it coming.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0185", Text = "Tough break, fish.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0187", Text = "Caught bigger ones than that.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.FishCaughtVoiceLines[1],{ Cue = "/VO/Nemesis_0193", Text = "Caught one...", GameStateRequirements = YesNemesisReq})


--Familiar Switching Costume
--table.insert(GlobalVoiceLines.FamiliarMiscSwitchCostumeVoiceLines[1], { Cue = "/VO/Chronos_0662", Text = "Oh...!", GameStateRequirements = YesChronosReq})

--Start of Icarus Encounters
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/NemesisField_0442", Text = "Got the Blade of the Underworld. Won't be needing your help here, thanks.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/NemesisField_0439",Text = "Showed up just as I was about to settle up all by myself. Well you can have your share.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Icarus_01.EncounterStartVoiceLines[4], { Cue = "/VO/NemesisField_0031",Text = "Was just about to clear the way, so why don't you pitch in.", GameStateRequirements = YesNemesisReq})

--Start of Artemis Encounters
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0581", Text = "Well, look who.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0582", Text = "Late.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0579", Text = "Oh hey.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Artemis_01.EncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0583", Text = "Got here first.", GameStateRequirements = YesNemesisReq})


--Costume
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/NemesisField_0471",Text = "...Feels much more comfortable for now, so thanks.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.CostumeChangedVoiceLines[4],{ Cue = "/VO/NemesisField_0460",Text = "Think there's something wrong with my suit. Got time to take a look?", GameStateRequirements = YesNemesisReq})

--Zagreus
--table.insert(GlobalVoiceLines.ZagreusBossGreetingLines[4],{ Cue = "/VO/Chronos_0626", Text = "What a meddlesome child that Hades has in you.", GameStateRequirements = YesChronosReq})

--Athena encounter end
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/NemesisField_0581", Text = "Well, look who.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/NemesisField_0582", Text = "Late.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/NemesisField_0579", Text = "Oh hey.", GameStateRequirements = YesNemesisReq})
table.insert(EnemyData.NPC_Athena_01.EncounterEndVoiceLines[3],{ Cue = "/VO/NemesisField_0583", Text = "Got here first.", GameStateRequirements = YesNemesisReq})


--Athena interact voicelines
--table.insert(EnemyData.NPC_Athena_01.InteractVoiceLines[1],{ Cue = "/VO/Chronos_1210", Text = "You seem rather in a hurry...", GameStateRequirements = YesChronosReq})

--Chronos Legions sighted
table.insert(GlobalVoiceLines.ChronosLegionsSightedVoiceLines,{ Cue = "/VO/NemesisField_0480", Text = "So this is where the {#Emph}real {#Prev}magick happens, huh. Let's see what the best of the Titan's armies have to offer.", GameStateRequirements = YesNemesisReq })
	
--Killing Eris
--table.insert(EnemyData.Eris.BossKillVoiceLines[4],{ Cue = "/VO/Chronos_0201", Text = "What did you hope you would accomplish here?", GameStateRequirements = YesChronosReq })

--2nd wave
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0378", Text = "One more round?", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0379", Text = "Back on your guard.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0380", Text = "Incoming.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0381", Text = "More incoming.", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0382", Text = "What did you just do?", GameStateRequirements = YesNemesisReq})
table.insert(GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines[3],{ Cue = "/VO/NemesisField_0383", Text = "What now.", GameStateRequirements = YesNemesisReq})

--Starting Combat
--table.insert(GlobalVoiceLines.CombatBeginsVoiceLines[2],{ Cue = "/VO/Chronos_0621", Text = "You rabble-rousing miscreant, {#Emph}again?", GameStateRequirements = YesChronosReq })

--Won Combat
--table.insert(GlobalVoiceLines.CombatResolvedVoiceLines[3],{ Cue = "/VO/Chronos_0014", Text = "I think not.", GameStateRequirements = YesChronosReq })

--Time Elemental
--table.insert(EnemyData.TimeElemental.EnemySightedVoiceLines,{ Cue = "/VO/Chronos_1224", Text = "What is that Tempus {#Emph}doing?!", GameStateRequirements = YesChronosReq })

--Rift of thessaly
--table.insert(RoomData.O_Intro.EnterVoiceLines[3],{ Cue = "/VO/Chronos_1120", Text = "Foul weather, is it not?", GameStateRequirements = YesChronosReq })

--Enter Olympus
--table.insert(RoomData.P_Intro.EnterVoiceLines[3],{ Cue = "/VO/Chronos_1226", Text = "Olympus...", GameStateRequirements = YesChronosReq })

--Enter Summit
--table.insert(RoomData.Q_Intro.EnterVoiceLines[3],{ Cue = "/VO/Chronos_1112", Text = "{#Emph}Giant of Storms!", GameStateRequirements = YesChronosReq })

--Pick pom
--table.insert(LootData.StackUpgrade.OnSpawnVoiceLines[1],{ Cue = "/VO/Chronos_1394", Text = "{#Emph}Pom? Gold.", GameStateRequirements = YesChronosReq })
--Pick Hammer
--table.insert(LootData.WeaponUpgrade.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1349", Text = "{#Emph}Hammer? Gold.", GameStateRequirements = YesChronosReq })
--Pick Centaur Heart
table.insert(ConsumableData.MaxHealthDrop.OnSpawnVoiceLines,{ Cue = "/VO/NemesisField_0617", Text = "Good.", GameStateRequirements = YesNemesisReq })
--Pick Tonic
--table.insert(ConsumableData.MaxManaDrop.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1351", Text = "{#Emph}Tonic? Gold!", GameStateRequirements = YesChronosReq })
--Pick Moon Talent
--table.insert(ConsumableData.TalentDrop.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1350", Text = "{#Emph}Moon? Gold!", GameStateRequirements = YesChronosReq })
--Pick Nectar
--table.insert(ConsumableData.GiftDrop.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1348", Text = "{#Emph}Nectar? Gold.", GameStateRequirements = YesChronosReq })

--Pick Bones
--table.insert(ConsumableData.MetaCurrencyDrop.ConsumedVoiceLines[2],{ Cue = "/VO/Chronos_1347", Text = "{#Emph}Bones? Gold.", GameStateRequirements = YesChronosReq })
--Pick Gold room reward
--table.insert(ConsumableData.RoomMoneyDrop.OnSpawnVoiceLines,{ Cue = "/VO/Chronos_1340", Text = "{#Emph}Solid Gold!", GameStateRequirements = YesChronosReq })

--Misc Boss Barely survived
table.insert(GlobalVoiceLines.BarelySurvivedBossFightVoiceLines[1],{ Cue = "/VO/NemesisField_0535",Text = "Want to know just how hard I got hit cleaning this place?", GameStateRequirements = YesNemesisReq })
table.insert(GlobalVoiceLines.BarelySurvivedBossFightVoiceLines[1],{ Cue = "/VO/NemesisField_0109",Text = "Want to see this through, better be ready to bleed.", GameStateRequirements = YesNemesisReq })
table.insert(GlobalVoiceLines.BarelySurvivedBossFightVoiceLines[1],{ Cue = "/VO/NemesisField_0107",Text = "Took a hard hit getting here, how about you take one too.", GameStateRequirements = YesNemesisReq })




modutil.mod.Path.Wrap("DoPatches", function(baseFunc)
    if rom.mods['NikkelM-Zagreus_Journey'] then
    
        --Robbing Charon
        table.insert(HeroVoiceLines.ForbiddenShopItemTakenVoiceLines[2],{ Cue = "/VO/NemesisField_0508", Text = "Sure beats standing around in the Crossroads. Especially when I get your Gold.", GameStateRequirements = YesNemesisReq })
        
        --Getting Caught Robbing Charon
        table.insert(HeroVoiceLines.ForbiddenShopItemCaughtVoiceLines,{ Cue = "/VO/NemesisField_0440",Text = "Let's split the killing down the middle, give or take. As in, {#Emph}I'll {#Prev}take your Gold.", GameStateRequirements = YesNemesisReq })
        table.insert(HeroVoiceLines.ForbiddenShopItemCaughtVoiceLines,{ Cue = "/VO/NemesisField_0038",Text = "Remember to be extra reckless since your Gold is on the line.", GameStateRequirements = YesNemesisReq })

        --Hades Room Entrance
        --table.insert(RoomData.D_Boss01.EnterVoiceLines[5],{ Cue = "/VO/Chronos_0937", Text = "You mock me with all these nightly affronts.", GameStateRequirements = YesChronosReq})

        --Hades Injures player
        --table.insert(EnemyData.Hades.PlayerInjuredVoiceLines,1,{ Cue = "/VO/Chronos_0372", Text = "Arrogant child.", GameStateRequirements = YesChronosReq})
    end
    baseFunc()
end)

--Grunt?
--{ Cue = "/VO/NemesisField_0284", Text = "{#Emph}Hrm." },
--{ Cue = "/VO/NemesisField_0285", Text = "{#Emph}Grr." },
--{ Cue = "/VO/NemesisField_0286", Text = "{#Emph}Augh." },
--{ Cue = "/VO/NemesisField_0287", Text = "{#Emph}Rngh." },
--{ Cue = "/VO/NemesisField_0288", Text = "You..." },
--{ Cue = "/VO/NemesisField_0289", Text = "{#Emph}Khh..." },
--{ Cue = "/VO/NemesisField_0565", Text = "Quit it." },
--{ Cue = "/VO/NemesisField_0566", Text = "Not bad." },
--{ Cue = "/VO/NemesisField_0567", Text = "So?" },
--{ Cue = "/VO/NemesisField_0568", Text = "{#Emph}Eh." },


--Failed Fishing
--{ Cue = "/VO/Nemesis_0194", Text = "Could've caught it." },
--{ Cue = "/VO/Nemesis_0195", Text = "Empty-handed." },
--{ Cue = "/VO/Nemesis_0196", Text = "Caught out." },
--{ Cue = "/VO/Nemesis_0197", Text = "No fair, right?", PlayFirst = true },

--FishingInProgressVoiceLines
--{ Cue = "/VO/Nemesis_0178", Text = "Hold..." },
--{ Cue = "/VO/Nemesis_0179", Text = "See one down there...?", PlayFirst = true },
--{ Cue = "/VO/Nemesis_0181", Text = "Eyes open..." },


--Fishing Success

--BAD{ Cue = "/VO/Nemesis_0186", Text = "Lucky catch." },
--BAD{ Cue = "/VO/Nemesis_0188", Text = "Lured it with magick didn't you." },
--BAD{ Cue = "/VO/Nemesis_0189", Text = "Can we get back to work?" },
--BAD{ Cue = "/VO/Nemesis_0190", Text = "Big deal." },
--{ Cue = "/VO/Nemesis_0182", Text = "Thank the Fates." },
--{ Cue = "/VO/Nemesis_0183", Text = "Fair catch." },
--{ Cue = "/VO/Nemesis_0184", Text = "Had it coming." },
--{ Cue = "/VO/Nemesis_0185", Text = "Tough break, fish." },
--{ Cue = "/VO/Nemesis_0187", Text = "Caught bigger ones than that.", PlayFirst = true },
--{ Cue = "/VO/Nemesis_0191", Text = "Got you." },
--{ Cue = "/VO/Nemesis_0192", Text = "You're mine." },
--{ Cue = "/VO/Nemesis_0193", Text = "Caught one...", PlayFirst = true },


--{ Cue = "/VO/NemesisField_0296", Text = "{#Emph}Huh." },
--{ Cue = "/VO/NemesisField_0297", Text = "Right..." },
--{ Cue = "/VO/NemesisField_0298", Text = "No fair..." },
--{ Cue = "/VO/NemesisField_0299", Text = "Seriously?" },
--{ Cue = "/VO/NemesisField_0300", Text = "No way..." },
--{ Cue = "/VO/NemesisField_0301", Text = "How..." },
--{  },
--{ Cue = "/VO/NemesisField_0574", Text = "Show-off." },
--{ Cue = "/VO/NemesisField_0575", Text = "Showing off." },
--{ Cue = "/VO/NemesisField_0576", Text = "Whoa." },
--{ Cue = "/VO/NemesisField_0577", Text = "Stop that." },
--{ Cue = "/VO/NemesisField_0578", Text = "{#Emph}Ungh." },

--GlobalVoiceLines.ExtraDoorEncounterStartVoiceLines 


--{ Cue = "/VO/Nemesis_0298", Text = "Thanks." }
--{ Cue = "/VO/Nemesis_0290", Text = "Oh." }
--{ Cue = "/VO/Nemesis_0120", Text = "Whatever." }

--{ Cue = "/VO/Nemesis_0175", Text = "Just like guard duty..." },
--{ Cue = "/VO/Nemesis_0176", Text = "This what you had in mind?" },
--{ Cue = "/VO/Nemesis_0177", Text = "Make it a fair fight.", PlayFirst = true },
		
--Aphrodite?
--{ Cue = "/VO/Nemesis_0206", Text = "What are {#Emph}you {#Prev}looking at?" },
		
--Random gods?
--{ Cue = "/VO/Nemesis_0210", Text = "{#Emph}<Sigh>" },
--{ Cue = "/VO/Nemesis_0211", Text = "Well, what is it." },

--Biome?
--{ Cue = "/VO/Nemesis_0207", Text = "Really shouldn't get {#Emph}too {#Prev}comfortable in here...",
--Cue = "/VO/NemesisField_0522",Text = "Almost there. This should help you go the rest of the way."

--Lost?
--{ Cue = "/VO/Nemesis_0208", Text = "{#Emph}Ungh{#Prev}, damn...", PlayFirst = true,

--{ Cue = "/VO/NemesisField_0614", Text = "Been too long...", PlayFirst = true },
--{ Cue = "/VO/NemesisField_0617", Text = "Good." },
--{ Cue = "/VO/NemesisField_0618", Text = "What now...?" },
--{ Cue = "/VO/NemesisField_0619", Text = "Well...?" },
--{ Cue = "/VO/NemesisField_0620", Text = "Now you.", PlayFirst = true },
--{ Cue = "/VO/Nemesis_0373", Text = "Melinoë...", PlayFirst = true },
--{ Cue = "/VO/Nemesis_0374", Text = "...Princess.", PlayFirst = true }
--{ Cue = "/VO/Nemesis_0433", Text = "Tell me more." }

--Generic Boss kill
--{ Cue = "/VO/Nemesis_0406", Text = "It's done...?" }

--GlobalVoiceLines.NemesisExorcismReactionVoiceLines
--rescuing shades
--Cue = "/VO/NemesisField_0209", Text = "May I help you?"
--Cue = "/VO/NemesisField_0206", Text = "Move along."
--{ Cue = "/VO/NemesisField_0413", Text = "Dead weight." }
--Cue = "/VO/NemesisField_0409", Text = "Another Shade to watch."


--Cue = "/VO/NemesisField_0580", Text = "Hey."
--Cue = "/VO/NemesisField_0587", Text = "Oh..."
--Cue = "/VO/NemesisField_0588", Text = "Come here."
--Cue = "/VO/NemesisField_0589", Text = "Over here."
--Cue = "/VO/NemesisField_0590", Text = "Over here...!"
--Cue = "/VO/NemesisField_0591", Text = "Come here."
--Cue = "/VO/NemesisField_0592", Text = "That you?"
--Cue = "/VO/NemesisField_0593", Text = "Who? Oh."
--Cue = "/VO/NemesisField_0594", Text = "Who goes.
--Cue = "/VO/NemesisField_0595", Text = "Nice place."
--Cue = "/VO/NemesisField_0596", Text = "These Fields..."
--Cue = "/VO/NemesisField_0598", Text = "Need a hand?"
--Cue = "/VO/NemesisField_0599", Text = "Soaked..."
--Cue = "/VO/NemesisField_0613", Text = "Hey..."
--Cue = "/VO/NemesisKeepsake_0273", Text = "{#Emph}You..."
--Cue = "/VO/NemesisField_0205", Text = "What do you want."
--{ Cue = "/VO/NemesisField_0197", Text = "Well, well.", PlayFirst = true },
--{ Cue = "/VO/NemesisField_0198", Text = "You." },
--{ Cue = "/VO/NemesisField_0199", Text = "You again." },
--{ Cue = "/VO/NemesisField_0600", Text = "You again?" },
--{ Cue = "/VO/NemesisField_0200", Text = "Again?" },
--{ Cue = "/VO/NemesisField_0201", Text = "Evening." },
--{ Cue = "/VO/NemesisField_0202", Text = "What a coincidence." },
--{ Cue = "/VO/NemesisField_0204", Text = "Yeah?" },
--{ Cue = "/VO/NemesisField_0207", Text = "There you are." },


--Fighting Chronos / Greeting Artemis
--Cue = "/VO/Nemesis_0109", Text = "Death to Chronos..."
--Cue = "/VO/Nemesis_0108", Text = "Death to Chronos."

--Generic Boss start?
--Cue = "/VO/NemesisField_0500",Text = "I can take care of this myself but it's more interesting if {#Emph}you {#Prev}get in the way."
--Cue = "/VO/NemesisField_0036",Text = "Let's see whether the Fates are on your side or mine this time around."
--Cue = "/VO/NemesisField_0037",Text = "To think I could be standing there on guard duty right now."
--Cue = "/VO/NemesisField_0007", Text = "Fair odds of winning if you shut up and fight!"

--Generic Boss/miniboss kill
--Cue = "/VO/Nemesis_0279", Text = "Got him again?"
--Cue = "/VO/Nemesis_0278", Text = "Got him, huh."
--Cue = "/VO/Nemesis_0474", Text = "Got him, huh?"
--Cue = "/VO/Nemesis_0276", Text = "Did it again."

--Prometheus
--Cue = "/VO/NemesisField_0536",Text = "You've been getting stronger, but can't always tell by how much. So show me."
--Cue = "/VO/NemesisField_0155",Text = "Getting stronger, but you'll never be at my level. Go on, try me."
--Cue = "/VO/NemesisField_0154",Text = "Don't think you have what it takes, though go on and try to prove me wrong."
--Cue = "/VO/NemesisField_0153",Text = "None of these wretches could touch me. But you're stronger than them, right?"

--Cyclops
--Cue = "/VO/Nemesis_0136", Text = "Not Cave of the Cyclops..."

--{ Cue = "/VO/Nemesis_0102", Text = "What." },
--{ Cue = "/VO/Nemesis_0103", Text = "Yeah?" },
--{ Cue = "/VO/Nemesis_0110", Text = "Again?" },
--{ Cue = "/VO/Nemesis_0112", Text = "Tough times." },
--{ Cue = "/VO/Nemesis_0117", Text = "What is it?" },
--{ Cue = "/VO/Nemesis_0118", Text = "Yeah, what?" },
--{ Cue = "/VO/Nemesis_0282", Text = "Up and about." },
--{ Cue = "/VO/Nemesis_0283", Text = "Up late." },
--{ Cue = "/VO/Nemesis_0284", Text = "Try again?" },
--{ Cue = "/VO/Nemesis_0285", Text = "Again, huh?" },
--{ Cue = "/VO/Nemesis_0286", Text = "Still at it?" },
--{ Cue = "/VO/Nemesis_0287", Text = "All clear." },
--{ Cue = "/VO/Nemesis_0288", Text = "All clear..." },
--{ Cue = "/VO/Nemesis_0289", Text = "'Bout time." },
--{ Cue = "/VO/Nemesis_0107", Text = "Back early.",

--Anamoly?
--Cue = "/VO/NemesisField_0601", Text = "Interesting..."
--Cue = "/VO/NemesisField_0602", Text = "Hell's this...?"

--{ Cue = "/VO/NemesisField_0414", Text = "Kidding me?" },
--{ Cue = "/VO/NemesisField_0415", Text = "Get in the fight!" },
--{ Cue = "/VO/NemesisField_0416", Text = "What are you doing?" },
--{ Cue = "/VO/NemesisField_0417", Text = "Fight back!" }


--Kill Eris
--Cue = "/VO/NemesisField_0326", Text = "Go home to Hecate, I'll handle it from here."

--Kill Boss?
--{ Cue = "/VO/NemesisField_0327", Text = "Always said you don't have what it takes." },
--{ Cue = "/VO/NemesisField_0328", Text = "Don't let me hear you blame the Fates for this." },
--{ Cue = "/VO/NemesisField_0329", Text = "Thought you'd take more punishment than that." },
--{ Cue = "/VO/NemesisField_0330", Text = "Got what was coming to you; I should know." },
--{ Cue = "/VO/NemesisField_0331", Text = "Was all a bit too much for you, poor thing." },
--{ Cue = "/VO/NemesisField_0332", Text = "We're all supposed to be counting on you?" },
--{ Cue = "/VO/NemesisField_0333", Text = "Come on, you could have done better than that." },
--{ Cue = "/VO/NemesisField_0334", Text = "Go, get your scrawny ass out of here." },
--{ Cue = "/VO/NemesisField_0335", Text = "You never could handle the pressure you know." },


--shopping from Charon
--{ Cue = "/VO/NemesisField_0611", Text = "Spending some quality time with my brother here.",}
--{ Cue = "/VO/NemesisField_0610",	Text = "Go about your business like I'm not even here.",}
--{ Cue = "/VO/NemesisField_0608",Text = "Last chance to stock up for a while.",}
--{ Cue = "/VO/NemesisField_0607",Text = "Talk later. Counting through my Gold.",}
--{ Cue = "/VO/NemesisField_0043",Text = "Leave me alone, trying to make a trade.",}
--{ Cue = "/VO/NemesisField_0041",Text = "Look at all this business you drummed up, Charon.",}
--Cue = "/VO/NemesisField_0079",Text = "Could shake you down for all your Gold, but wouldn't be fair."
--Cue = "/VO/NemesisField_0078",Text = "How much Gold you get out there? Can make it worth your while."


--Meeting Heracles
--{ Cue = "/VO/NemesisField_0044",Text = "Get in line. I was here first.",}

--Heracles encounter?
--{ Cue = "/VO/NemesisField_0511",Text = "All this Gold is gonna go to Charon anyway, so what's it matter who gets more." }
--{ Cue = "/VO/NemesisField_0510",Text = "Got to say these wagers haven't worked out well for me lately." }
--Cue = "/VO/NemesisField_0443",Text = "Want a bit of extra Gold, then earn it. Now heads up, they're coming."
--Cue = "/VO/NemesisField_0441",Text = "Don't pull your weight, I'll take your Gold soon as I wrap this up."


--{ Cue = "/VO/NemesisField_0489", Text = "I've learned enough." }
--{ Cue = "/VO/NemesisField_0023", Text = "Oh, shut up." }
--{ Cue = "/VO/NemesisField_0015", Text = "Rather be invulnerable, thanks." },
--{ Cue = "/VO/NemesisField_0020", Text = "Can't imagine why." 

--Kill Hecate?
--{ Cue = "/VO/NemesisField_0453", Text = "Oh, didn't need this but maybe you do." },

--Hecate start fight?
--{ Cue = "/VO/NemesisField_0517",Text = "You and that Oath making things a lot harder than they need to be." }
--{ Cue = "/VO/NemesisField_0516",Text = "Practically taste the Fear in the air. Let's make them fear {#Emph}us." },
--{ Cue = "/VO/NemesisField_0512",Text = "Stand around and watch me work, or fight. Same difference either way." },

--Hermes?
--{ Cue = "/VO/NemesisField_0515",Text = "Not seen you down here in a bit. Been too busy up top?" }

--Thesesus?
--Cue = "/VO/NemesisField_0506",Text = "Not a proper suit of armor you've got on but it's a start." }

--Asterius?
--Cue = "/VO/NemesisField_0505",Text = "Charon used to lug that axe around. Must be sucking up to him again."
--Cue = "/VO/NemesisField_0502",Text = "That axe looks a little big for you. Just the way you like it, huh?"

--Chronos?
--Cue = "/VO/NemesisField_0504",Text = "Hey, it's my brother's scythe. Let's see if you're any better with it than he was."

--Erebus / Artemis?
--Cue = "/VO/NemesisField_0496",Text = "Guess we're the ones haunting these woods at this point."

--GoldElemental miniboss?
--Cue = "/VO/NemesisField_0499",Text = "They say Chronos likes Gold, so he won't mind our little contest here."

--Enemies
--Cue = "/VO/NemesisField_0437",Text = "Could use more coin. How about I take yours, soon as we're finished around here."
--Cue = "/VO/NemesisField_0110",Text = "Doubt you could even handle just a single hit from me."

--Chronos Start fight
--Cue = "/VO/NemesisField_0147",Text = "Wretches couldn't even hit me. Wasn't fair. How about you make it up to them."
--Cue = "/VO/NemesisField_0146",Text = "All that pent-up anger. Let it out, then. I feel anything, I'll make it worth your while."

--Chaos?
--Cue = "/VO/NemesisField_0140",Text = "The mountain gods don't offer {#Emph}me {#Prev}their aid, though what about you?"
--Cue = "/VO/NemesisField_0138",Text = "Want what I've got, got to give something up."
--Cue = "/VO/NemesisField_0605", Text = "Chaos calls..."

--purge?
--Cue = "/VO/NemesisField_0528",Text = "Could use a little extra coin and you could probably use this."
--Cue = "/VO/NemesisField_0075",Text = "Want to be the best, it's not gonna come cheap."

--Echo?
--Cue = "/VO/NemesisField_0469",Text = "Both ought to get back to it, but should do this again."

--End Encounter?
--Cue = "/VO/NemesisField_0467",Text = "{#Emph}Hm. {#Prev}Nice place when it's not crawling with things needing to be killed."

--Tip Charon?
--Cue = "/VO/NemesisField_0521",Text = "Never know what to do with these except hand them to you."
--Cue = "/VO/NemesisField_0518",Text = "Don't really need this but thought I'd hang onto it for you."