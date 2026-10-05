function mod.ChronosCircleIn(weaponData, functionArgs, triggerArgs ) 
  CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = functionArgs.WeaponName,  Id = CurrentRun.Hero.ObjectId, FireFromTarget = true, ProjectileCap = 1 })
end

OverwriteTableKeys( TraitData, {
    ChronosCircleInTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_115",
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

    ChronosCircleBlindTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_40",
        OnEnemyDamagedAction = 
        {
            ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn"},
            EffectName = "BlindEffect",
            Chance = 1,
            ReportValues = { ReportedChance = "Chance"}
        },
        StatLines =
        {
            "BlindChanceStatDisplay1",
        },
        ExtractValues =
        {
            {
                Key = "ReportedChance",
                ExtractAs = "Chance",
                Format = "LuckModifiedPercent",
            },
            {
                ExtractAs = "BlindDuration",
                SkipAutoExtract = true,
                External = true,
                BaseType = "EffectData",
                BaseName = "BlindEffect",
                BaseProperty = "Duration",
            },
            {
                ExtractAs = "BlindChance",
                SkipAutoExtract = true,
                External = true,
                BaseType = "EffectData",
                BaseName = "BlindEffect",
                BaseProperty = "MissChance",
                Format = "Percent"
            },
        },
    },

    ChronosCircleGlowTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_66",
        RarityLevels =
		{
			Common =
			{
				Multiplier = 1,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1,
			},
			Heroic =
			{
				Multiplier = 1,
			},
		},
        OnEnemyDamagedAction = 
		{
			ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn"},
			EffectName = "DelayedKnockbackEffect",
			Args = 
			{
				Modifier = 
				{ 
					BaseValue = 1.15,
					AbsoluteStackValues = 
					{
						[1] = 0.05,
						[2] = 0.03,
						[3] = 0.02,
					},
				},
				ReportValues = 
				{ 
					ReportedModifier = "Modifier",
				}
			},
		},
		StatLines = 
		{
			"DelayedKnockbackStatDisplay1",
		},
		ExtractValues =
		{
			{
				Key = "ReportedModifier",
				ExtractAs = "DelayedKnockbackModifier",
				Format = "PercentDelta",
			},
			{
				ExtractAs = "DelayedKnockbackDuration",
				SkipAutoExtract = true,
				External = true,
				BaseType = "EffectData",
				BaseName = "DelayedKnockbackEffect",
				BaseProperty = "Duration",
				DecimalPlaces = 1,
			},
		}
    },

    ChronosCircleWeakTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_48",
        OnEnemyDamagedAction = 
		{
			ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn" },
			FunctionName = "ApplyAphroditeVulnerability",
			Args = 
			{
				EffectName = "WeakEffect",
			}
		},
    },

    ChronosCircleDamageTalent = 
    {
        InheritFrom = {"SpellTalentTrait"},
        Icon = "Boon_Selene_77",
        RarityLevels =
		{
			Common =
			{
				Multiplier = 0.666,
			},
			Rare =
			{
				Multiplier = 1,
			},
			Epic =	
			{
				Multiplier = 1.333,
			},
			Heroic =
			{
				Multiplier = 1.666,
			},
		},
        AddOutgoingDamageModifiers =
        {
            ValidWeaponMultiplier = { BaseValue = 1.1, SourceIsMultiplier = true },
            ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn"},
            ReportValues = { ReportedWeaponMultiplier = "ValidWeaponMultiplier"},
        },
        StatLines =
        {
            "AttackDamageStatDisplay1",
        },
        ExtractValues =
        {
			{
				Key = "ReportedWeaponMultiplier",
				ExtractAs = "TooltipDamageBonus",
				Format = "PercentDelta",
			},
		},
    },
})


