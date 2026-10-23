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

------ Adding GameStateRequirements for all
-- Zeus
TraitData.ZeusCastBoon.GameStateRequirements = TraitData.ZeusCastBoon.GameStateRequirements or {}
-- Hera
TraitData.HeraCastBoon.GameStateRequirements = TraitData.HeraCastBoon.GameStateRequirements or {}
-- Poseidon
TraitData.PoseidonCastBoon.GameStateRequirements = TraitData.PoseidonCastBoon.GameStateRequirements or {}
-- Demeter
TraitData.DemeterCastBoon.GameStateRequirements = TraitData.DemeterCastBoon.GameStateRequirements or {}
-- Apollo
TraitData.ApolloCastBoon.GameStateRequirements = TraitData.ApolloCastBoon.GameStateRequirements or {}
-- Aphrodite
TraitData.AphroditeCastBoon.GameStateRequirements = TraitData.AphroditeCastBoon.GameStateRequirements or {}
-- Hephaestus
TraitData.HephaestusCastBoon.GameStateRequirements = TraitData.HephaestusCastBoon.GameStateRequirements or {}
-- Hestia
TraitData.HestiaCastBoon.GameStateRequirements = TraitData.HestiaCastBoon.GameStateRequirements or {}
-- Ares
TraitData.AresCastBoon.GameStateRequirements = TraitData.AresCastBoon.GameStateRequirements or {}
------ Removing old Cast from pool
-- Zeus
table.insert(TraitData.ZeusCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Hera
table.insert(TraitData.HeraCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Poseidon
table.insert(TraitData.PoseidonCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Demeter
table.insert(TraitData.DemeterCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Apollo
table.insert(TraitData.ApolloCastBoon.GameStateRequirements, {
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
-- Ares works fine
table.insert(TraitData.AresCastBoon.GameStateRequirements, {
  Path = {"CurrentRun", "Hero", "TraitDictionary"},
  HasNone = {"NemesisAspect"}
})
-- Artemis
-- Dionaysus
-- Hades

--Adding new Cast Boons

OverwriteTableKeys(TraitData, {
  --Zeus
  NemesisZeusCastBoon = 
  {
    Icon = "Boon_Zeus_29",
    InheritFrom = { "BaseTrait", "AirBoon" },
    Slot = "Ranged",
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
					Graphic = "CastCircleInZeus",
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
  }
})


------ Inserting new traits to Loot Tables
--Zeus
table.insert( LootData.ZeusUpgrade.WeaponUpgrades, "NemesisZeusCastBoon" )
table.insert( LootData.ZeusUpgrade.PriorityUpgrades, 3, "NemesisZeusCastBoon" )