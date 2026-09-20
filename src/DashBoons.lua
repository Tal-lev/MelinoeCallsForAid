--Zeus Chronos Rush
function mod.ChronosZeusSprintZap( weaponData, functionArgs, triggerArgs )
	local manaCost = 0
	if functionArgs.CostPerStrike and functionArgs.CostPerStrike > 0 then
		manaCost = GetManaCost( weaponData, true, { ManaCostOverride = functionArgs.CostPerStrike, TraitSource = true } )
	end
	if CheckCooldown( _PLUGIN.guid .."." .. "ChronosZeusSprintZap", functionArgs.Cooldown, true ) then
		if CurrentRun.Hero.Mana >= manaCost or LastMomentManaRestoreEligible(manaCost) then
			CreateZeusBolt({
				SourceId = functionArgs.TargetId or CurrentRun.Hero.ObjectId,
				Range = functionArgs.Range, 
				SeekTarget = true, 
				ProjectileName = functionArgs.ProjectileName, 
				DamageMultiplier = functionArgs.DamageMultiplier,
				RunFunctionNameOnTarget = functionArgs.RunFunctionNameOnTarget,
				RunFunctionArgsOnTarget = functionArgs,
				InitialDelay = 0, 
				Delay = 0.1, 
				Count = 1
			}) 
			wait(0.1)
			CreateZeusBolt({
				SourceId = functionArgs.TargetId or CurrentRun.Hero.ObjectId,
				Range = functionArgs.Range, 
				SeekTarget = true, 
				ProjectileName = functionArgs.ProjectileName, 
				DamageMultiplier = functionArgs.DamageMultiplier,
				RunFunctionNameOnTarget = functionArgs.RunFunctionNameOnTarget,
				RunFunctionArgsOnTarget = functionArgs,
				InitialDelay = 0, 
				Delay = 0.1, 
				Count = 1
			}) 
		end
	end
end

--For Chronos Hera Sprint Boon
function mod.ChronosHeraRushProjectileSpawn(weaponData, functionArgs, triggerArgs )
  CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier})
  local doubleChance = GetTotalHeroTraitValue("DoubleOlympianProjectileChance") * GetTotalHeroTraitValue( "LuckMultiplier", { IsMultiplier = true })
  if RandomChance(doubleChance) then
    wait( GetTotalHeroTraitValue("DoubleOlympianProjectileInterval" ))
    local angle = GetAngle({ Id = CurrentRun.Hero.ObjectId })
    CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, Id = CurrentRun.Hero.ObjectId, Angle = angle , DamageMultiplier = functionArgs.DamageMultiplier, FireFromTarget = true, ProjectileCap = 2 })
  end
end


function mod.ChronosPoseidonRush(weaponData, functionArgs, triggerArgs ) 
  wait(0.6)
  CreateProjectileFromUnit({ Name = functionArgs.ProjectileName, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FireFromTarget = true, ProjectileCap = 1 })
end

function mod.ChronosHestiaSprintFlames(weaponData, functionArgs, triggerArgs )
	SessionMapState.LastHestiaProjectileId = CreateProjectileFromUnit({ Name =  functionArgs.ProjectileName, DestinationId = CurrentRun.Hero.ObjectId, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FizzleOldestProjectileCount = functionArgs.MaxSpawns })
  wait(0.05)
  SessionMapState.LastHestiaProjectileId = CreateProjectileFromUnit({ Name =  functionArgs.ProjectileName, DestinationId = CurrentRun.Hero.ObjectId, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FizzleOldestProjectileCount = functionArgs.MaxSpawns })
  wait(0.05)
  SessionMapState.LastHestiaProjectileId = CreateProjectileFromUnit({ Name =  functionArgs.ProjectileName, DestinationId = CurrentRun.Hero.ObjectId, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FizzleOldestProjectileCount = functionArgs.MaxSpawns })
  wait(0.05)
  SessionMapState.LastHestiaProjectileId = CreateProjectileFromUnit({ Name =  functionArgs.ProjectileName, DestinationId = CurrentRun.Hero.ObjectId, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FizzleOldestProjectileCount = functionArgs.MaxSpawns })
  wait(0.05)
  SessionMapState.LastHestiaProjectileId = CreateProjectileFromUnit({ Name =  functionArgs.ProjectileName, DestinationId = CurrentRun.Hero.ObjectId, Id = CurrentRun.Hero.ObjectId, DamageMultiplier = functionArgs.DamageMultiplier, FizzleOldestProjectileCount = functionArgs.MaxSpawns })
end

  
------ Adding GameStateRequirements for all
-- Zeus
TraitData.ZeusSprintBoon.GameStateRequirements = TraitData.ZeusSprintBoon.GameStateRequirements or {}
-- Hera
TraitData.HeraSprintBoon.GameStateRequirements = TraitData.HeraSprintBoon.GameStateRequirements or {}
-- Poseidon
TraitData.PoseidonSprintBoon.GameStateRequirements = TraitData.PoseidonSprintBoon.GameStateRequirements or {}
-- Demeter
TraitData.DemeterSprintBoon.GameStateRequirements = TraitData.DemeterSprintBoon.GameStateRequirements or {}
-- Apollo
TraitData.ApolloSprintBoon.GameStateRequirements = TraitData.ApolloSprintBoon.GameStateRequirements or {}
-- Aphrodite
TraitData.AphroditeSprintBoon.GameStateRequirements = TraitData.AphroditeSprintBoon.GameStateRequirements or {}
-- Hephaestus
TraitData.HephaestusSprintBoon.GameStateRequirements = TraitData.HephaestusSprintBoon.GameStateRequirements or {}
-- Hestia
TraitData.HestiaSprintBoon.GameStateRequirements = TraitData.HestiaSprintBoon.GameStateRequirements or {}
-- Ares
TraitData.AresSprintBoon.GameStateRequirements = TraitData.AresSprintBoon.GameStateRequirements or {}
-- Artemis
-- Dionaysus
-- Hades

------ Removing old Sprint from pool
-- Zeus
table.insert(TraitData.ZeusSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Hera
table.insert(TraitData.HeraSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Poseidon
table.insert(TraitData.PoseidonSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Demeter
table.insert(TraitData.DemeterSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Apollo
table.insert(TraitData.ApolloSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Aphrodite works fine
--table.insert(TraitData.AphroditeSprintBoon.GameStateRequirements, {
--  Path = {"CurrentRun", "Hero", "TraitDictionary"},
--  HasNone = {"ChronosAspect"}
--})
-- Hephaestus works fine

-- Hestia
table.insert(TraitData.HestiaSprintBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"ChronosAspect"}
})
-- Ares works fine

-- Artemis
-- Dionaysus
-- Hades

--Adding new Rush Boons

OverwriteTableKeys(TraitData, {
  --Zeus
   ChronosZeusSprintBoon = 
 {
		InheritFrom = { "ZeusSprintBoon" },
		OnWeaponFiredFunctions = 
		{
			ValidWeapons = {"WeaponBlink", "WeaponSprint"},
			FunctionName = _PLUGIN.guid .. "." .. "ChronosZeusSprintZap",
			FunctionArgs = 
			{
				ProjectileName = "ZeusSprintStrike",
				Cooldown = 0.35,
				RunFunctionNameOnTarget = "ZeusSprintSpend",
				Range = 655,
				DamageMultiplier =
				{
					BaseValue = 1,
					AbsoluteStackValues =
					{
						[1] = 0.25,
					},
				},
				ReportValues = 
				{ 
					ReportedMultiplier = "DamageMultiplier",
					ReportedCost = "CostPerStrike",
					ReportedFuse = "Cooldown",
				},
			},
		},
    GameStateRequirements = {
      {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAll = {"ChronosAspect"}
      }
    },
  },
  
  --Hera
  ChronosHeraSprintBoon = 
 {
		Icon = "Boon_Hera_28",
		InheritFrom = { "BaseTrait", "FireBoon" },
		Slot = "Rush",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.00,
			},
			Rare =
			{
				Multiplier = 1.25,
			},
			Epic =
			{
				Multiplier = 1.50,
			},
			Heroic =
			{
				Multiplier = 1.75,
			},
		},
		OnWeaponFiredFunctions =
		{
			ValidWeapons = {"WeaponBlink", },	
			FunctionName = _PLUGIN.guid .. "." .. "ChronosHeraRushProjectileSpawn",
			FunctionArgs = 
			{
				ProjectileName = "ProjectileHeraOmega",
				DamageMultiplier = 
				{
					BaseValue = 0.25,
					DecimalPlaces = 4, -- Needs additional precision due to the number being operated on
					AbsoluteStackValues = 
					{
						[1] = 0.0625,
					},
				},
				ReportValues = 
				{ 
					ReportedMultiplier = "DamageMultiplier" 
				},
			}
		},
		StatLines =
		{
			"HeraRiftDamageStatDisplay1",
		},
		ExtractValues = 
		{
			{
				Key = "ReportedMultiplier",
				ExtractAs = "Damage",
				Format = "MultiplyByBase",
				BaseType = "Projectile",
				BaseName = "ProjectileHeraOmega",
				BaseProperty = "Damage",
			},
		},
    GameStateRequirements = {
      {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAll = {"ChronosAspect"}
      }
    },
  },

  --Poseidon
  ChronosPoseidonSprintBoon = {
    Icon = "Boon_Poseidon_28",
		InheritFrom = { "BaseTrait", "WaterBoon" },
		Slot = "Rush",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 80/80,
			},
			Rare =
			{
				Multiplier = 100/80,
			},
			Epic =
			{
				Multiplier = 120/80,
			},
			Heroic =
			{
				Multiplier = 140/80,
			},
		},
    OnWeaponFiredFunctions =
		{
			ValidWeapons = {"WeaponBlink", },	
      FunctionName = _PLUGIN.guid .. "." .. "ChronosPoseidonRush",
			FunctionArgs = 
			{
				ProjectileName = "ChronosRushPoseidonBlast",
				DamageMultiplier = 
				{
					BaseValue = 1,
					DecimalPlaces = 4, -- Needs additional precision due to the number being operated on
					AbsoluteStackValues = 
					{
						[1] = 0.0625,
					},
				},
				ReportValues = 
				{ 
					ReportedMultiplier = "DamageMultiplier" 
				},
			},
    },
    GameStateRequirements = {
      {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAll = {"ChronosAspect"}
      }
    },
  },

  ChronosHestiaSprintBoon = 
	{
		Icon = "Boon_Hestia_28",
		InheritFrom = { "BaseTrait", "FireBoon" },
		Slot = "Rush",
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
		DamageClamps = 
		{
			ValidProjectiles = 
			{
				"ZombieHRFire",
				"GreekFire",
				"OilPuddleFire",
				"OilPuddleFire02",
				"OilPuddleFire03",
				"OilPuddleFire04",
				"InfestedCerberusExplosiveFireball",
				"CerberusMagmaPuddle",
				"PrometheusFireCircle",
				"PrometheusFireCircleSmall",
				"PrometheusFireCircleLarge",
				"LavaTileWeapon",
				"LavaTileTriangle01Weapon",
				"LavaTileTriangle02Weapon"
			},
			Value = 1,
			ReportValues = { ReportedDamage = "Value"},
		},
		StatLines =
		{
			"SprintDamageStatDisplay1",
		},
		 OnWeaponFiredFunctions =
		{
			ValidWeapons = {"WeaponBlink", },	
      FunctionName = _PLUGIN.guid .. "." .. "ChronosHestiaSprintFlames",
			FunctionArgs = 
			{
				ProjectileName = "HestiaSprintPuddle",
				MaxSpawns = 5,
				DamageMultiplier =
				{
					BaseValue = 1,
					AbsoluteStackValues =
					{
						[1] = 0.5,
						[2] = 0.3,
						[3] = 0.2,
					},
				},
			ReportValues = { ReportedMultiplier = "DamageMultiplier"},
			}
		},
		ExtractValues =
		{
			{
				Key = "ReportedDamage",
				ExtractAs = "DamageTaken",
				SkipAutoExtract = true,
			},
			{
				ExtractAs = "Fuse",
				SkipAutoExtract = true,
				External = true,
				BaseType = "ProjectileBase",
				BaseName = "HestiaSprintPuddle",
				BaseProperty = "Fuse",
				DecimalPlaces = 2,
			},
			{
				Key = "ReportedMultiplier",
				ExtractAs = "ReportedDamage",
				Format = "MultiplyByBase",
				BaseType = "Projectile",
				BaseName = "HestiaSprintPuddle",
				BaseProperty = "Damage",
			},
		},
    GameStateRequirements = {
      {
        Path = {"CurrentRun", "Hero", "TraitDictionary"},
        HasAll = {"ChronosAspect"}
      }
    },
	},

})

------ Inserting new traits to Loot Tables
--Zeus
table.insert( LootData.ZeusUpgrade.WeaponUpgrades, "ChronosZeusSprintBoon" )
table.insert( LootData.ZeusUpgrade.PriorityUpgrades, 4, "ChronosZeusSprintBoon" )
-- Hera
table.insert( LootData.HeraUpgrade.WeaponUpgrades, "ChronosHeraSprintBoon" )
table.insert( LootData.HeraUpgrade.PriorityUpgrades, 4, "ChronosHeraSprintBoon" )
--Poseidon
table.insert( LootData.PoseidonUpgrade.WeaponUpgrades, "ChronosPoseidonSprintBoon" )
table.insert( LootData.PoseidonUpgrade.PriorityUpgrades, 4, "ChronosPoseidonSprintBoon" )
--Hestia
table.insert( LootData.HestiaUpgrade.WeaponUpgrades, "ChronosHestiaSprintBoon" )
table.insert( LootData.HestiaUpgrade.PriorityUpgrades, 4, "ChronosHestiaSprintBoon" )


--Still Missing 
--Demeter
--Apollo
--Hestia
