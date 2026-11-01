function mod.NemesisZeusRetaliate( blocker, args, triggerArgs )
  local attacker = triggerArgs.Attacker 
  if attacker and not attacker.SkipModifiers and not attacker.IsDead and not IsUntargetable({Id = attacker.ObjectId}) and not IsInvulnerable({ Id = attacker.ObjectId }) then
    local strikeCount = 1
    while RandomChance( args.ConsecutiveStrikeChance * GetTotalHeroTraitValue( "LuckMultiplier", { IsMultiplier = true }) ) and strikeCount < args.MaxStrikes do
      strikeCount = strikeCount + 1
    end
    if strikeCount > 1 then
      thread( InCombatTextArgs, { TargetId = CurrentRun.Hero.ObjectId, Text = "BoltRetaliate_CombatText", LuaKey = "TempTextData", ShadowScaleX = 1.1, LuaValue = { Amount = strikeCount }} )
    end
    CreateZeusBolt({
      ProjectileName = args.ProjectileName, 
      WeaponName = args.WeaponName,
      TargetId = attacker.ObjectId, 
      DamageMultiplier = args.DamageMultiplier,
      Delay = 0.1, 
      FollowUpDelay = 0.5, 
      Count = strikeCount
    })
  end
end

function mod.NemesisRetaliate( blocker, args, triggerArgs )
	local attacker = triggerArgs.Attacker 
	if attacker and not attacker.SkipModifiers and not attacker.IsDead and not IsUntargetable({Id = attacker.ObjectId}) and not IsInvulnerable({ Id = attacker.ObjectId }) then
		if args.Animation then
			thread(CreateAnimation,{ Name = args.Animation, DestinationId = attacker.ObjectId})
			wait(0.1)
		end
		local angle = 0
		local times = 1 
		if args.Times then
			times = args.Times
		end
		if args.Angle then
			if args.Angle == "push" then
				angle = GetAngleBetween({ DestinationId = attacker.ObjectId, Id = CurrentRun.Hero.ObjectId })
			elseif args.Angle == "pull" then
				angle = GetAngleBetween({ DestinationId = CurrentRun.Hero.ObjectId, Id = attacker.ObjectId })
			end
		end
		for i = 1, times do
			CreateProjectileFromUnit({
			Id = CurrentRun.Hero.ObjectId,
			Name = args.ProjectileName, 
			WeaponName = args.WeaponName,
			DestinationId = attacker.ObjectId, 
			DamageMultiplier = args.DamageMultiplier,
			FireFromTarget = true,
			Angle = angle or nil,
    		})
			wait(0.1)
			if args.Angle and args.Force then
				ApplyForce({ Id = attacker.ObjectId, Angle = angle, Speed = args.Force })
			end
			wait(0.5)
		end
		
	end
end

function mod.NemesisBurnRetaliate( blocker, args, triggerArgs )
	local attacker = triggerArgs.Attacker 
	if attacker and not attacker.SkipModifiers and not attacker.IsDead and not IsUntargetable({Id = attacker.ObjectId}) and not IsInvulnerable({ Id = attacker.ObjectId }) then
		if args.Animation then
			thread(CreateAnimation,{ Name = args.Animation, DestinationId = attacker.ObjectId})
			wait(0.1)
		end
		ApplyBurn(attacker, args)
	end
end

function mod.CheckCastSummonDamage( enemy, traitArgs)
	if enemy.IsDead or enemy.IgnoreCastSummonDamage then
		return
	end
	traitArgs = traitArgs or {}
	delay = traitArgs.Delay or 0.1
	wait( delay, RoomThreadName)
	CreateProjectileFromUnit({ Name = traitArgs.ProjectileName, Id = CurrentRun.Hero.ObjectId, DestinationId = enemy.ObjectId, DamageMultiplier = traitArgs.DamageMultiplier })
	if CheckCooldown("HeraCastPresentation", traitArgs.VfxCooldown) then
		local location = GetLocation({ Id = CurrentRun.Hero.ObjectId})
		local ropeTargetId = SpawnObstacle({ Name = "InvisibleTarget", LocationX = location.X, LocationY = location.Y}) 
		CreateAnimationsBetween({
			Animation = "HeraRope", DestinationId = enemy.ObjectId, Id = ropeTargetId, 
			Stretch = true, UseZLocation = false})
		thread( DestroyOnDelay, { ropeTargetId } , 0.1 )
	end
end

function mod.CheckCastVolley( victim, functionArgs, triggerArgs )
	local weaponName = triggerArgs.SourceWeapon
	if triggerArgs.SourceProjectile and ProjectileData[triggerArgs.SourceProjectile] and not ProjectileData[triggerArgs.SourceProjectile].IsAdditionalCastProjectile then
		local offset = CalcOffset( math.rad( GetAngle({ Id = victim.ObjectId }) ), functionArgs.SpawnDistance )
		local dropLocation = SpawnObstacle({ Name = "InvisibleTarget", DestinationId = victim.ObjectId })
		local angle = GetAngle({ Id = victim.ObjectId }) + 180
		wait( functionArgs.Delay * (SessionState.ArtemisCastProjectiles or 0), RoomThreadName)
		CreateProjectileFromUnit({ 
			Name = functionArgs.ProjectileName,
			Id = CurrentRun.Hero.ObjectId,
			DestinationId = dropLocation,
			FireFromTarget = true,
			OffsetX = offset.X,
			OffsetY = offset.Y,
			Angle = angle,
			DamageMultiplier = functionArgs.DamageMultiplier,
			ProjectileCap = functionArgs.ProjectileCap,
		})
		PlaySound({ Name = "/Leftovers/SFX/AuraPerfectThrow", Id = dropLocation, ManagerCap = 46 })
		IncrementTableValue( SessionState, "ArtemisCastProjectiles" )
		thread(DestroyOnDelay, {dropLocation}, 0.1)		
	end
end


function mod.NemesisGiveRandomHadesBoonAndBoostBoons( args, traitData )
	RandomSynchronize()
	if not CurrentRun.Hero.IsDead and IsFateValid() then
		if not CurrentRun.DeathDefianceDamageBoonEligible and GameState.MetaUpgradeState and GameState.MetaUpgradeState.LastStand and GameState.MetaUpgradeState.LastStand.Equipped then
			CurrentRun.DeathDefianceDamageBoonEligible = true
		end
		local eligibleTraits = {}
		for i, traitName in pairs( UnitSetData.NPC_Hades.NPC_Hades_Field_01.Traits ) do
			if IsTraitEligible( TraitData[traitName] ) and not HeroHasTrait(traitName) then
				if traitName ~= "HadesCastProjectileBoon" then
					table.insert( eligibleTraits, traitName )
				end
			end
		end
		local traitName = GetRandomArrayValue( eligibleTraits )

		local newTrait  = GetProcessedTraitData({ Unit = CurrentRun.Hero, TraitName = traitName })
		newTrait.GrantedTrait = true
		AddTraitToHero({ TraitData = newTrait, SkipUIUpdate = true })
		UpdateHeroTraitDictionary()
		if newTrait then
			thread( HadesKeepsakeAcquiredPresentation, newTrait.Name )
		end
	end
end

--Ensuring Nemesis Doesn't get Howling Soul
ModUtil.Path.Wrap("GiveRandomHadesBoonAndBoostBoons", function(baseFunc, args, traitData)
	if HeroHasTrait("NemesisAspect") or GameState.LastWeaponUpgradeName['WeaponStaffSwing'] == "NemesisAspect" then
		return mod.NemesisGiveRandomHadesBoonAndBoostBoons( args, traitData )
	else
		baseFunc(args, traitData)
	end
end)

------ Adding GameStateRequirements for all
-- Zeus
TraitData.ZeusCastBoon.GameStateRequirements = TraitData.ZeusCastBoon.GameStateRequirements or {}
TraitData.CastAnywhereBoon.GameStateRequirements = TraitData.CastAnywhereBoon.GameStateRequirements or {}
-- Hera
TraitData.HeraCastBoon.GameStateRequirements = TraitData.HeraCastBoon.GameStateRequirements or {}
TraitData.SpawnCastDamageBoon.GameStateRequirements = TraitData.SpawnCastDamageBoon.GameStateRequirements or {}
-- Poseidon
TraitData.PoseidonCastBoon.GameStateRequirements = TraitData.PoseidonCastBoon.GameStateRequirements or {}
TraitData.PoseidonExCastBoon.GameStateRequirements = TraitData.PoseidonExCastBoon.GameStateRequirements or {}
-- Demeter
TraitData.DemeterCastBoon.GameStateRequirements = TraitData.DemeterCastBoon.GameStateRequirements or {}
TraitData.CastAttachBoon.GameStateRequirements = TraitData.CastAttachBoon.GameStateRequirements or {}
-- Apollo
TraitData.ApolloCastBoon.GameStateRequirements = TraitData.ApolloCastBoon.GameStateRequirements or {}
TraitData.ApolloExCastBoon.GameStateRequirements = TraitData.ApolloExCastBoon.GameStateRequirements or {}
TraitData.ApolloCastAreaBoon.GameStateRequirements = TraitData.ApolloCastAreaBoon.GameStateRequirements or {}
TraitData.ApolloSecondStageCastBoon.GameStateRequirements = TraitData.ApolloSecondStageCastBoon.GameStateRequirements or {}
-- Aphrodite
TraitData.AphroditeCastBoon.GameStateRequirements = TraitData.AphroditeCastBoon.GameStateRequirements or {}
-- Hephaestus
TraitData.HephaestusCastBoon.GameStateRequirements = TraitData.HephaestusCastBoon.GameStateRequirements or {}
-- Hestia
TraitData.HestiaCastBoon.GameStateRequirements = TraitData.HestiaCastBoon.GameStateRequirements or {}
TraitData.CastProjectileBoon.GameStateRequirements = TraitData.CastProjectileBoon.GameStateRequirements or {}
-- Ares
TraitData.AresCastBoon.GameStateRequirements = TraitData.AresCastBoon.GameStateRequirements or {}
TraitData.SelfCastBoon.GameStateRequirements = TraitData.SelfCastBoon.GameStateRequirements or {}
--Artemis
TraitData.OmegaCastVolleyBoon.GameStateRequirements = TraitData.OmegaCastVolleyBoon.GameStateRequirements or {}
--Hermes
TraitData.HermesCastDiscountBoon.GameStateRequirements = TraitData.HermesCastDiscountBoon.GameStateRequirements or {}
--Hades
TraitData.HadesCastProjectileBoon.GameStateRequirements = TraitData.HadesCastProjectileBoon.GameStateRequirements or {}
--Dionysus
TraitData.CastLobBoon.GameStateRequirements = TraitData.CastLobBoon.GameStateRequirements or {}
------ Removing old Cast from pool
-- Zeus
table.insert(TraitData.ZeusCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.CastAnywhereBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Hera
table.insert(TraitData.HeraCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.SpawnCastDamageBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Poseidon
table.insert(TraitData.PoseidonCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.PoseidonExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Demeter
table.insert(TraitData.DemeterCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.CastAttachBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Apollo
table.insert(TraitData.ApolloCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.ApolloExCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.ApolloCastAreaBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.ApolloSecondStageCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Aphrodite
table.insert(TraitData.AphroditeCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Hephaestus
table.insert(TraitData.HephaestusCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Hestia
table.insert(TraitData.HestiaCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.CastProjectileBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Ares works fine
table.insert(TraitData.AresCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
table.insert(TraitData.SelfCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Artemis
table.insert(TraitData.OmegaCastVolleyBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Dionysus
table.insert(TraitData.CastLobBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
--Hermes
table.insert(TraitData.HermesCastDiscountBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Hades
table.insert(TraitData.HadesCastProjectileBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})

--Adding new Cast Boons

OverwriteTableKeys(TraitData, {
	
	NemesisDummyCastCooldownTrait = {
        Icon = "Hammer_Staff_37",
        Hidden = true,
		PropertyChanges =
		{
			{
				WeaponName = "WeaponCast",
				WeaponProperties = {
					Cooldown = 0.2,
				},
			},
		},
    },

	--Zeus
	NemesisZeusCastBoon = {
		Icon = "Boon_Zeus_29",
		InheritFrom = { "BaseTrait", "AirBoon" },
		Slot = "Ranged",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Rare =
			{
				Multiplier = 1.3,
			},
			Epic =
			{
				Multiplier = 1.6,
			},
			Heroic =
			{
				Multiplier = 1.9,
			},
		},
		PropertyChanges =
			{
				{
					WeaponName = "WeaponCast",
					WeaponProperty = "FireFx",
					ChangeValue = "QuickFlashYellow",
					ChangeType = "Absolute",
				},
				{
					WeaponName = "WeaponCast",
					ProjectileProperties = 
					{
						Graphic = "NemesisCastCircleInZeus",
					}
				},
			},
		OnBlockDamageFunction = 
		{
			Name = _PLUGIN.guid .. "." .. "NemesisZeusRetaliate",
			Args = 
			{
				ProjectileName = "ZeusRetaliateStrike",
				WeaponName = "WeaponCast",
				Cooldown = 0.15,
				ConsecutiveStrikeChance = 0,
				MaxStrikes = { 
					BaseValue = 1,
					MinValue = 1,
					IdenticalMultiplier = 
					{
						Value = -0.5,
					},
				},
				ReportValues = 
				{ 
					ReportedMaxStrikes = "MaxStrikes",
					ReportedStrikeChance = "ConsecutiveStrikeChance"
				},
			}
		},
    	OnEnemyDamagedAction = 
		{
			ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,
			EffectName = "DamageEchoEffect",
			Args = 
			{
				Modifier = 
				{ 
					BaseValue = 1.0,
					MinMultiplier = 0.10, 
					AbsoluteStackValues =
					{
						[1] = 0.20,
						[2] = 0.15,
					},
				},
				ReportValues = { ReportedMultiplier  = "Modifier"}
			},
		},
		StatLines = 
		{
			"StrainDamageStatDisplay1",
		},
		ExtractValues =
		{
			{
				Key = "ReportedMultiplier",
				ExtractAs = "Damage",
				Format = "MultiplyByBase",
				BaseType = "Projectile",
				BaseName = "ZeusEchoStrike",
				BaseProperty = "Damage",
			},
			{
				ExtractAs = "EchoDuration",
				SkipAutoExtract = true,
				External = true,
				BaseType = "EffectData",
				BaseName = "DamageEchoEffect",
				BaseProperty = "Duration",
			},
			{
				ExtractAs = "EchoThreshold",
				SkipAutoExtract = true,
				External = true,
				BaseType = "EffectData",
				BaseName = "DamageEchoEffect",
				BaseProperty = "DamageThreshold",
			},
		},
		GameStateRequirements = {
				{
					Path = {"CurrentRun", "Hero", "TraitDictionary"},
					HasAll = {"NemesisAspect"}
				}
		},
	},

  --Hera
  NemesisHeraCastBoon = {
    Icon = "Boon_Hera_29",
	InheritFrom = { "BaseTrait", "AirBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.00,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		},
	},
	OnEffectApplyFunction = 
	{
		FunctionName = "CheckApplyDamageShare",
		FunctionArgs = 
		{
			EffectName = "DamageShareEffect",
		},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInHera",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "HeraCastSummonProjectile",
			DamageMultiplier = 
			{ 
				BaseValue = 1,
				AbsoluteStackValues = 
				{
					[1] = 0.50,
					[2] = 0.25,
					[3] = 0.20,
					--[4] = 0.10,
				},
			},
			ReportValues = 
			{
				ReportedMultiplier = "DamageMultiplier",
			},
			WeaponName = "WeaponCast",
		},
	},
    OnEnemyDamagedAction = 
	{
		ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,		
		FunctionName = "ApplyDamageShare",
		Args = 
		{
			EffectName = "DamageShareEffect",
		},	
	},
	StatLines = 
	{
		"DamageShareFirstHitDisplay1",
	},
	ExtractValues = 
	{
		{
			Key = "ReportedMultiplier",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "HeraCastSummonProjectile",
			BaseProperty = "Damage",
			ExtractAs = "Damage",
		},
		{
			ExtractAs = "DamageShareDuration",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Duration",
		},
		{
			ExtractAs = "DamageShareAmount",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Amount",
			Format = "Percent",
			HideSigns = true,
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Rousing Reception
  NemesisSpawnCastDamageBoon = 
  {
	Icon = "Boon_Hera_48",
	InheritFrom = { "BaseTrait", "AirBoon" },
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.00,
		},
		Rare =
		{
			Multiplier = 4/3,
		},
		Epic =
		{
			Multiplier = 5/3,
		},
		Heroic =
		{
			Multiplier = 6/3,
		},
	},
	OnEnemySpawnFunction =
	{
		FunctionName = _PLUGIN.guid .. "." .. "CheckCastSummonDamage",
		Args = 
		{
			ProjectileName = "HeraCastSummonProjectile",
			DamageMultiplier = 
			{ 
				BaseValue = 0.833,
				AbsoluteStackValues = 
				{
					[1] = 0.40,
					[2] = 0.20,
					[3] = 0.15,
					--[4] = 0.10,
				},
			},
			ReportValues = 
			{
				ReportedMultiplier = "DamageMultiplier",
			}
		},
	},
	StatLines = 
	{
		"CastSpawnDamageDisplay1",
	},
	ExtractValues = 
	{
		{
			Key = "ReportedMultiplier",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "HeraCastSummonProjectile",
			BaseProperty = "Damage",
			ExtractAs = "Damage",
		},
		{
			ExtractAs = "DamageShareDuration",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Duration",
		},
		{
			ExtractAs = "DamageShareAmount",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Amount",
			Format = "Percent",
			HideSigns = true,
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
   },

  --Poseidon
  NemesisPoseidonCastBoon = {
    Icon = "Boon_Poseidon_29",
	InheritFrom = { "BaseTrait", "WaterBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.00,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInPoseidon",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "PoseidonSplashSplinter",
				DamageMultiplier = 
				{ 
					BaseValue = 2,
					AbsoluteStackValues = 
					{
						[1] = 0.50,
					}, 
				},
			ReportValues = 
			{
				ReportedMultiplier = "DamageMultiplier",
			},
			Angle = "push",
			Force = 900,
			WeaponName = "WeaponCast",
		},
	},
	StatLines = 
	{
		"SplashDamageStatDisplay1",
	},
	ExtractValues = 
	{
		{
			Key = "ReportedMultiplier",
			ExtractAs = "Damage",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "PoseidonSplashSplinter",
			BaseProperty = "Damage",
		},
		{
			Key = "ReportedCost",
			ExtractAs = "TooltipCost",
			SkipAutoExtract = true,
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Demeter
  NemesisDemeterCastBoon = {
    Icon = "Boon_Demeter_29",
	InheritFrom = { "BaseTrait", "WaterBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.00,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInDemeter",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "DemeterCastBlast",
			Animation = "NemesisDemeterIceRain",
			DamageMultiplier = 
			{ 
				BaseValue = 3,
				AbsoluteStackValues = 
				{
					[1] = 1.50,
					[2] = 0.75,
					[3] = 0.60,
					--[4] = 0.10,
				},
			},
			ReportValues = 
			{
				ReportedMultiplier = "DamageMultiplier",
			},
			WeaponName = "WeaponCast",
		},
	},
    OnEnemyDamagedAction = 
	{
		ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,		
		FunctionName = "ApplyRoot",
		Args = 
		{
			EffectName = "ChillEffect",
		},	
	},
	StatLines = 
	{
		"NemesisShardDamageHitDisplay1",
	},
	ExtractValues = 
	{
		{
			Key = "ReportedMultiplier",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "DemeterCastBlast",
			BaseProperty = "Damage",
			ExtractAs = "Damage",
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Apollo
  NemesisApolloCastBoon = {
    Icon = "Boon_Apollo_29",
	InheritFrom = { "BaseTrait", "FireBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.0,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInApollo",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "ApolloRetaliateStrike",
			DamageMultiplier =
			{
				BaseValue = 1,
				MinMultiplier = 0.1,
				IdenticalMultiplier =
				{
					Value = -0.5,
				},
			},
			ReportValues = { ReportedMultiplier = "DamageMultiplier"},
			WeaponName = "WeaponCast",
		},
	},
    OnEnemyDamagedAction = 
	{
		ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,		
		EffectName = "BlindEffect",
		Chance = 
		{ 
			BaseValue = 0.50,
			AbsoluteStackValues =
			{
				[1] = 0.10,
				[2] = 0.05,
			},
		},
		ReportValues = { ReportedChance = "Chance"},
	},
	StatLines = 
	{
		"RevengeDamageStatDisplay1",
		"NemesisBlindChanceStatDisplay2",
	},
	ExtractValues =
	{
		{
			Key = "ReportedMultiplier",
			ExtractAs = "Damage",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "ApolloRetaliateStrike",
			BaseProperty = "Damage",
		},
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
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Aphrodite
  NemesisAphroditeCastBoon = {
    Icon = "Boon_Aphrodite_29",
	InheritFrom = { "BaseTrait", "AirBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.0,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		}
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInAphrodite",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "AphroditeCastProjectile",
			DamageMultiplier = 
			{ 
				BaseValue = 1.5,
				AbsoluteStackValues = 
				{
					[1] = 0.50,
					[2] = 0.25,
					[3] = 0.20,
					--[4] = 0.10,
				},
			},
			Force = 1100,
			Angle = "pull",
			Times = 3,
			ReportValues = 
			{
				ReportedMultiplier = "DamageMultiplier",
			},
			WeaponName = "WeaponCast",
		},
	},
    OnEnemyDamagedAction = 
	{
		ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,
		EffectName = "WeakEffect",
		Args = 
		{
			Duration = 10,
		},
	},
	StatLines = 
	{
		"NemesisPullDamageStatDisplay1",
	},
	ExtractValues = 
	{
		{
			Key = "ReportedMultiplier",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "AphroditeCastProjectile",
			BaseProperty = "Damage",
			ExtractAs = "Damage",
		},
		{
			ExtractAs = "DamageShareDuration",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Duration",
		},
		{
			ExtractAs = "DamageShareAmount",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectData",
			BaseName = "DamageShareEffect",
			BaseProperty = "Amount",
			Format = "Percent",
			HideSigns = true,
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Hephaestus
  NemesisHephaestusCastBoon = {
    Icon = "Boon_Hephaestus_29",
	InheritFrom = { "BaseTrait", "EarthBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
			{
				Multiplier = 1.0,
			},
			Rare =
			{
				Multiplier = 70/60,
			},
			Epic =
			{
				Multiplier = 80/60,
			},
			Heroic =
			{
				Multiplier = 90/60,
			},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInHephaestus",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "HephCastBlast",
			DamageMultiplier = 
			{ 
				BaseValue = 1.5,
					DecimalPlaces = 3,
					AbsoluteStackValues = 
					{
						[1] = 30/60,
						[2] = 20/60,
						[3] = 15/60,
						[4] = 10/60,
					},
			},
			Times = 1,
			Animation = "HephMassiveHitFixed",
			ReportValues = 
			{ 
				ReportedMultiplier = "DamageMultiplier",
				ReportedFuse = "Delay",
				ReportedDetonations = "Count",
			},
			WeaponName = "WeaponCast",
		},
	},
	StatLines = 
	{
		"RevengeDamageStatDisplay1",
	},
	ExtractValues = 
	{
		{
				Key = "ReportedMultiplier",
				ExtractAs = "Damage",
				Format = "MultiplyByBase",
				BaseType = "Projectile",
				BaseName = "HephCastBlast",
				BaseProperty = "Damage",
			},
			{
				Key = "ReportedFuse",
				ExtractAs = "Fuse",
				DecimalPlaces = 1,
				SkipAutoExtract = true,
			},
			{
				Key = "ReportedDetonations",
				ExtractAs = "Detonations",
				SkipAutoExtract = true,
			},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Hestia
  NemesisHestiaCastBoon = {
    Icon = "Boon_Hestia_29",
	InheritFrom = { "BaseTrait", "FireBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.0,
		},
		Rare =
		{
			Multiplier = 1.5,
		},
		Epic =
		{
			Multiplier = 2.0,
		},
		Heroic =
		{
			Multiplier = 2.5,
		}
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInHestia",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisBurnRetaliate",
		Args = 
		{
			EffectName = "BurnEffect",
			NumStacks = 
			{
				BaseValue = 60,
				MinValue = 1,
				AbsoluteStackValues =
				{
					[1] = 20,
					[2] = 15,
					[3] = 15,
					[4] = 10,
					[5] = 5,
				},
				AsInt = true,
			},
			ReportValues = {ReportedDamage = "NumStacks"}
		},
	},
	StatLines =
	{
		"BurnDamageStatDisplay1",
	},
	ExtractValues =
	{
		{
				Key = "ReportedDamage",
				ExtractAs = "TooltipDamage",
		},
		{
			ExtractAs = "BurnRate",
			SkipAutoExtract = true,
			External = true,
			BaseType = "EffectLuaData",
			BaseName = "BurnEffect",
			BaseProperty = "DamagePerSecond",
			DecimalPlaces = 1,
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Ares
  NemesisAresCastBoon = {
    Icon = "Boon_Ares_29",
	InheritFrom = { "BaseTrait", "EarthBoon" },
	Slot = "Ranged",
	RarityLevels =
	{
		Common =
		{
			Multiplier = 1.0,
		},
		Rare =
		{
			Multiplier = 160/120,
		},
		Epic =
		{
			Multiplier = 200/120,
		},
		Heroic =
		{
			Multiplier = 240/120,
		},
	},
    PropertyChanges =
	{
		{
			WeaponName = "WeaponCast",
			ProjectileProperties = 
			{
				Graphic = "NemesisCastCircleInAres",
			}
		},
	},
	OnBlockDamageFunction = 
	{
		Name = _PLUGIN.guid .. "." .. "NemesisRetaliate",
		Args = 
		{
			ProjectileName = "ProjectileAresSwordCast",
			DamageMultiplier =
			{
				BaseValue = 1,
				DecimalPlaces = 3,
				AbsoluteStackValues =
				{
					[1] = 40/120,
					[2] = 30/120,
					[3] = 20/120,
				},
			},
			ReportValues = { ReportedDamage = "DamageMultiplier" },
			WeaponName = "WeaponCast",
		},
	},
	StatLines =
	{
		"CurseDamageStatDisplay1",
	},
	ExtractValues =
	{
		{
			Key = "ReportedDamage",
			ExtractAs = "Damage",
			Format = "MultiplyByBase",
			BaseType = "Projectile",
			BaseName = "ProjectileAresSwordCast",
			BaseProperty = "Damage",
		},
	},
	GameStateRequirements = {
		{
			Path = {"CurrentRun", "Hero", "TraitDictionary"},
			HasAll = {"NemesisAspect"}
		}
	},
  },

  --Artemis
  NemesisOmegaCastVolleyBoon = 
	{
		Icon = "Boon_Artemis_31",
		InheritFrom = { "InPersonOlympianTrait", "AirBoon" },
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Rare =
			{
				Multiplier = 60/50,
			},
			Epic =
			{
				Multiplier = 70/50,
			},
			Heroic =
			{
				Multiplier = 80/50,
			},
		},
		
		OnEnemyDamagedAction = 
		{
			FunctionName = _PLUGIN.guid .. "." .. "CheckCastVolley",
			ValidWeapons = {"WeaponCast"},
			Args = 
			{
				ProjectileName = "ArtemisCastVolley",
				ProjectileCap = 5,
				SpawnDistance = 2600,
				Delay = 0.04,
				DamageMultiplier = { BaseValue = 1.0 },
				ReportValues = 
				{ 
					ReportedCap = "ProjectileCap",
					ReportedMultiplier = "DamageMultiplier",
				}
			},
		},
	
		OnProjectileDeathFunction = 
		{
			Name = "RemoveCastVolleyProjectile",
		},
		StatLines =
		{
			"SupportFireDamageDisplay2",
		},
		ExtractValues = 
		{
			{
				Key = "ReportedMultiplier",
				ExtractAs = "Damage",
				Format = "MultiplyByBase",
				BaseType = "Projectile",
				BaseName = "ArtemisCastVolley",
				BaseProperty = "Damage",
			},
			{
				Key = "ReportedCap",
				ExtractAs = "Cap",
				SkipAutoExtract = true,
			},
		},
		GameStateRequirements = {
			{
				Path = {"CurrentRun", "Hero", "TraitDictionary"},
				HasAll = {"NemesisAspect"}
			}
		},
	},
})


------ Inserting new traits to Loot Tables
--Zeus
table.insert( LootData.ZeusUpgrade.WeaponUpgrades, "NemesisZeusCastBoon" )
table.insert( LootData.ZeusUpgrade.PriorityUpgrades, 3, "NemesisZeusCastBoon" )
--Hera
table.insert( LootData.HeraUpgrade.WeaponUpgrades, "NemesisHeraCastBoon" )
table.insert( LootData.HeraUpgrade.PriorityUpgrades, 3, "NemesisHeraCastBoon" )

table.insert( LootData.HeraUpgrade.Traits, "NemesisSpawnCastDamageBoon" )
--Poseidon
table.insert( LootData.PoseidonUpgrade.WeaponUpgrades, "NemesisPoseidonCastBoon" )
table.insert( LootData.PoseidonUpgrade.PriorityUpgrades, 3, "NemesisPoseidonCastBoon" )
--Demeter
table.insert( LootData.DemeterUpgrade.WeaponUpgrades, "NemesisDemeterCastBoon" )
table.insert( LootData.DemeterUpgrade.PriorityUpgrades, 3, "NemesisDemeterCastBoon" )
--Apollo
table.insert( LootData.ApolloUpgrade.WeaponUpgrades, "NemesisApolloCastBoon" )
table.insert( LootData.ApolloUpgrade.PriorityUpgrades, 3, "NemesisApolloCastBoon" )
--Aphrodite
table.insert( LootData.AphroditeUpgrade.WeaponUpgrades, "NemesisAphroditeCastBoon" )
table.insert( LootData.AphroditeUpgrade.PriorityUpgrades, 3, "NemesisAphroditeCastBoon" )
--Hephaestus
table.insert( LootData.HephaestusUpgrade.WeaponUpgrades, "NemesisHephaestusCastBoon" )
table.insert( LootData.HephaestusUpgrade.PriorityUpgrades, 3, "NemesisHephaestusCastBoon" )
--Hestia
table.insert( LootData.HestiaUpgrade.WeaponUpgrades, "NemesisHestiaCastBoon" )
table.insert( LootData.HestiaUpgrade.PriorityUpgrades, 3, "NemesisHestiaCastBoon" )
--Ares
table.insert( LootData.AresUpgrade.WeaponUpgrades, "NemesisAresCastBoon" )
table.insert( LootData.AresUpgrade.PriorityUpgrades, 3, "NemesisAresCastBoon" )
--Artemis
table.insert( EnemyData.NPC_Artemis_Field_01.Traits, "NemesisOmegaCastVolleyBoon" )