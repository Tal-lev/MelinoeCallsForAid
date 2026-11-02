--Adding New Projectiles
local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/NPC_Projectiles.sjson')
sjson.hook(file, function(data)

    --Staff Mel
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

    table.insert(data.Projectiles,
    {
		Name = "MelRivalProjectileSuit",
		InheritFrom = "1_BaseNPCProjectile",
		DetonateFx = "null",
		Type = "STRAIGHT",
		UnlimitedObstaclePenetration = true,
		NumPenetrations = 99999,
		UseArmor = true,
		InvulnerableImpactOwnerVelocity = 0,
		UseRadialImpact = false,
		ImpactLineOfSightFromOwner = false,
		ProjectileDefenseRadius = 150,
		ProjectileDefenseAngle = 110,
		AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		UnlimitedUnitPenetration = true,
		AttachToOwner = true,
		Damage = 250,
		ImpactVelocity = 700,
		Fuse = 0.1,
		UseVulnerability = true,
		StartDelay = 0.03,
		StartFx = "SuitPunchBase",
		--DeathFx = "StaffComboAttack2Dissipate",
		--DissipateFx = "StaffComboAttack2Dissipate",
		GroupName = "FX_Standing_Add",
		Thing =
		{
			RotateGeometry = true,
			SortBoundsScale = 0.1,
			--//Graphic = "StaffComboAttack2",
			OffsetZ = 50,
			Points =
			{
				{
					X = -10,
					Y = -110,
				},
				{
					X = -10,
					Y = 110,
				},
				{
					X = 200,
					Y = 130,
				},
				{
					X = 200,
					Y = -130,
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
		Name = "MelRivalProjectileSuit2",
		InheritFrom = "1_BaseNPCProjectile",
		DetonateFx = "null",
		Type = "STRAIGHT",
		UnlimitedObstaclePenetration = true,
		NumPenetrations = 99999,
		UseArmor = true,
		InvulnerableImpactOwnerVelocity = 0,
		UseRadialImpact = false,
		ImpactLineOfSightFromOwner = false,
		ProjectileDefenseRadius = 150,
		ProjectileDefenseAngle = 110,
		AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		UnlimitedUnitPenetration = true,
		AttachToOwner = true,
		Fuse = 0.1,
		UseVulnerability = true,
		Damage = 250,
		StartDelay = 0.05,
		StartFx = "SuitPunchBase",
		--DissipateFx = "StaffComboAttack3Dissipate",
		--DeathFx = "StaffComboAttack3Dissipate",
		GroupName = "Standing",
		Thing =
		{
			--//Graphic = "StaffComboAttack3",
			RotateGeometry = true,
			SortBoundsScale = 0.1,
			OffsetZ = 70,
			Points =
			{
				{
					X = -10,
					Y = -120,
				},
				{
					X = -10,
					Y = 120,
				},
				{
					X = 220,
					Y = 140,
				},
				{
					X = 220,
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
		Name = "MelRivalProjectileSuitRangedGuided",
		InheritFrom = "MelRivalProjectileSuitRangedUnguided",
		Type = "HOMING"	,
		DamageRadius = 160.0,
		DamageRadiusScaleY = 0.6,
		BlastSpeed = 2000,
		DetonateFx = "SuitRocketExplosion",
		DetonateSound = "/SFX/Player Sounds/MelSkullsAttackExplode",
		CheckUnitImpact = true,
		AdjustRateAcceleration = 900,
		MaxAdjustRate = 3600,
        AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
		StartFx = "null",
		Speed = 800,
		HideGraphicOnDetonate = true,
		Fuse = 2.0,
		Damage = 30,
		MaxSpeed = 1200,
		ManuallySetTarget = false,
		Acceleration = 300,
		Range = 635,
		RequireHitCenter = false,
		IgnoreObstacleImpactDuration = 0.15,
		MaxVictimZ = 9999,
		ObstacleCollisionCheck = "PolygonContainsPoint",
		Thing =
		{
			Graphic = "SuitRocketTravelUnguided",
			AttachedAnim = "SuitRocketShadow",
		},
        Effect =
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
		Name = "MelRivalProjectileLob" ,
		InheritFrom = "1_BaseNPCProjectile",
		DetonateFx = "LobExplosionBase",
		DetonateSound = "/SFX/Player Sounds/MelSkullsAttackExplode",
		BounceFx = "LobProjectileBounceFx",
		Type = "HOMING",
		MaxAdjustRate = 30,
		AdjustRateAcceleration = -5,
		Damage = 250,
		DamageRadius = 235.0,
		DamageRadiusScaleY = 0.6,
		AutoAdjustForTarget = false,
		Speed = 400,
		Acceleration = 1600,
		MaxSpeed = 1800,
		LaunchAngle = 18,
		MinRange = 0.0,
		Range = 790,
		BlastSpeed = 3000,
		ImpactVelocity = 0.0,
		AffectsEnemies = true,
        AffectsFriends = true,
        AffectsSelf = false,
		CheckUnitImpact = true,
		CheckObstacleImpact = true,
		SelfImpactVelocityMultiplier = 0,
		ReflectFx = "GrenadeBounceSpark",
		StartFx = "StaffProjectileFireFx2Close",
		UseVulnerability = true,
		RequireHitCenter = false,
		IgnoreObstacleImpactDuration = 0.05,
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
		Thing =
		{
			Graphic = "LobProjectile",
			Scale = 1,
			OffsetZ = 70,
			AttachedAnim = "GrenadierShadow",
			TouchdownSound = "/SFX/Player Sounds/MelSkullsHopBounce",
			RotateGeometry = true,
			Points =
			{
				{
					X = 32,
					Y = 24,
				},
				{
					X = 32,
					Y = -24,
				},
				{
					X = -32,
					Y = -24,
				},
				{
					X = -32,
					Y = 24,
				},
            },
		},
	})

    table.insert(data.Projectiles,
    {
		Name = "MelRivalProjectileThrowBlink",
        InheritFrom = "1_BaseNPCProjectile",
		DetonateSound = "null",
		Type = "GUN",
		Fuse = 0.01,
		Range = 250,
		Damage = 300,
		DamageRadius = 150,
		DamageRadiusScaleY = 0.6,
		DamageRadiusScaleX = 1.1,
		BlastStartRadius = 140,
		BlastSpeed = 75,
		ImmunityDuration = 0.2,
		--//DetonateFx = "StaffChargedAttackFxBall"
		UseRadialImpact = true,
		AutoAdjustForTarget = false,
		NumPenetrations = 999,
		SilentImpactOnInvulnerable = true,
		ClearOnAttackEffects = false,
		AttachToOwner = true,
		UseVulnerability = true,
		Thing =
		{
			Graphic = "DashLobTrailEmitter",
			OffsetZ = 70,
			AttachedAnim = "null",
			RotateGeometry = true,
			Grip = 999999,
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
        }
	})

    return data
end)

--Adding New Weapons
OverwriteTableKeys(WeaponData, {
    MelRival_Staff_NemesisAttack1 =
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

	MelRival_Staff_NemesisAttack2 =
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

	MelRival_Staff_NemesisAttack3 =
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

    MelRival_Staff_NemesisSpecial =
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

    MelRival_Suit_NemesisAttack1 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileSuit",

			FireSelfVelocity = 700,
			FireProjectileStartDelay = 0.1,

			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.22,
			PreAttackSound = "/VO/MelinoeEmotes/EmoteAttackingSuit",
			FireDuration = 0.14,
			PostAttackDuration = 0.0, -- animation is 0.68

			AttackDistance = 200,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Suit_AttackPunch1_Start",
			FireAnimation = "Melinoe_Suit_AttackPunch1_Fire",
			--PostAttackAnimation = "Nemesis_Combat_Attack1_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,

			ChainedWeapon = "MelRival_Suit_NemesisAttack2",
		},

		Sounds =
		{
			FireSounds =
			{
				--{ Name = "/SFX/Player Sounds/MelStaffSwipeWhoosh" },	
			},
		},
	},

    MelRival_Suit_NemesisAttack2 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileSuit2",

			FireSelfVelocity = 700,
			FireProjectileStartDelay = 0.1,

			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.22,
			PreAttackSound = "/VO/MelinoeEmotes/EmoteAttackingSuit",
			FireDuration = 0.14,
			PostAttackDuration = 0.0, -- animation is 0.68

			AttackDistance = 200,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Suit_AttackPunch2_Start",
			FireAnimation = "Melinoe_Suit_AttackPunch2_Fire",
			--PostAttackAnimation = "Nemesis_Combat_Attack1_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,
		},

		Sounds =
		{
			FireSounds =
			{
				--{ Name = "/SFX/Player Sounds/MelStaffSwipeWhoosh" },	
			},
		},
	},

    MelRival_Suit_NemesisSpecial =
	{
		Requirements =
		{
			MinAttacksBetweenUse = 1,
		},
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileSuitRangedGuided",

			BarrelLength = 0,
			FireProjectileStartDelay = 0.1,

			PreAttackDuration = 0.67,
			PreAttackSound = "/SFX/Player Sounds/MelinoeSuitSpecialPreLaunch",
			FireDuration = 0.35,
			PostAttackDuration = 0.6, -- animation is 0.58

			AttackDistance = 600,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Suit_SpecialMissile_Start",
			FireAnimation = "Melinoe_Suit_SpecialMissile_FireQuick",
			--PostAttackAnimation = "Melinoe_Staff_Special1_End",

			ExpireProjectilesOnHitStun = true,
			PreAttackAngleTowardTarget = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,
		},
        --OnProjectileDeathFunction = "WeaponSuitAmmoTransform",
        --OnProjectileDeathFunctionArgs = 
		--{
        --    MelRivalProjectileSuitRangedUnguided = 
        --    {
        --        Name = "MelRivalProjectileSuitRangedGuided",
        --        PrioritizeDifferent = true,
        --    },
        --},
		Sounds =
		{
			FireSounds =
			{
				{ Name = "/VO/MelinoeEmotes/EmotePowerAttackingSuit" },
				--{ Name = "/Leftovers/SFX/AuraThrowSmall" },
			},
		},

	},

     MelRival_Lob_NemesisAttack1 =
	{
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileLob",

			FireSelfVelocity = 700,
			FireProjectileStartDelay = 0.1,

            BarrelLength = 50,
			PreAttackAngleTowardTarget = true,
			WaitForAngleTowardTarget = true,
			TrackTargetDuringCharge = true,
			PreAttackRotationDampening = 0.09,

			PreAttackDuration = 0.5,
			PreAttackSound = "/SFX/Enemy Sounds/Hades/HadesSkullPreAttack",
			FireDuration = 0.24,
			PostAttackDuration = 0.0, -- animation is 0.68

			AttackDistance = 750,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Lob_Attack1_Start",
			FireAnimation = "Melinoe_Lob_Attack1_Fire",
			--PostAttackAnimation = "Nemesis_Combat_Attack1_End",

			ExpireProjectilesOnHitStun = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,

		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/MelSkullsDash" },	
                { Name = "/VO/MelinoeEmotes/EmoteAttackingDaggerThrow" },	
			},
		},
	},

    MelRival_Lob_NemesisSpecial =
	{
		Requirements =
		{
			MinAttacksBetweenUse = 1,
		},
		AIData =
		{
			DeepInheritance = true,

			ProjectileName = "MelRivalProjectileThrowBlink",
            WeaponRange = 440,
            BlinkMaxRange = 440,
            BlinkSpeed = 1750,
            BlinkDetonateOnInterval = 200,
			BarrelLength = 100,
			FireProjectileStartDelay = 0.1,
            FireSelfVelocity = 1200,
			PreAttackDuration = 0.67,
			PreAttackSound =  "/SFX/Enemy Sounds/Hades/HadesSkullPreAttack",
			FireDuration = 0.35,
			PostAttackDuration = 0.6, -- animation is 0.58

			AttackDistance = 250,
			MoveWithinRange = true,
			PreAttackStop = true,

			PreAttackEndShake = false,
			PreAttackAnimation = "Melinoe_Lob_Special1_Start",
			FireAnimation = "Melinoe_Lob_Special1_Fire",
			--PostAttackAnimation = "Melinoe_Staff_Special1_End",

			ExpireProjectilesOnHitStun = true,
			PreAttackAngleTowardTarget = true,
			TargetRequiredKillEnemy = true,
			TrackKillSteal = true,
		},
		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Player Sounds/MelSkullsDash" },
				{ Name = "/VO/MelinoeEmotes/EmoteAttackingDaggerThrow" },
			},
		},

	},
})

function mod.HandleNemesisCombatSpawn( eventSource, args )
    args = args or {}
    local weapon = GetRandomValue({"Staff", "Suit", "Lob"})
    --local weapon = GetRandomValue({"Lob"})
    mod.SetupRivalMelAnim(weapon)
	local currentRun = CurrentRun
	local currentRoom = CurrentRun.CurrentRoom
	local currentEncounter = eventSource

	local newUnit = DeepCopyTable( EnemyData.NPC_Nemesis_01 )
    newUnit.Melinoe = weapon
    
	-- local heroExitIds = GetIdsByType({ Name = "HeroExit" })
	-- local heroExitPointId = GetClosest({ Id = currentRun.Hero.ObjectId, DestinationIds = heroExitIds, Distance = 600 })
	local variantData = NPCVariantData.NemesisCombat
	if NPCVariantData["NemesisCombat_"..CurrentRun.CurrentRoom.RoomSetName] then
		variantData = NPCVariantData["NemesisCombat_"..CurrentRun.CurrentRoom.RoomSetName]
	end
	OverwriteSelf( newUnit, variantData )
    
    if newUnit.WeaponOptions then
        newUnit.WeaponOptions = { "MelRival_" .. weapon .. "_NemesisAttack1", "MelRival_" .. weapon .. "_NemesisSpecial", }
    end
    if newUnit.NemesisPostRandomEventCombat then
        newUnit.NemesisPostRandomEventCombat.WeaponOptions = { "MelRival_" .. weapon .. "_NemesisAttack1", "MelRival_" .. weapon .. "_NemesisSpecial", "NemesisDash" }
    end
    if newUnit.NemesisFieldsPreRandomEventCombat then
        newUnit.NemesisFieldsPreRandomEventCombat.WeaponOptions = { "MelRival_" .. weapon .. "_NemesisAttack1", "MelRival_" .. weapon .. "_NemesisSpecial", }
    end
    if newUnit.NemesisCombat then
        newUnit.NemesisCombat.WeaponOptions = { "MelRival_" .. weapon .. "_NemesisAttack1", "MelRival_" .. weapon .. "_NemesisSpecial", }
    end
    if newUnit.TurnInPlaceAnimation then
        newUnit.TurnInPlaceAnimation = "Melinoe_" .. weapon .. "_Idle"
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
	SetThingProperty({ Property = "Graphic", Value = "Melinoe_" .. weapon .. "_Idle", DestinationId = newUnit.ObjectId })
	SetThingProperty({ Property = "Tallness", Value = 200, DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "StartGraphic", Value = "Melinoe_" .. weapon .. "_Run_Start", DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "MoveGraphic", Value = "Melinoe_" .. weapon .. "_Run_FireLoop", DestinationId = newUnit.ObjectId })
	SetUnitProperty({ Property = "StopGraphic", Value = "Melinoe_" .. weapon .. "_Run_End", DestinationId = newUnit.ObjectId })
    
    SetScale({ Id = newUnit.ObjectId, Fraction = 0.75 })

	newUnit.UseActivatePresentation = false

	if CurrentRun.CurrentRoom.SpawnedRewardCageIndicators then
		CreateScreenEdgeIndicator( newUnit, { AnimName = newUnit.Icon } )
	end

	currentEncounter.NemesisId = newUnit.ObjectId
	SetupUnit( newUnit, CurrentRun, { IgnoreAI = true, IgnoreAssert = true } )
    SetAnimation({ DestinationId = newUnit.ObjectId, Name = "Melinoe_" .. weapon .. "_Idle" })
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


