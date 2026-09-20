---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- this file will be reloaded if it changes during gameplay,
-- 	so only assign to values or define things here.


-- For Chronos Zeus Rush Boon
function ChronosZeusSprintZap( weaponData, functionArgs, triggerArgs )
	local manaCost = 0
	if functionArgs.CostPerStrike and functionArgs.CostPerStrike > 0 then
		manaCost = GetManaCost( weaponData, true, { ManaCostOverride = functionArgs.CostPerStrike, TraitSource = true } )
	end
  print("!!!!!!!!!!!!!!!!!!!")
  print("Run function")
	if CheckCooldown("ChronosZeusSprintZap", functionArgs.Cooldown, true ) then
    print("Inside if statement")
		if CurrentRun.Hero.Mana >= manaCost or LastMomentManaRestoreEligible(manaCost) then
      print("Inside 2nd if statement")
			CreateZeusBolt({
				SourceId = functionArgs.TargetId or CurrentRun.Hero.ObjectId,
				Range = functionArgs.Range, 
				SeekTarget = true, 
				ProjectileName = functionArgs.ProjectileName, 
				DamageMultiplier = functionArgs.DamageMultiplier,
				RunFunctionNameOnTarget = functionArgs.RunFunctionNameOnTarget,
				RunFunctionArgsOnTarget = functionArgs,
				InitialDelay = 0, 
				Delay = 0.1, 
				Count = 1
			}) 
      wait(0.15)
      CreateZeusBolt({
        SourceId = functionArgs.TargetId or CurrentRun.Hero.ObjectId,
        Range = functionArgs.Range, 
        SeekTarget = true, 
        ProjectileName = functionArgs.ProjectileName, 
        DamageMultiplier = functionArgs.DamageMultiplier,
        RunFunctionNameOnTarget = functionArgs.RunFunctionNameOnTarget,
        RunFunctionArgsOnTarget = functionArgs,
        InitialDelay = 0, 
        Delay = 0.1, 
        Count = 1
      }) 
      wait(0.15)
      CreateZeusBolt({
        SourceId = functionArgs.TargetId or CurrentRun.Hero.ObjectId,
        Range = functionArgs.Range, 
        SeekTarget = true, 
        ProjectileName = functionArgs.ProjectileName, 
        DamageMultiplier = functionArgs.DamageMultiplier,
        RunFunctionNameOnTarget = functionArgs.RunFunctionNameOnTarget,
        RunFunctionArgsOnTarget = functionArgs,
        InitialDelay = 0, 
        Delay = 0.1, 
        Count = 1
      }) 
		end
	end
end


-------------------------------------------------------------------
-- This function is part of the mod creation guide from the wiki --
-------------------------------------------------------------------
function mod.LoadSkellyPackage()
	local packageName = _PLUGIN.guid .. "Portraits"
	print("AuthorName-ModName - Loading package: " .. packageName)
	LoadPackages({ Name = packageName })
end
