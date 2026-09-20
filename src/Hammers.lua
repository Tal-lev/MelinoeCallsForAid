function mod.ChronosTelescopicSwing( weaponData, traitArgs, triggerArgs )
    local weaponName = weaponData.Name
	local projectileName = "ChronosRipple" 
	local PlayerAngle = GetAngle({ Id = CurrentRun.Hero.ObjectId })
    local startLocation = GetLocation({ Id = CurrentRun.Hero.ObjectId })
    wait(0.05)
	for i=1, traitArgs.Projectiles do
        local Angle = 0
        if weaponName == "WeaponAxe" then
            Angle = PlayerAngle + traitArgs.StartingAngle + (traitArgs.AngleDif * (i - 1))
        else 
            Angle = PlayerAngle - traitArgs.StartingAngle - (traitArgs.AngleDif * (i - 1))
        end
        local FireAtLocationX = startLocation.X + (math.cos(math.rad(Angle)) * traitArgs.Distance)
        local FireAtLocationY = startLocation.Y - (math.sin(math.rad(Angle)) * traitArgs.Distance / 2) 
        local dropLocation = SpawnObstacle({ Name = "InvisibleTarget", LocationX = FireAtLocationX, LocationY = FireAtLocationY  })
	    local projectileId = CreateProjectileFromUnit({ WeaponName = weaponName, Name = projectileName, Id = CurrentRun.Hero.ObjectId, DestinationId = dropLocation, FireFromTarget = true })
        Destroy({ Id = dropLocation })    
        wait(0.03)
	end
end

function mod.ChronosRadialCast( triggerArgs, traitArgs )
    if triggerArgs and triggerArgs.WeaponName and triggerArgs.WeaponName == "WeaponCast" then
        local projectileId1 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
        wait(0.3)
        local projectileId2 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
        wait(0.3)
        local projectileId3 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
        wait(0.3)
        local projectileId4 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
        wait(0.3)
        local projectileId5 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
        wait(0.3)
        local projectileId6 = CreateProjectileFromUnit({ WeaponName = "WeaponCastOrbit", Name = "ChronosBoltOrbit1", Id = CurrentRun.Hero.ObjectId, DestinationId = triggerArgs.ProjectileId, FireFromTarget = true })
    end
end

function mod.ChronosTeleportRift( weaponData, traitArgs, triggerArgs )
    local weaponName = weaponData.Name
	--local projectileName = "ChronosGrindWallForward" 
    local projectileName = "TimeElementalDeath" 
	local PlayerAngle = GetAngle({ Id = CurrentRun.Hero.ObjectId })
    local startLocation = GetLocation({ Id = CurrentRun.Hero.ObjectId })
    local dropLocation = SpawnObstacle({ Name = "InvisibleTarget", LocationX = startLocation.X, LocationY = startLocation.Y  })
    local projectileId = CreateProjectileFromUnit({ WeaponName = weaponName, Name = projectileName, Id = CurrentRun.Hero.ObjectId, DestinationId = dropLocation, FireFromTarget = true })
    Destroy({ Id = dropLocation })    
    wait(0.03)
end

function mod.ChronosDualGrind ( weaponData, traitArgs, triggerArgs )
    local weaponName = weaponData.Name
    local projectileName = "ChronosGrindWallForward" 
	local PlayerAngle = GetAngle({ Id = CurrentRun.Hero.ObjectId }) +180
    local projectileId = CreateProjectileFromUnit({ WeaponName = weaponName, Name = projectileName, Id = CurrentRun.Hero.ObjectId, DestinationId = CurrentRun.Hero.ObjectId, Angle = PlayerAngle, FireFromTarget = false })
end

OverwriteTableKeys( TraitData, {
    ChronosTelescopicSwing = 
    {
        InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
        Icon = "Hammer_Axe_40",
        GameStateRequirements =
        {
            {
            Path = { "CurrentRun", "Hero", "Weapons", },
            HasAll = { "WeaponAxe", },
            },
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
        OnWeaponFiredFunctions = 
		{
			ValidWeapons = { "WeaponAxe", "WeaponAxe2", "WeaponAxeDash"},
			FunctionName = _PLUGIN.guid .. "." .."ChronosTelescopicSwing",
			ExcludeLinked = true,
			FunctionArgs =
			{
				Projectiles = 10,
				StartingAngle = 60,
                AngleDif = -15,
                Distance = 850,
				ReportValues = 
				{
					ReportedProjectiles = "Projectiles"
				},
			},
		},
        ExtractValues =
        {
            {
            Key = "ReportedCost",
            ExtractAs = "ManaCostAdded",
            IncludeSigns = true
            },
        },
    },

    ChronosRadialCast = 
    {
         InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
        Icon = "Hammer_Axe_40",
        GameStateRequirements =
        {
            {
            Path = { "CurrentRun", "Hero", "Weapons", },
            HasAll = { "WeaponAxe", },
            },
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
        OnProjectileCreationFunction = 
        {
            ValidProjectiles = { "ChronosDashStasis" },
                Name = _PLUGIN.guid .. "." .. "ChronosRadialCast",
                Args = 
                {
                }
        },
        PropertyChanges = 
        {
            {
				WeaponName = "WeaponCast",
                ProjectileName = "ChronosBoltOrbit1",
				ProjectileProperties = {
					AttachToOwner = false,
                    RotateWithOwner = false,
				},
			},
        },
        ExtractValues =
        {
            {
            Key = "ReportedCost",
            ExtractAs = "ManaCostAdded",
            IncludeSigns = true
            },
        },
    },

    ChronosTeleportRift = 
    {
        InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
        Icon = "Hammer_Axe_40",
        GameStateRequirements =
        {
            {
            Path = { "CurrentRun", "Hero", "Weapons", },
            HasAll = { "WeaponAxe", },
            },
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
        OnWeaponFiredFunctions = 
        {
            ValidWeapons = { "WeaponBlink" },
            FunctionName = _PLUGIN.guid .. "." .. "ChronosTeleportRift",
            ExcludeLinked = true,
			FunctionArgs =
			{
			},
        },
        PropertyChanges = 
        {
            {
				WeaponName = "WeaponCast",
                ProjectileName = "ChronosBoltOrbit1",
				ProjectileProperties = {
					AttachToOwner = false,
                    RotateWithOwner = false,
				},
			},
        },
        ExtractValues =
        {
            {
            Key = "ReportedCost",
            ExtractAs = "ManaCostAdded",
            IncludeSigns = true
            },
        },
    },

    ChronosDualGrind = 
    {
        InheritFrom = { "WeaponTrait", "AxeHammerTrait" },
        Icon = "Hammer_Axe_40",
        GameStateRequirements =
        {
            {
            Path = { "CurrentRun", "Hero", "Weapons", },
            HasAll = { "WeaponAxe", },
            },
            {
            Path = { "GameState", "LastWeaponUpgradeName", "WeaponAxe", },
            IsAny = {"ChronosAspect", }
            },
        },
        OnWeaponFiredFunctions = 
		{
			ValidWeapons = { "WeaponAxeSpecialSwing",},
			FunctionName = _PLUGIN.guid .. "." .."ChronosDualGrind",
			ExcludeLinked = true,
			FunctionArgs =
			{
				{
					ReportedProjectiles = "Projectiles"
				},
			},
		},
        ExtractValues =
        {
            {
            Key = "ReportedCost",
            ExtractAs = "ManaCostAdded",
            IncludeSigns = true
            },
        },
    },
})

--Adding Hammers to pool
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosTelescopicSwing")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosRadialCast")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosTeleportRift")
table.insert( LootSetData.Loot.WeaponUpgrade.Traits, "ChronosDualGrind")

--Removing Hammers from pool
table.insert(TraitData.AxeSpinSpeedTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeMassiveThirdStrikeTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeThirdStrikeTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeBlockEmpowerTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeRangedWhirlwindTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeFreeSpinTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeBlockEmpowerTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})
table.insert(TraitData.AxeDashAttackTrait.GameStateRequirements, {
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasNone = {"ChronosAspect", },
})

