function mod.ChronosSpellSummon( weaponData, traitArgs, triggerArgs )
	local wasFirst = true
	if not ShouldFireFirstTimeOlympian() then
		wasFirst = false
	else
		if HeroHasTrait("SummonHeraTalent") then	
			thread( DoFullSuperPresentation, "Hera" )
		end
	end
	IncrementTableValue( SessionMapState, "SpellFired" )
	local enemyName = "TimeElemental2"
	local enemyData = EnemyData[enemyName]
	local hasEnemy = false

	if triggerArgs.Charge >= 1 and weaponData.FullChargeOverride then
		enemyName = weaponData.FullChargeOverride
	end

	local summonArgs = { MaxHealthMultiplier = 1, SpeedMultiplier = 1, ScaleMultiplier = 1, DamageMultiplier = 1}
	if weaponData.SummonMultipliers then
		summonArgs = {
			MaxHealthMultiplier = weaponData.SummonMultipliers.MaxHealthMultiplier or 1,
			SpeedMultiplier = weaponData.SummonMultipliers.SpeedMultiplier or 1,
			ScaleMultiplier = weaponData.SummonMultipliers.ScaleMultiplier or 1,
			DamageMultiplier = weaponData.SummonMultipliers.DamageMultiplier or 1,
		}
	end
	local allyModifiers = GetHeroTraitValues("AllyDataModifiers")
	for i, modifierData in pairs( allyModifiers ) do
		if modifierData.FirstOnly == nil or ( modifierData.FirstOnly and wasFirst ) then
			if modifierData.MaxHealthMultiplier then
				summonArgs.MaxHealthMultiplier = summonArgs.MaxHealthMultiplier * modifierData.MaxHealthMultiplier
			end
			if modifierData.SpeedMultiplier then
				summonArgs.SpeedMultiplier = summonArgs.SpeedMultiplier + ( modifierData.SpeedMultiplier - 1 )
			end
			if modifierData.ScaleMultiplier then
				summonArgs.ScaleMultiplier = summonArgs.ScaleMultiplier + ( modifierData.ScaleMultiplier - 1 )
			end
		end
	
	end
	local offset = CalcOffset(math.rad(GetAngle({Id = CurrentRun.Hero.ObjectId})), 100 )
	local invaderSpawnPoint = SpawnObstacle({ Name = "InvisibleTarget", DestinationId = CurrentRun.Hero.ObjectId, OffsetX = offset.X, OffsetY = offset.Y, ForceToValidLocation = true})
	

	summonArgs.SpawnPointId = invaderSpawnPoint
	summonArgs.TryUseRequiredSpawnPoint = true
	local newEnemy = CreateAlliedEnemy( enemyName, summonArgs)
	for i, modifierData in pairs( allyModifiers ) do
		if modifierData.AddOutgoingDamageModifiers then
			for s, damageModifierData in pairs(modifierData.AddOutgoingDamageModifiers) do
				local validSummon = damageModifierData.ValidSummons == nil or Contains(damageModifierData.ValidSummons, newEnemy.Name )
				if validSummon then
					AddOutgoingDamageModifier( newEnemy, damageModifierData)
				end
			end
		end
		if modifierData.OutgoingCritModifiers then
			for s, damageModifierData in ipairs( modifierData.OutgoingCritModifiers ) do
				local validSummon = damageModifierData.ValidSummons == nil or Contains(damageModifierData.ValidSummons, newEnemy.Name )
				local validFirst = modifierData.FirstOnly == nil or ( modifierData.FirstOnly and wasFirst )
				if validSummon and validFirst then
					local modifierData = ShallowCopyTable( damageModifierData )
					modifierData.Chance = modifierData.Chance * GetTotalHeroTraitValue( "LuckMultiplier", { IsMultiplier = true })
					AddOutgoingCritModifier( newEnemy, modifierData )
				end
			end
		end
		if modifierData.CreateAnimation then
			CreateAnimation({ Name = modifierData.CreateAnimation, DestinationId = newEnemy.ObjectId })
			newEnemy.CreatedAnimations = newEnemy.CreatedAnimations or {}
			table.insert( newEnemy.CreatedAnimations, modifierData.CreateAnimation )
		end
	end

	for i, data in pairs( GetHeroTraitValues("AddSummonWeaponsToTraits") ) do
		if CurrentRun.Hero.SlottedTraits[data.Slot] then
			local trait = GetHeroTrait(CurrentRun.Hero.SlottedTraits[data.Slot])
			if trait.AddOutgoingDamageModifiers then
				local damageData = DeepCopyTable(trait.AddOutgoingDamageModifiers)
				damageData.ValidWeapons = nil
				damageData.ValidWeaponsLookup = nil
				AddOutgoingDamageModifier( newEnemy, damageData )
			end
			if trait.Name == "ApolloSpecialBoon" then
				newEnemy.ProjectileBlastRadiusMultiplier = 1.4
				newEnemy.ProjectileScaleMultiplier = 1.4
			end
		end
	end

	if CurrentRun.CurrentRoom.Encounter ~= nil and CurrentRun.CurrentRoom.Encounter.ActiveEnemyCap ~= nil then
		local activeCapWeight = newEnemy.ActiveCapWeight or 1
		CurrentRun.CurrentRoom.Encounter.ActiveEnemyCap = math.min(ConstantsData.MaxActiveEnemyCount, CurrentRun.CurrentRoom.Encounter.ActiveEnemyCap + activeCapWeight)
	end

	MapState.SpellSummons = MapState.SpellSummons or {}
	local condemned = {}
	for _, enemy in pairs( MapState.SpellSummons ) do
		if not enemy or enemy.IsDead or not ActiveEnemies[ enemy.ObjectId ] then
			table.insert(condemned, enemy)
		end
	end
	for _, enemy in pairs( condemned ) do
		RemoveValue(MapState.SpellSummons, enemy )
	end
	MapState.SpellSummons = CollapseTable( MapState.SpellSummons )
	table.insert( MapState.SpellSummons, newEnemy )
	GameState.SpellSummons[newEnemy.Name] = (GameState.SpellSummons[newEnemy.Name] or 0) + 1
	CheckAchievement( newEnemy, { Name = "AchSummonSiren" } )

	if TableLength( MapState.SpellSummons ) > weaponData.MaxSummons then
		local oldest = MapState.SpellSummons[1]
		for i, data in pairs( GetHeroTraitValues("OnSummonDeathFunction")) do
			CallFunctionName( data.Name, oldest, data.Args )
		end
		Kill ( oldest )
		RemoveValueAndCollapse(MapState.SpellSummons, enemy )
	end
	if weaponData.ManaReservationCost then
		ReserveMana(weaponData.ManaReservationCost, weaponData.Name )
	end
	DestroyOnDelay({ invaderSpawnPoint }, 0.1)

	local outlineData = ShallowCopyTable( SpellDisplayData.SummonOutline )
	outlineData.Id = newEnemy.ObjectId
	if wasFirst and HeroHasTrait("SummonHeraTalent") then
		local heraTrait = GetHeroTrait("SummonHeraTalent")
		if heraTrait.AllyDataModifiers.OutlineColor then
			outlineData.R = heraTrait.AllyDataModifiers.OutlineColor[1]
			outlineData.G = heraTrait.AllyDataModifiers.OutlineColor[2]
			outlineData.B = heraTrait.AllyDataModifiers.OutlineColor[3]
		end
	end
	AddOutline( outlineData )

	if not HeroHasTrait("SummonPermanenceTalent") then
		thread(EndSpellSummon, newEnemy, weaponData)
	end
end

OverwriteTableKeys( TraitData, {

	SpellChronosSummonTrait = 
	{
		InheritFrom = { "SpellTrait" },
		Icon = "Boon_Selene_31",
		PreEquipWeapons = { "WeaponChronosSummon" },
		FountainRefreshUses = true,
		RemainingUses = 2,
		MaxUses = 2,
		CheckChargeFunctionName = "SpellPotionCheckCharges",
		StatLines =
		{
			"ManaSpendCostStatDisplay1",
		},
		ExtractValues = 
		{
			{
				External = true,
				BaseType = "WeaponData",
				BaseName = "WeaponSpellPotion",
				BaseProperty = "HealingAmount",
				ExtractAs = "HealingAmount",
				Format = "FlatHeal",
				SkipAutoExtract = true,
			},
			{
				Format = "ManaSpendCost",
				WeaponName = "WeaponChronosSummon",
				ExtractAs = "ManaCost",
			},
			{
				Key = "MaxUses",
				ExtractAs = "Uses",
				SkipAutoExtract = true,
			},
		},
		OnWeaponFiredFunctions = 
		{
			ValidWeapons = {"WeaponChronosSummon"},
			FunctionName = _PLUGIN.guid .. "." .. "ChronosSpellSummon",
			FunctionArgs = 
			{
			}
		},
		UpgradePickedVoiceLines =
		{
			{
				RandomRemaining = true,
				PreLineWait = 0.4,
				Queue = "Always",
				SuccessiveChanceToPlayAll = 0.66,
				TriggerCooldowns = { "MelinoeAnyQuipSpeech", "SeleneAnyQuipSpeech" },

				{ Cue = "/VO/Selene_0197", Text = "{#Emph}Moon Water.", PlayFirst = true },
				{ Cue = "/VO/Selene_0198", Text = "{#Emph}Moon Water." },
				{ Cue = "/VO/Selene_0198_ALT", Text = "{#Emph}Moon Water." },
				{ Cue = "/VO/Selene_0199", Text = "Drink deep and persevere.", BreakIfPlayed = true },
			},
			{ GlobalVoiceLines = "PickedMoonSpellVoiceLines" },
		},
	},
})

