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

	return data
end)