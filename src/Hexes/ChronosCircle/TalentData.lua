function mod.ChronosCircleIn(weaponData, functionArgs, triggerArgs ) 
  CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = functionArgs.WeaponName,  Id = CurrentRun.Hero.ObjectId, FireFromTarget = true, ProjectileCap = 1 })
end

OverwriteTableKeys( TraitData, {
    ChronosCircleIn = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_121",
        ManaSpendCostModifiers = 
        {
            Add = 20,
            ReportValues = { ReportedManaCost = "Add" }
        },
        StatLines =
        {
            "TalentManaCostAdditionStatline",
        },
        OnWeaponFiredFunctions =
        {
            ValidWeapons =  { "WeaponSpellChronosCircle" },
		    ExcludeLinked = true,
		    FunctionName = _PLUGIN.guid .. "." .. "ChronosCircleIn",
		    FunctionArgs =
		    {
                WeaponName = "WeaponSpellChronosCircle",
                ProjectileName = "ChronosRadialIn",
		    },
        },
        PropertyChanges =
        {
            {
				WeaponName = "WeaponSpellChronosCircle",
				ProjectileName = "ChronosRadialIn",
                ProjectileProperties = {
                    Damage = 200,
                },
			},
        },
        ExtractValues = 
        {
            {
                Key = "ReportedManaCost",
                ExtractAs = "ManaAddition",
                SkipAutoExtract = true,
                IncludeSigns = true,
            },
        },
    },
})