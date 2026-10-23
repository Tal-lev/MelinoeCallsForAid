local file = rom.path.combine(rom.paths.Content, 'Game/Projectiles/PlayerProjectiles.sjson')
sjson.hook(file, function(data)

    --Nemesis Cast Defence
	table.insert(data.Projectiles,
	{
		Name = "NemesisCastDefense",
		InheritFrom = "1_BaseProjectile",
		Type = "HOMING",
		AffectsEnemies = true,
		AffectsFriends = false,
		AffectsSelf = false,
		UnlimitedUnitPenetration = true,
		MultipleUnitCollisions = false,
		MultipleObstacleCollisions = true,
		AttachToOwner = true,
		RotateWithOwner = false,
		NumPenetrations = 9999,
		CollisionLayer = "BoonDefense",
		ProjectileDefenseBlockSpawns = true,
		Range = 0,
		Speed = 0,
		DamageRadius = 150,
		DamageRadiusScaleY = 0.5,
		Damage = 0,
		ExpandBlastDuringDetonation = true,
		BlastSpeed = 3000,
		UseDetonationForProjectileDefense = true,
		MultiDetonate = true,
		TotalFuse = 3600.0,
		StartDelay = 0,
		UseVulnerability = false,
		IgnoreCoverageAngles = true,
		SilentImpactOnInvulnerable = true,
		Thing =
		{
			Graphic = "null",
			OffsetZ = 0,
			Grip = 999999,
			UseBoundsForSortDrawArea = true,
			SortBoundsScale = 2,
			Tallness = 20,
			Points =
			{
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
	})

    table.insert(data.Projectiles,
    {
        Name = "ZeusRetaliateStrike",
        InheritFrom = "ZeusLightningStrikeBase",
        Damage = 50,

    })

	return data
end)

function mod.RemoveNemesisCastDefense() 
	ExpireProjectiles({ Names = { "NemesisCastDefense" }} )
	SessionMapState.CastDefense = {}
	if MapState[_PLUGIN.guid .. "BossShieldTriggers"] == MapState.BossShieldTriggers then
		MapState.BossShieldTriggers = MapState.BossShieldTriggers - 1
	end
end

function mod.AddNemesisCastDefense()
    local weaponData = GetWeaponData( CurrentRun.Hero, "WeaponCast" )
    local durationTime = 0.3
    thread(DoSuitExAttackBlock, weaponData, durationTime)
	if not MapState.BossShieldTriggers then
		MapState.BossShieldTriggers = 0
		MapState.BossShieldFx = "null"
	end
	MapState.BossShieldTriggers = MapState.BossShieldTriggers + 1
	MapState[_PLUGIN.guid .. "BossShieldTriggers"] = MapState.BossShieldTriggers
end
