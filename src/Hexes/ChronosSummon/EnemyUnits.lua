OverwriteTableKeys( WeaponData, {
	TimeElementalHealBeamDouble =
	{
		AIData =
		{
			DeepInheritance = true,
			ConditionalData =
			{
				{
					GameStateRequirements =
					{
						{
							PathFromSource = true,
							PathTrue = { "Charmed" },
						},
					},
					Data =
					{
						TargetClosestOfTypes = "nil",
						TargetPlayer = true,
						ProjectileName = "TimeElementalHealBeam_AllyDouble",
					},
				},
			},
			TargetClosestOfTypes = { "Chronos", },

			ApplyEffectsOnWeaponFire =
			{
				{
					EffectName = "FireSpeedDamp",
					ClearEffectOnHit = true,
					DataProperties = 
					{
						Type = "SPEED",
						Duration = 3.4,
						Modifier = 0.25,
					}
				},
			},

			ProjectileName = "TimeElementalHealBeam",
			BarrelLength = 0,
			FireProjectileStartDelay = 0.12,
			ExpireProjectilesOnHitStun = true,
			ExpireProjectilesOnFreeze = true,
			ExpireProjectilesOnPolymorph = true,

			WaitForAngleTowardTarget = true,
			WaitForAngleTowardTargetTimeOut = 1.0,
			TrackTargetDuringCharge = true,
			StopBeforeFire = true,
			TrackTargetDuringFire = true,
			PostAttackStop = true,
			SkipRetreatEndStop = true,

			PreAttackEndShake = true,
			PreAttackEndDuration = 0.35,

			PreAttackSound = "/SFX/Enemy Sounds/EarthElemental/EmoteCharging",
			PreAttackAnimation = "Enemy_TimeElemental_PreAttack",
			FireAnimation = "Enemy_TimeElemental_AttackPostFire",
			PreAttackFx = "TimeElementalBeamPreview",
			EndPreAttackFx = true,

			PreAttackDuration = 1.0,
			FireDuration = 3.4,
			PostAttackDurationMin = 1.3, -- anim is 0.65
			PostAttackDurationMax = 1.8,

			RetreatWhileFiring = true,
			RetreatToSpawnPoints = true,
			RetreatBufferDistance = 1000,
			RetreatProximity = 50,
			RetreatOccupySpawnPoint = true,

			AttackDistance = 150,
			AttackDistanceScaleY = 0.5,

			MoveToClosestSpawnPoint = true,
		},

		Sounds =
		{
			FireSounds =
			{
				{ Name = "/SFX/Enemy Sounds/EarthElemental/EmoteAttacking" },
				{ Name = "/SFX/Player Sounds/ZagreusBloodshotFire" },
			},
		},
	},
})

local file = rom.path.combine(rom.paths.Content, 'Game/Units/Enemies.sjson')
sjson.hook(file, function(data)

	table.insert(data.Units,
	{
		Name = "TimeElemental2Double",
		InheritFrom = "TimeElemental2",
	})

return data
end)

UnitSetData.ChronosSummonSpell =
{
-- Short-Aggro crawler, lashes out violently if approached
	TimeElemental2Double =
	{
		InheritFrom = { "TimeElemental2" },
		WeaponOptions =
		{
			"TimeElementalHealBeamDouble",
		},
	},
}

OverwriteTableKeys( EnemyData, UnitSetData.ChronosSummonSpell )
