--Function to remove voice lines if Chronos is Used
function AddChronosGameStateReq( ListArg )
    if ListArg == nil then
        return
    end
    local NoChronosReq = 
    {
        {
            PathFalse = {"CurrentRun", "Hero", "SilenceMelinoe"},
        },
	}
    for key,value in pairs(ListArg) do
        if type(value) == "table" and value.Cue then
            if not value.GameStateRequirements then
                value.GameStateRequirements = {}
            end
            table.insert(value.GameStateRequirements, NoChronosReq)
            --print("Adding Req to List")
        end
    end
end

--Adding req for not Chronos
AddChronosGameStateReq(HeroData.LowHealthVoiceLines)  --works
AddChronosGameStateReq(HeroVoiceLines.NotReadyVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.NotReadyVoiceLines[2]) --works
AddChronosGameStateReq(HeroVoiceLines.SpellNotReadyVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.TremorReactionVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.PoisonAppliedVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.PoisonCuredVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.EagleIncomingVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.PickaxeUseInProgressVoiceLines[2]) --works
AddChronosGameStateReq(HeroVoiceLines.PickaxeDepositDestroyedVoiceLines[1]) --works
AddChronosGameStateReq(HeroVoiceLines.ShovelVoiceLines[1]) --works

AddChronosGameStateReq(HeroVoiceLines.ShovelFoundBombVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.ExorcismStartVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.ExorcismStartVoiceLines[2])
AddChronosGameStateReq(HeroVoiceLines.ExorcismResistedVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.ExorcismFailedVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.ExorcismSucceededVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.PlantInteractVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.PlantInteractVoiceLines[2])
AddChronosGameStateReq(HeroVoiceLines.PlantInteractVoiceLines[3])

AddChronosGameStateReq(HeroVoiceLines.FamiliarUnequipVoiceLines)
AddChronosGameStateReq(HeroVoiceLines.FamiliarHarvestVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.FamiliarHarvestVoiceLines[2])
AddChronosGameStateReq(HeroVoiceLines.FamiliarHarvestVoiceLines[3])
AddChronosGameStateReq(HeroVoiceLines.FamiliarHarvestVoiceLines[4])
AddChronosGameStateReq(HeroVoiceLines.FamiliarHarvestVoiceLines[5])
AddChronosGameStateReq(HeroVoiceLines.FamiliarThankingVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.FamiliarThankingVoiceLines[2])
AddChronosGameStateReq(HeroVoiceLines.LockedEphyraExitGateVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.LockedSellTraitShopVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.UsedCharonScarecrowVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.EnteredFortressVoiceLines[1])
AddChronosGameStateReq(HeroVoiceLines.EnteredFortressVoiceLines[2])
AddChronosGameStateReq(HeroVoiceLines.CannotInteractVoiceLines)
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()
AddChronosGameStateReq()



AddChronosGameStateReq(HeroVoiceLines.BlockDeathVoiceLines[1]) --works
AddChronosGameStateReq(GlobalVoiceLines.OutOfManaVoiceLines[1]) --works
AddChronosGameStateReq(GlobalVoiceLines.OutOfManaVoiceLines[2]) --works


-- Adding Chronos Voice Lines
 local YesChronosReq = 
{
    {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAll = {"ChronosAspect", },
    },
}

--Adding VoiceLines
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_0319", Text = "Not so fast...", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_0299", Text = "Am I supposed to be impressed?", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_1220", Text = "I am feeling better already!", GameStateRequirements = YesChronosReq })
table.insert(HeroVoiceLines.BlockDeathVoiceLines[1], { Cue = "/VO/Chronos_1213", Text = "Rejuvenation...!", GameStateRequirements = YesChronosReq })
