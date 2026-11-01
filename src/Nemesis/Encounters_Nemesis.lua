--Adding New Projectiles
local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/NPC_Projectiles.sjson')
sjson.hook(file, function(data)

    table.insert(data.Projectiles,
    {
        Name = "MelRivalProjectileStaffSwing1",
        InheritFrom = "1_BaseNPCProjectile",
        DetonateFx = "null",
        Type = "STRAIGHT",
        AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
        CheckUnitImpact = true,
        CheckObstacleImpact = true,
        UnlimitedUnitPenetration = true,
        UnlimitedObstaclePenetration = true,
        Range = 430,
        Speed = 4000,
        NumPenetrations = 9999,		
        UseArmor = true,
        UseVulnerability = true,
        AttachToMarker = "null",
        InvulnerableImpactOwnerVelocity = 0,
        StartFx = "null",
        DissipateFx = "StaffComboAttack1Dissipate",
        UseRadialImpact = false,
        ImpactLineOfSightFromOwner = false,
        Damage = 250,
        GroupName = "Standing",
        ProjectileDefenseRadius = 150,
        ProjectileDefenseAngle = 110,
        Thing =
        {
            Graphic = "StaffComboAttack1",
            RotateGeometry = true,
            UseBoundsForSortDrawArea = true,
            SortBoundsScale = 0.15,
            OffsetZ = 70,
            Points =
            {
                {
                    X = 0,
                    Y = 0,
                },
                {
                    X = 130,
                    Y = 140,
                },
                {
                    X = 130,
                    Y = -140,
                },
            },
        },
        Effects =
        {
            {
                Name = "HeroOnHitStun",
                Duration = 0.5,
                DisableMove = true,
                DisableRotate = true,
                DisableAttack = true,
                Active = true,
                CanAffectInvulnerable = false,
                Cancelable = false,
                FrontFx = "DionysusStunnedFx",
            },
            {
                Name = "KnockbackGrip",
                Type = "GRIP",
                Duration = 0.1,
                Modifier = 0.01,
                HaltOnEnd = true,
                Active = true,
                CanAffectInvulnerable = true,
            },
        },
    })

    table.insert(data.Projectiles,
    {
        Name = "MelRivalProjectileStaffSwing2",
        InheritFrom = "MelRivalProjectileStaffSwing1",
        AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
        CheckUnitImpact = true,
        CheckObstacleImpact = true,
        UnlimitedUnitPenetration = true,
        Damage = 250,
        ImpactVelocity = 0,
        UseArmor = true,
        UseVulnerability = true,
        StartDelay = 0.04,
        NumPenetrations = 9999,
        AttachToMarker = "null",
        UseRadialImpact = false,
        ImpactLineOfSightFromOwner = false,
        DeathFx = "StaffComboAttack2Dissipate",
        DissipateFx = "StaffComboAttack2Dissipate",
        GroupName = "FX_Standing_Add",
        Thing =
        {
            RotateGeometry = true,
            Graphic = "StaffComboAttack2",
            OffsetZ = 50,
            Points =
            {
                {
                    X = 0,
                    Y = 0,
                },
                {
                    X = 130,
                    Y = 140,
                },
                {
                    X = 130,
                    Y = -140,
                },
            },
        },
        Effects =
        {
            {
                Name = "HeroOnHitStun",
                Duration = 0.5,
                DisableMove = true,
                DisableRotate = true,
                DisableAttack = true,
                Active = true,
                CanAffectInvulnerable = false,
                Cancelable = false,
                FrontFx = "DionysusStunnedFx",
            },
            {
                Name = "KnockbackGrip",
                Type = "GRIP",
                Duration = 0.1,
                Modifier = 0.01,
                HaltOnEnd = true,
                Active = true,
                CanAffectInvulnerable = true,
            },
        },
    })

    table.insert(data.Projectiles,
    {
        Name = "MelRivalProjectileStaffSwing3",
        InheritFrom = "MelRivalProjectileStaffSwing1",
        Damage = 250,
        StartDelay = 0.03,
        DissipateFx = "StaffComboAttack3Dissipate",
        DeathFx = "StaffComboAttack3Dissipate",
        GroupName = "Standing",
        Thing =
        {
            Graphic = "StaffComboAttack3",
            RotateGeometry = true,
            OffsetZ = 70,
            Points =
            {
                {
                    X = 0,
                    Y = 0,
                },
                {
                    X = 130,
                    Y = 200,
                },
                {
                    X = 130,
                    Y = -200,
                },
            },
        },
        Effects =
        {
            {
                Name = "HeroOnHitStun",
                Duration = 0.5,
                DisableMove = true,
                DisableRotate = true,
                DisableAttack = true,
                Active = true,
                CanAffectInvulnerable = false,
                Cancelable = false,
                FrontFx = "DionysusStunnedFx",
            },
            {
                Name = "KnockbackGrip",
                Type = "GRIP",
                Duration = 0.1,
                Modifier = 0.01,
                HaltOnEnd = true,
                Active = true,
                CanAffectInvulnerable = true,
            },
        },
    })

    table.insert(data.Projectiles,
    {
        Name = "MelRivalProjectileStaffBallCharged",
        InheritFrom = "1_BaseNPCProjectile",
        Type = "HOMING",
        HomingAllegiance = "ENEMIES",
        AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
        AdjustRateAcceleration = 0,
        MaxAdjustRate = 20,
        CheckObstacleImpact = true,
        ObstacleCollisionCheck = "PolygonContainsPoint",
        CheckUnitImpact = true,
        UnlimitedUnitPenetration = false,
        DetonateAtVictimLocation = false,
        DamageRadius = 330,
        DamageRadiusScaleY = 0.6,
        BlastSpeed = 3000,
        Damage = 300,
        Acceleration = 0,
        SpinRate = 0,
        Range = 880.0,
        Speed = 780.0,
        StartDelay = 0.05,
        ImpactVelocity = 0,
        StartFx = "StaffProjectileFireFx3",
        DetonateFx = "RadialNovaPentagramCharged",
        DetonateSound = "/SFX/Player Sounds/StaffRangedDetonateLarge",
        UseVulnerability = true,
        Thing =
        {
            Graphic = "StaffBallProjectileChargedIn",
            OffsetZ = 60,
            AttachedAnim = "SlingShotShadow",
            Grip = 999999,
            RotateGeometry = true,
            UseBoundsForSortDrawArea = true,
            SortBoundsScale = 0.5,
            Tallness = 20,
            Points =
            {
                {
                    X = 50,
                    Y = 75,
                },
                {
                    X = 50,
                    Y = -75,
                },
                {
                    X = -50,
                    Y = 0,
                },
            },
        },
        Effects =
        {
            {
                Name = "HeroOnHitStun",
                Duration = 0.5,
                DisableMove = true,
                DisableRotate = true,
                DisableAttack = true,
                Active = true,
                CanAffectInvulnerable = false,
                Cancelable = false,
                FrontFx = "DionysusStunnedFx",
            },
            {
                Name = "KnockbackGrip",
                Type = "GRIP",
                Duration = 0.1,
                Modifier = 0.01,
                HaltOnEnd = true,
                Active = true,
                CanAffectInvulnerable = true,
            },
        },
    })

    return data
end)

--Adding New Weapons
OverwriteTableKeys(WeaponData, {
    MelRival_NemesisAttack1 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileStaffSwing1",

			FireSelfVelocity = 700,
			FireProjectileStartDelay = 0.1,

			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.22,
			PreAttackSound = "/VO/MelinoeEmotes/EmoteAttackingStaff",
			FireDuration = 0.14,
			PostAttackDuration = 0.0, -- animation is 0.68

			AttackDistance = 300,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Staff_Attack1_Start",
			FireAnimation = "Melinoe_Staff_Attack1_Fire",
			--PostAttackAnimation = "Nemesis_Combat_Attack1_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,

			ChainedWeapon = "MelRival_NemesisAttack2",
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/MelStaffSwipeWhoosh" },	
			},
		},
	},

	MelRival_NemesisAttack2 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileStaffSwing2",

			FireSelfVelocity = 1100,

			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.27,
			PreAttackSound = "/VO/MelinoeEmotes/EmoteAttackingStaff",
			FireDuration = 0.24,
			PostAttackDuration = 0.0, -- animation is 0.68

            AttackDistance = 400,
			MoveWithinRange = false,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Staff_Attack2_Start",
			FireAnimation = "Melinoe_Staff_Attack2_Fire",
			--PostAttackAnimation = "Nemesis_Combat_Attack2_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,

			ChainedWeapon = "MelRival_NemesisAttack3",
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/MelStaffSwipeWhoosh" },
			},
		},
	},

	MelRival_NemesisAttack3 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileStaffSwing3",
			FireProjectileStartDelay = 0.15,

			FireSelfVelocity = 1100,

			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.55,
			PreAttackSound = "/SFX/Player Sounds/MelMagicalCharge",
			FireDuration = 0.35,
			PostAttackDuration = 0.9, -- animation is 0.68

            AttackDistance = 400,
			MoveWithinRange = false,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Staff_Attack3_Start",
			FireAnimation = "Melinoe_Staff_Attack3_Fire",
			PostAttackAnimation = "Melinoe_Staff_Attack3_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/MelStaffSwipeWhoosh" },
				{ Name = "/VO/MelinoeEmotes/EmotePowerAttackingStaff" },	
			},
		},
	},

MelRival_NemesisSpecial =
	{
		Requirements =
		{
			MinAttacksBetweenUse = 1,
		},
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileStaffBallCharged",

			BarrelLength = 150,
			FireProjectileStartDelay = 0.1,

			PreAttackDuration = 0.67,
			PreAttackSound = "/VO/MelinoeEmotes/EmoteCharging",
			FireDuration = 0.35,
			PostAttackDuration = 0.6, -- animation is 0.58

			AttackDistance = 800,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Staff_Special1_Start",
			FireAnimation = "Melinoe_Staff_Special1_Fire",
			PostAttackAnimation = "Melinoe_Staff_Special1_End",

			ExpireProjectilesOnHitStun = true,
			PreAttackAngleTowardTarget = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/VO/MelinoeEmotes/EmotePowerAttackingStaff" },
				{ Name = "/Leftovers/SFX/AuraThrowSmall" },
			},
		},

	},
})

function mod.HandleNemesisCombatSpawn( eventSource, args )
	args = args or {}
	local currentRun = CurrentRun
	local currentRoom = CurrentRun.CurrentRoom
	local currentEncounter = eventSource

	local newUnit = DeepCopyTable( EnemyData.NPC_Nemesis_01 )

    
	-- local heroExitIds = GetIdsByType({ Name = "HeroExit" })
	-- local heroExitPointId = GetClosest({ Id = currentRun.Hero.ObjectId, DestinationIds = heroExitIds, Distance = 600 })
	local variantData = NPCVariantData.NemesisCombat
	if NPCVariantData["NemesisCombat_"..CurrentRun.CurrentRoom.RoomSetName] then
		variantData = NPCVariantData["NemesisCombat_"..CurrentRun.CurrentRoom.RoomSetName]
	end
	OverwriteSelf( newUnit, variantData )
    
    if newUnit.WeaponOptions then
        newUnit.WeaponOptions = { "MelRival_NemesisAttack1", "MelRival_NemesisSpecial", }
    end
    if newUnit.NemesisPostRandomEventCombat then
        newUnit.NemesisPostRandomEventCombat.WeaponOptions = { "MelRival_NemesisAttack1", "MelRival_NemesisSpecial", "NemesisDash" }
    end
    if newUnit.NemesisFieldsPreRandomEventCombat then
        newUnit.NemesisFieldsPreRandomEventCombat.WeaponOptions = { "MelRival_NemesisAttack1", "MelRival_NemesisSpecial", }
    end
    if newUnit.NemesisCombat then
        newUnit.NemesisCombat.WeaponOptions = { "MelRival_NemesisAttack1", "MelRival_NemesisSpecial", }
    end
    if newUnit.TurnInPlaceAnimation then
        newUnit.TurnInPlaceAnimation = "Melinoe_Staff_Idle"
    end

	newUnit.BlocksLootInteraction = true -- For Fields
	
	local encounterData = EncounterData[eventSource.Name] or eventSource
	local spawnNearId = currentRoom.HeroEndPoint or currentRun.Hero.ObjectId
	if args.SpawnNearPlayer then
		spawnNearId = currentRun.Hero.ObjectId
	end
	local spawnPointId = SelectSpawnPoint( currentRoom, newUnit, { SpawnNearId = spawnNearId, SpawnRadius = encounterData.NemesisSpawnRadius or 1000, SpawnRadiusMin = encounterData.NemesisSpawnRadiusMin or 500 }, { RequireLoS = true })
	spawnPointId = spawnPointId or currentRun.Hero.ObjectId
	newUnit.ObjectId = SpawnUnit({ Name = "NPC_Nemesis_01", Group = "Standing", DestinationId = spawnPointId })

    SetThingProperty({ Property = "GrannyModel", Value = "Melinoe_Mesh", DestinationId = newUnit.ObjectId })
	SetThingProperty({ Property = "Graphic", Value = "Melinoe_Staff_Idle", DestinationId = newUnit.ObjectId })
	SetThingProperty({ Property = "Tallness", Value = 200, DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "StartGraphic", Value = "Melinoe_Staff_Run_Start", DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "MoveGraphic", Value = "Melinoe_Staff_Run_FireLoop", DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "StopGraphic", Value = "Melinoe_Staff_Run_End", DestinationId = newUnit.ObjectId })
	
    SetScale({ Id = newUnit.ObjectId, Fraction = 0.75 })

	newUnit.UseActivatePresentation = false

	if CurrentRun.CurrentRoom.SpawnedRewardCageIndicators then
		CreateScreenEdgeIndicator( newUnit, { AnimName = newUnit.Icon } )
	end

	currentEncounter.NemesisId = newUnit.ObjectId
	SetupUnit( newUnit, CurrentRun, { IgnoreAI = true, IgnoreAssert = true } )
    SetAnimation({ DestinationId = newUnit.ObjectId, Name = "Melinoe_Staff_Idle" })
	MapState.RoomRequiredObjects[newUnit.ObjectId] = newUnit
	SessionMapState.Nemesis = newUnit
	UseableOff({ Id = newUnit.ObjectId })
	currentEncounter.NemesisId = newUnit.ObjectId
	AngleTowardTarget({ Id = newUnit.ObjectId, DestinationId = CurrentRun.Hero.ObjectId })
end


modutil.mod.Path.Wrap("HandleNemesisCombatSpawn", function(baseFunc, eventSource, args)
    if HeroHasTrait("NemesisAspect") then
        return mod.HandleNemesisCombatSpawn(eventSource, args)
    else
        return baseFunc(eventSource, args)
    end
end)


