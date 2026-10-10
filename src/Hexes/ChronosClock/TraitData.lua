function mod.ChronosCheckClockCharge( triggerArgs, functionArgs )
	if triggerArgs.name == "ChronosRiftSpell" then
		SessionMapState.BlockSpellCharge = nil
	end
end

--ChronosClockArm long arm around 30deg
--ChronosClockArmBolt long arm around 30deg stays longer
--ChronosClockArm30 long arm around 30deg that is supposed to arc
--ChronosClockArmShort short arm around 30deg
--ChronosClockArm30Short short arm around 30deg is supposed to arc
--ChronosClockArm360 Slower full rotation
--ChronosClockArm360Slow
--ChronosRiftSpin
--ChronosRift


function mod.ChronosClock( weaponData, functionArgs, triggerArgs )
	if weaponData.Name ~= "WeaponSpellChronosClock" then
		return
	end
	local times = {0}
	local waited = 0
	wait(0.1)
	local currentLocation = SpawnObstacle({ Name = "InvisibleTarget", DestinationId = CurrentRun.Hero.ObjectId,})
	if HeroHasTrait("ChronosClockHermesTalent") and ShouldFireFirstTimeOlympian() then
        LoadPackages({ Name = "Hermes", IgnoreAssert = true })
		thread( DoFullSuperPresentation, functionArgs.Character )
		times = {0,1,2,3}
	end
	for key,iteration in pairs(times) do
		PlaySound({ Name = "/SFX/Enemy Sounds/Chronos/ChronosClockHand"})
		waited = 0
		--PlaySound({ Name = "/SFX/GhostEvaporate", Id = ghostAdminId, Delay = 1.5 })
		CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation, FireFromTarget = true, Angle = (0-(iteration*15)) })
		if HeroHasTrait("ChronosClockDiagonalOneTalent") then
			wait(0.1)
			waited = waited + 0.1
			CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation, FireFromTarget = true, Angle = (30-(iteration*15)) })
			wait(0.1)
			waited = waited + 0.1
			CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation,FireFromTarget = true, Angle = (60-(iteration*15)) })
		end
		wait(0.1)
		waited = waited + 0.1
		CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation,FireFromTarget = true, Angle = (90-(iteration*15)) })
		if HeroHasTrait("ChronosClockDiagonalTwoTalent") then
			wait(0.1)
			waited = waited + 0.1
			CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation,FireFromTarget = true, Angle = (120-(iteration*15)) })
			wait(0.1)
			waited = waited + 0.1
			CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = weaponData.Name,  Id = CurrentRun.Hero.ObjectId, DestinationId = currentLocation,FireFromTarget = true, Angle = (150-(iteration*15)) })
		end
		wait(1.5 - waited)
	end
	Destroy({Name = currentLocation})
	wait(1)
	IncrementTableValue( SessionMapState, "SpellFired" )
end

OverwriteTableKeys( TraitData, {

    SpellChronosClockTrait = 
	{
		InheritFrom = { "SpellTrait" },
		Icon = "Boon_Selene_36",
		PreEquipWeapons = { "WeaponSpellChronosClock", },
		StatLines =
		{
			"ManaSpendCostStatDisplay1",
		},
		OnProjectileDeathFunction = 
		{
			Name = _PLUGIN.guid .. "." .. "ChronosCheckClockCharge",
		},
		PropertyChanges = 
		{
			{
				WeaponName = "WeaponSpellChronosClock",
				WeaponProperty = "ProjectileScaleMultiplier",
				ChangeValue = 0.8,
				ChangeType = "Multiply",
			},		
		},
		ExtractValues = 
		{
			{
				Format = "ManaSpendCost",
				WeaponName = "WeaponSpellChronosClock",
				ExtractAs = "ManaCost",
			},
		},
		OnWeaponFiredFunctions = 
        {
            WeaponNames = WeaponSets.HeroSpellWeapons,
			FunctionName = _PLUGIN.guid .. "." .. "ChronosClock",
			FunctionArgs = 
			{
				Character = "Hermes",
                ProjectileName = "ChronosRiftSpell",
			},
        },
		UpgradePickedVoiceLines =
		{
			{
				RandomRemaining = true,
				PreLineWait = 0.4,
				Queue = "Always",
				SuccessiveChanceToPlayAll = 0.66,
				TriggerCooldowns = { "MelinoeAnyQuipSpeech", "SeleneAnyQuipSpeech" },

				{ Cue = "/VO/Selene_0184", Text = "{#Emph}Twilight Curse." },
				{ Cue = "/VO/Selene_0185", Text = "{#Emph}Twilight Curse.", PlayFirst = true, },
				{ Cue = "/VO/Selene_0186", Text = "The Twilight Curse is yours to use.", BreakIfPlayed = true },
				{ Cue = "/VO/Selene_0187", Text = "Then let us turn our foes.", BreakIfPlayed = true },
				-- { Cue = "/VO/Selene_0127", Text = "{#Emph}Night Curse.", PlayFirst = true },
				-- { Cue = "/VO/Selene_0050", Text = "On this phase I see that the hex of Shadow Servant shall be yours.", BreakIfPlayed = true },
			},
			{ GlobalVoiceLines = "PickedMoonSpellVoiceLines" },
		},
	},
})