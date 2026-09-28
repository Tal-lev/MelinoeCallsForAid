local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/PlayerProjectiles.sjson')
sjson.hook(file, function(data)

	table.insert(data.Projectiles,
	{
		Name = "ChronosRushPoseidonBlast",
		InheritFrom = "1_BaseProjectile",
		DetonateFx = "PoseidonCastBoonFx",
		Type = "INSTANT",
		Fuse = 0.02,
		Range = 0,
		Damage = 30,
		DamageRadius = 300.0,
		DamageRadiusScaleY = 0.6,
		DamageRadiusScaleX = 1.1,
		BlastSpeed = 3000,
		AutoAdjustForTarget = false,
		UseVulnerability = false,
		NumPenetrations = 999,
		IgnoreDodge = true,
		SpawnRadius = 0,
		Speed = -100,
		UseStartLocation = true,
		DetonateLineOfSight = true,
		CanHitWithoutDamage = true,
		ImpactVelocity = 1100,
		UseRadialImpact = true,
		SilentImpactOnInvulnerable = true,
		Thing =
		{
			Graphic = "null",
			OffsetZ = 70,
			AttachedAnim = "null",
			RotateGeometry = true,
			Grip = 999999,
			Points =
			{
				{
					X = 48,
					Y = 48,
				},
				{
					X = 48,
					Y = -48,
				},
				{
					X = -48,
					Y = -48,
				},
				{
					X = -48,
					Y = 48,
				},
			},
		},
	})
	
	table.insert(data.Projectiles,
	{
		Name = "ChronosRushApolloBlast",
		InheritFrom = "1_BaseProjectile",
		DetonateFx = "ApolloAoEStrike",
		Type = "INSTANT",
		Fuse = 0.02,
		Range = 0,
		Damage = 1,
		DamageRadius = 300.0,
		DamageRadiusScaleY = 0.6,
		DamageRadiusScaleX = 1.1,
		BlastSpeed = 3000,
		AutoAdjustForTarget = false,
		UseVulnerability = false,
		NumPenetrations = 999,
		IgnoreDodge = true,
		SpawnRadius = 0,
		Speed = -100,
		UseStartLocation = true,
		DetonateLineOfSight = true,
		CanHitWithoutDamage = true,
		ImpactVelocity = 0,
		UseRadialImpact = true,
		SilentImpactOnInvulnerable = true,
		Thing =
		{
			Graphic = "null",
			OffsetZ = 70,
			AttachedAnim = "null",
			RotateGeometry = true,
			Grip = 999999,
			Points =
			{
				{
					X = 48,
					Y = 48,
				},
				{
					X = 48,
					Y = -48,
				},
				{
					X = -48,
					Y = -48,
				},
				{
					X = -48,
					Y = 48,
				},
			},
		},
	})

	table.insert(data.Projectiles,
	{
    	Name = "HadesOneDemeterRushProjectile",
    	InheritFrom = "1_BaseProjectile",
    	Type = "HOMING",
    	HomingAllegiance = "ENEMIES",
    	AffectsEnemies = true,
    	AffectsFriends = false,
    	AffectsSelf = false,
    	AdjustRateAcceleration = -260,
    	UnlimitedUnitPenetration = true,
    	Range = 700,
    	Speed = 2000,
    	DamageRadius = 120,
    	DamageRadiusScaleY = 0.7,
    	DamageRadiusScaleX = 1.3,
    	Damage = 30,
    	ImpactVelocity = 0,
    	MultiDetonate = true,
    	TotalFuse = 0.5,
    	Fuse = 0.1,
    	ImpactFx = "null",
    	DetonateFx = "null",
    	DissipateFx = "HadesOneDemeterRushProjectileImpactFx",
    	UseVulnerability = false,
    	IgnoreCoverageAngles = true,
    	SilentImpactOnInvulnerable = true,
    	--SpawnOnDetonate = "DemeterIce",
    	--SpawnType = "PROJECTILE",
	    GroupName = "Standing",
    	Thing = {
        	Graphic = "HadesOneDemeterRushProjectileHead",
        	OffsetZ = 0,
        	Grip = 999999,
        	AttachedAnim = "null",
        	UseBoundsForSortDrawArea = true,
        	Points = {
				{
					X = 90,
					Y = 0,
				},
				{
					X = 0,
					Y = -45,
				},
				{
					X = -90,
					Y = 0,
				},
				{
					X = 0,
					Y = 45,
				},
			},
		},
        Effects = {
			{
				Name = "DemeterSlow",
				IgnoreName = "_PlayerUnit",
				Duration = 8.0,
				Stacks = true,
				ExtendDurationOnReapply = true,
				IsVulnerabilityEffect = true,
				MaxStacks = 10,
				Active = true,
				StartFx = "DemeterSlowImpact",
				ReapplyFx = "DemeterSlowImpactReapply",
				Sound = "/SFX/Player Sounds/DemeterFrozenDebuffSFX",
				StopSoundOnFinishFade = 0.5,
				FrontFx = "DemeterSlowFront",
				--BackFx = "DemeterSlowBack",
				FlashFrontFxWhenExpiring = true,
				--FlashBackFxWhenExpiring = true,
				TimeModifierFraction = 0,
				ExpiringRapidFlashThreshold = 0.3,
				ElapsedTimeMultiplier = 0.96,
			},
		},
    })

	return data
end)