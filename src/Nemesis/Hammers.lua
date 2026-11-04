
function mod.HandleNemesisDummyCrit( weaponData, functionArgs, triggerArgs )
    if HeroHasTrait("NemesisDummyCritTrait") then
        return
    end
    AddTraitToHero({ TraitName = "NemesisDummyCritTrait"})
	local animation = CreateAnimation({ Name = "ArtemisCritSparkles-SwordPostParryCritical", DestinationId = CurrentRun.Hero.ObjectId, })
	--local animation = CreateAnimation({ Name = "ArtemisCritSparkles-SwordPostParryCritical", DestinationId = CurrentRun.Hero.ObjectId, OffsetZ = 160 })
    wait(functionArgs.Duration)
    RemoveTrait( CurrentRun.Hero, "NemesisDummyCritTrait" )
	StopAnimation({ Name = "ArtemisCritSparkles-SwordPostParryCritical", DestinationId = CurrentRun.Hero.ObjectId })
end

function mod.BlockCheckAutoRevenge( blocker, functionArgs, triggerArgs )
	local attacker = triggerArgs.Attacker 
	if attacker and not attacker.SkipModifiers and not attacker.IsDead and not IsUntargetable({Id = attacker.ObjectId}) and not IsInvulnerable({ Id = attacker.ObjectId }) then
		if CheckCooldown(attacker.ObjectId .. "BlockAutoRevengeCooldown", functionArgs.Cooldown * GetTotalHeroTraitValue("OlympianRechargeMultiplier", { IsMultiplier = true } )) then
			local triggerArgs = { ManuallyTriggered = true, Victim = CurrentRun.Hero, DamageAmount = 10}
			for i, functionData in pairs( GetHeroTraitValues("OnSelfDamagedFunction") ) do
				thread( CallFunctionName, functionData.Name, attacker, functionData.FunctionArgs, triggerArgs )
			end	
		end
	end
end

function mod.NemBleedDamageOverTimeApply( triggerArgs )
end

function mod.CheckNemBleed( victim, functionArgs, triggerArgs )
	if not victim then
		return
	end
	local weaponName = triggerArgs.SourceWeapon
	local effectName = functionArgs.EffectName
	local dataProperties = ShallowCopyTable( EffectData[effectName].DataProperties )
	dataProperties.Amount = functionArgs.Damage
	ApplyEffect({ DestinationId = victim.ObjectId, Id = CurrentRun.Hero.ObjectId, EffectName = effectName, 
		DataProperties = dataProperties })
end

OverwriteTableKeys( EffectData, {
	NemBleedDamageOverTime =
	{
		InheritFrom = { "NoSlowFrameEffect", "NoShakeEffect"},
		CancelArmorSpark = true,
		CancelArmorUnitShake = true,
		CancelUnitShake = true,
		CancelRumble = true,
		CancelHitSpark = true,
		CancelUnitHitFlash = true,
		DamageTextStartColor = Color.AresVoice,
		DamageTextColor = Color.AresVoice,
		DamageTextSize = 25,
		DisplaySuffix = "Bleed",
		Icon = "NemBleedSmall",
		OnApplyFunctionName = _PLUGIN.guid .. "." .. "NemBleedDamageOverTimeApply",
		DataProperties = {
			Type = "DAMAGE_OVER_TIME",
			Duration = 5,
			Cooldown = 0.2,
			Amount = 2,
			CanAffectInvulnerable = true,
		},
	},
})

OverwriteTableKeys( TraitData, {
    NemesisLongerCastTrait = 
	{
		InheritFrom = { "WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Legendary = 
			{
				Multiplier = 1.33,
			},
		},
		PropertyChanges = {
            {
                WeaponName = "WeaponCast",
                    WeaponProperties = {
                        ImmunityDuration = 0.6,
                    },
                ProjectileName ="ProjectileCast",
                ProjectileProperties = {
                    Fuse = 0.6,
                    FuseStart = 0.6,
                },
                ExcludeLinked = true,
	        },
        },
    },

    NemesisDummyCritTrait = {
        Icon = "Hammer_Staff_37",
        Hidden = true,
    },

    NemesisCritAfterSpecialTrait = 
	{
		InheritFrom = { "WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Legendary = 
			{
				Multiplier = 1.33,
			},
		},
        OnWeaponFiredFunctions = 
		{
            ValidWeapons = { "WeaponStaffBall" },
			FunctionName = _PLUGIN.guid .. "." .. "HandleNemesisDummyCrit",
			FunctionArgs = 
			{
				Duration = 3,
			},
        },
        AddOutgoingCritModifiers = {
			ValidWeapons = WeaponSets.HeroPrimaryWeapons,
            RequiredTrait = "NemesisDummyCritTrait",
			Chance = { BaseValue = 0.30 },
			ReportValues = { ReportedCritBonus = "Chance"},
		},
        StatLines =
		{
			"CriticalChanceDisplay1",
		},
		ExtractValues =
		{
			{
				Key = "ReportedCritBonus",
				ExtractAs = "CritBonus",
				Format = "LuckModifiedPercent"
			},
		},
    },

	NemesisDashPushTrait = 
	{
		InheritFrom = { "WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Legendary = 
			{
				Multiplier = 1.33,
			},
		},
		PropertyChanges = {
            {
                WeaponName = "WeaponBlink",
                ProjectileName ="ProjectileBlink",
                ProjectileProperties = {
                    ImpactVelocity = 1500,
					Damage = 40,
                },
                ExcludeLinked = true,
	        },
        },
    },

	NemesisBlockRevengeTrait = 
	{
		InheritFrom = {"WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		OnBlockDamageFunction = 
		{
			Name = _PLUGIN.guid .. "." .. "BlockCheckAutoRevenge",
			Args = 
			{
				Cooldown = 15,
				ReportValues = {ReportedInterval = "Cooldown"}
			},
		},
		StatLines = 
		{
			"RevengeTimerStatDisplay1",
		},
		ExtractValues =
		{
			{
				Key = "ReportedInterval",
				ExtractAs = "Interval",
				DecimalPlaces = 1,
				Format = "SpeedModifiedDuration",
			},
		},
	},

	NemesisAttackBleedTrait = 
	{
		InheritFrom = {"WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Legendary = 
			{
				Multiplier = 2.0,
			},
		},
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		OnEnemyDamagedAction = 
		{
			ValidWeapons = WeaponSets.HeroPrimaryWeapons,
			FunctionName = _PLUGIN.guid .. "." .. "CheckNemBleed",
			Args = 
			{
				EffectName = "NemBleedDamageOverTime",
				Damage = { BaseValue = 2 },
				ReportValues = { ReportedDamage = "Damage"}
			}
		},
		StatLines =
		{
			"NemBleedDamageOverTimeStatDisplay",
		},
		ExtractValues =
		{
			{
				Key = "ReportedDamage",
				ExtractAs = "Damage",
			},
			{		
				External = true,
				BaseType = "EffectData",
				BaseName = "NemBleedDamageOverTime",
				BaseProperty = "Cooldown",
				SkipAutoExtract = true,
				ExtractAs = "NemBleedDamageOverTimeFuse",
				DecimalPlaces = 2,
			},
			{		
				External = true,
				BaseType = "EffectData",
				BaseName = "NemBleedDamageOverTime",
				BaseProperty = "Duration",
				SkipAutoExtract = true,
				ExtractAs = "NemBleedDamageOverTimeDuration",
			},
		},
	},

	NemDashAttackProjectileTrait =
	{
		InheritFrom = {"WeaponTrait", "StaffHammerTrait" },
		Icon = "Hammer_Staff_37",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Legendary = 
			{
				Multiplier = 2.0,
			},
		},
		GameStateRequirements =
		{
			{
				Path = { "CurrentRun", "Hero", "Weapons", },
				HasAll = { "WeaponStaffSwing", },
			},
            {
				Path = { "GameState", "LastWeaponUpgradeName", "WeaponStaffSwing", },
				IsAny = {"NemesisAspect", }
            },
		},
		PropertyChanges = 
		{
			{
				WeaponName = "WeaponStaffDash",
				WeaponProperty = "Projectile",
				ChangeValue = "PlayerNemesisAttack2HammerProjectile",
			},
			{
				WeaponName = "WeaponStaffDash",
				WeaponProperties = 
				{
					BarrelLength = 150,
				},
				ProjectileName = "PlayerNemesisAttack2HammerProjectile",
				ProjectileProperties = {
					Damage = 50,
					AttachToOwner = false,
				},
				ExcludeLinked = true,

			},
		},
		--StatLines =
		--{
			--"NemBleedDamageOverTimeStatDisplay",
		--},
		--ExtractValues =
		--{
		--	{
		--	Key = "ReportedMultiplier",
		--	Format = "MultiplyByBase",
		--	BaseType = "Projectile",
		--	BaseName = "PlayerNemesisAttack2HammerProjectile",
		--	BaseProperty = "Damage",
		--	ExtractAs = "Damage",
		--},
		--},
	},
})

--Adding Hammers to pool
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisLongerCastTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisCritAfterSpecialTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisDashPushTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisBlockRevengeTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisAttackBleedTrait")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemDashAttackProjectileTrait")


--Removing Hammers from pool
table.insert(TraitData.StaffSecondStageTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffExHealTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffDoubleAttackTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffPowershotTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffLongAttackTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffDashAttackTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffFastSpecialTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffAttackRecoveryTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffExAoETrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffOneWayAttackTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffJumpSpecialTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})
table.insert(TraitData.StaffTripleShotTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})