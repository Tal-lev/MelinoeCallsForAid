function mod.ChronosCircleIn(weaponData, functionArgs, triggerArgs ) 
    if ShouldFireFirstTimeOlympian() then
        CreateProjectileFromUnit({ Name = functionArgs.ProjectileName .. "Artemis", WeaponName = functionArgs.WeaponName,  Id = CurrentRun.Hero.ObjectId, FireFromTarget = true, ProjectileCap = 1 })
    else
        CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, WeaponName = functionArgs.WeaponName,  Id = CurrentRun.Hero.ObjectId, FireFromTarget = true, ProjectileCap = 1 })
    end
end

function mod.ChronosCircleArtemis( triggerArgs, traitArgs )
    if ShouldFireFirstTimeOlympian() then
        thread( DoFullSuperPresentation, traitArgs.Character )
        Destroy({ Id = triggerArgs.ProjectileId })
        wait(0.1)
        CreateProjectileFromUnit({ Name = traitArgs.ProjectileName, WeaponName = "WeaponSpellChronosCircle",  Id = CurrentRun.Hero.ObjectId, FireFromTarget = true, ProjectileCap = 1 })
        wait(1)
        IncrementTableValue( SessionMapState, "SpellFired" )
    else 
        return
    end
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
            ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn", "ChronosRadialOutArtemis", "ChronosRadialInArtemis"},
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
			ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn", "ChronosRadialOutArtemis", "ChronosRadialInArtemis"},
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
			ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn", "ChronosRadialOutArtemis", "ChronosRadialInArtemis" },
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
            ValidProjectiles = { "ChronosRadialOut" ,"ChronosRadialIn" , "ChronosRadialOutArtemis", "ChronosRadialInArtemis"},
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

    ChronosCircleArtemisTalent = 
	{
		InheritFrom = {"LegendaryTalent", "SpellTalentTrait", "ForceDuoAppearanceTrait"},
		Icon = "JarlUlsfark-MelinoeCallsForAid\\Selene_Artemis_Talent",
		IsDuoBoon = true,
		LinkedGod = "ArtemisUpgrade",
		SpeakerNames = { "Artemis", },

		GameStateRequirements = 
		{
			NamedRequirements = { "SeleneDuosUnlocked" },
			OrRequirements =
			{
				{
					{
						PathTrue = { "CurrentRun", "Hero", "MetGods", "NPC_Artemis_Field_01" },
					},
				},
                {
					{
						PathTrue = { "CurrentRun", "Hero", "MetGods", "ArtemisBossRush" },
					},
				},
				{
					{
						PathTrue = { "CurrentRun", "Hero", "TraitDictionary", "LowHealthCritKeepsake" },
					},
				},
			},
		},
        OnProjectileCreationFunction = 
        {
            ValidProjectiles = { "ChronosRadialOut" },
			Name = _PLUGIN.guid .. "." .. "ChronosCircleArtemis",
			Args = 
			{
				Character = "Artemis",
                ProjectileName = "ChronosRadialOutArtemis",
			},
        },
		AddOutgoingCritModifiers =
		{
            ValidProjectiles = { "ChronosRadialOutArtemis", "ChronosRadialInArtemis" },
			Chance = { BaseValue = 0.60 },
			ReportValues = { ReportedCritBonus = "Chance"},
		},
        AddOutgoingDoubleDamageModifiers = 
		{
            ValidProjectiles = { "ChronosRadialOutArtemis", "ChronosRadialInArtemis" },
			Chance = { BaseValue = 0.30 },
			ReportValues = { ReportedChance = "Chance"},
		},
		StatLines =
		{
			"CriticalChanceDisplay1",
            "DoubleDamageChanceStatDisplay2",
		},
		ExtractValues =
		{
			{
				Key = "ReportedCritBonus",
				ExtractAs = "CritBonus",
				Format = "LuckModifiedPercent"
			},
            {
				Key = "ReportedChance",
				ExtractAs = "DoubleDamageBonus",
				Format = "LuckModifiedPercent"
			},
		},
	},
})


