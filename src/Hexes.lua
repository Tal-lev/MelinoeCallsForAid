function mod.ShouldFireFirstTimeOlympian()
	-- Should mirror requirements for godsent VO
	--print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
	if IsEmpty(RequiredKillEnemies) and CurrentRun.CurrentRoom.RoomSetName ~= "H" then
		return false
	end
	--print("Passed IsEmpty(RequiredKillEnemies) and CurrentRun.CurrentRoom.RoomSetName ~= H")
	if SessionMapState.SpellMultiuseCount and SessionMapState.SpellMultiuseCount > 0 then
		return false
	end

	local hasAnyDuo = false
	for _, traitName in ipairs(GameData.AllHexDuos) do
		if HeroHasTrait( traitName ) then
			hasAnyDuo = true
			break
		end
	end
	
	
	if not hasAnyDuo then
		return false
	end
	--print("Passed hasAnyDuo = true")
	local uses = 1 + GetTotalHeroTraitValue("OlympianSpellCountAddition")
	if CurrentRun.CurrentRoom.Encounter and CurrentRun.CurrentRoom.Encounter.EncounterType == "Boss" and not CurrentRun.CurrentRoom.Encounter.SkipBossTraits then
		uses = uses + GetTotalHeroTraitValue("OlympianSpellCountBossAddition")
	end
	if SessionMapState.SpellFired and SessionMapState.SpellFired > uses then
		return false
	end
	--print("Passed SessionMapState.SpellFired and SessionMapState.SpellFired > uses")
	return true
end

function mod.DoFullSuperPresentation(triggerArgs, traitArgs)
	if mod.ShouldFireFirstTimeOlympian() then
        thread( DoFullSuperPresentation, traitArgs.Character )
    end
end

import "Hexes/ChronosCircle/PlayerWeapons.lua"
import "Hexes/ChronosCircle/WeaponData.lua"
import "Hexes/ChronosCircle/TraitData.lua"
import "Hexes/ChronosCircle/SpellData.lua"
import "Hexes/ChronosCircle/TalentData.lua"

import "Hexes/ChronosSummon/PlayerWeapons.lua"
import "Hexes/ChronosSummon/WeaponData.lua"
import "Hexes/ChronosSummon/TraitData.lua"
import "Hexes/ChronosSummon/SpellData.lua"
import "Hexes/ChronosSummon/TalentData.lua"
import "Hexes/ChronosSummon/EnemyUnits.lua"