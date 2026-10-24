
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


})

--Adding Hammers to pool
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "NemesisLongerCastTrait")
--table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosRadialCast")
--table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosTeleportRift")
--table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosDualGrind")
--table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosSpecialDamage")
--table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosTriplePurge")


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

--Incompatible Cast boons
TraitData.SprintShieldBoon.GameStateRequirements = TraitData.SprintShieldBoon.GameStateRequirements or {}
table.insert(TraitData.SprintShieldBoon.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"NemesisAspect", },
})

