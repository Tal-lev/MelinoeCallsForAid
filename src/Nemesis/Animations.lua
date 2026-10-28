--Melinoe effects
local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_1Base_VFX.sjson')
sjson.hook(file, function(data)

     --Nemesis
    table.insert(data.Animations,
	{
		Name = "Nemesis_Combat_Sprint_FireLoop",
		InheritFrom = "Nemesis_Combat_Run_FireLoop",
        GrannyAnimationSpeed = 1.5,
		Loop = true,
	})

    table.insert(data.Animations,
	{
		Name = "Nemesis_Cast_EntranceFast",
		InheritFrom = "Nemesis_Combat_Entrance",
        GrannyAnimationSpeed = 2,
		Frames ={},
	})
    

return data
end)

--Melinoe effects
local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Enemy_Erebus_VFX.sjson')
sjson.hook(file, function(data)

	table.insert(data.Animations,
	{
		Name = "FogEmitterSlamNovaNemesisOmega",
		InheritFrom = "FogEmitterSlamNova",
		Scale = 3,
	})
    

return data
end)

local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Demeter_VFX.sjson')
sjson.hook(file, function(data)

	table.insert(data.Animations,
	{
		Name = "NemesisDemeterIceRain",
		InheritFrom = "DemeterIceRain",
		RandomOffsetX = 0.0,
		RandomOffsetY = 0.0,
		RandomOffsetScaleRadius = 420,
	})
    

return data
end)

local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_Cast_VFX.sjson')
sjson.hook(file, function(data)

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleIn",
		InheritFrom = "CastCircleIn",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInZeus",
		InheritFrom = "CastCircleInZeus",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations =
		--{
		--	{ Name = "CastCircleZeusA" },
		--}
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInHera",
		InheritFrom = "CastCircleInHera",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations = {
		--	{ Name = "CastCircleHeraA" },
		--	{ Name = "CastCircleHeraB1" },
		--	{ Name = "CastCircleHeraB2" },

		--	{ Name = "CastCircleInHeraFlare" },
		--},
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInPoseidon",
		InheritFrom = "CastCircleInPoseidon",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations = {
		--	{ Name = "CastCirclePoseidonA" },
		--	{ Name = "CastCirclePoseidonFx" },
		--},
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInDemeter",
		InheritFrom = "CastCircleInDemeter",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations = {
		--	{ Name = "CastCircleDemeterA" },
		--	{ Name = "CastCircleDemeterA2" },
		--},
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInApollo",
		InheritFrom = "CastCircleInApollo",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations =
		--{
		--	{ Name = "CastCircleApolloRingB" },
		--	{ Name = "CastCircleApolloRingC" },
		--	{ Name = "CastCircleApolloRingC" },
		--},
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInAphrodite",
		InheritFrom = "CastCircleInAphrodite",
		ClearCreateAnimations = true,
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInHephaestus",
		InheritFrom = "CastCircleInHephaestus",
		ClearCreateAnimations = true,
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInHestia",
		InheritFrom = "CastCircleInHestia",
		ClearCreateAnimations = true,
	})

	table.insert(data.Animations,
	{
		Name = "NemesisCastCircleInAres",
		InheritFrom = "CastCircleInAres",
		--VisualFx = 'null',
		ClearCreateAnimations = true,
		--CreateAnimations =
		--{
		--	{ Name = "CastCircleAresA" },
		--	{ Name = "CastCircleAresB" },
		--	{ Name = "CastCircleInAresFlare" },
		--}
	})
    
	table.insert(data.Animations,
	{
      Name = "ArtemisCritSparkles",
      FilePath = "JarlUlsfark-MelinoeCallsForAid\\ArtemisDashTwinkle\\ArtemisDashTwinkle",
      GroupName = "FX_Standing_Add",
      Type = "Book",
      AngleFromOwner = "Ignore",
      AngleMax = 360.00,
      UseOwnAngle = false,
      ColorFromOwner = "Ignore",
      StartBlue = 1.0,
      Duration = 1.0,
      EndFrame = 19,
      Loop = true,
      NumFrames = 19,
      StartFrame = 1,
    })

	table.insert(data.Animations,
    {
      Name = "ArtemisCritSparkles-SwordPostParryCritical",
      FilePath = "Dev\\blank_invisible",
      Type = "Constant",
      VisualFx = "ArtemisCritSparkles-SwordPostParryCriticalFx",
      EndFrame = 1,
      NumFrames = 1,
      StartFrame = 1,
      VisualFxIntervalMax = 0.45,
      VisualFxIntervalMin = 0.3,
    })

	table.insert(data.Animations,
    {
      Name = "ArtemisCritSparkles-SwordPostParryCriticalFx",
      InheritFrom = "ArtemisCritSparkles",
      UseOwnAngle = true,
      AngleMin = 0,
      AngleMax = 90,
      Hue = 0.3,
      StartRed = 1,
      StartGreen = 1,
      StartBlue = 1,
      EndRed = 0,
      EndGreen = 0.9,
      EndBlue = 0.9,
      Duration = 0.5,
      ScaleMin = 0.5,
      ScaleMax = 1.2,
      Loop = false,
      DieWithOwner = true,
      AlphaMin = 0.5,
      AlphaMax = 1.0,
	  --LocationFromOwner = "Take",
	  --OffsetZ = 100,
      --CreateAnimation = { Name = "ArtemisCritSparkles-SwordPostParryCriticalFx2", OffsetZ = 160 },
	  CreateAnimation = { Name = "ArtemisCritSparkles-SwordPostParryCriticalFx2" },
    })

	table.insert(data.Animations,
    {
      Name = "ArtemisCritSparkles-SwordPostParryCriticalFx2",
      InheritFrom = "ArtemisCritSparkles-SwordPostParryCriticalFx",
      AngleMin = 90,
      AngleMax = 180,
      Hue = 0.7,
      StartRed = 1,
      StartGreen = 1,
      StartBlue = 1,
      EndRed = 0.9,
      EndGreen = 0.9,
      EndBlue = 0.9,
      AlphaMin = 0.5,
      AlphaMax = 1.0,
	  --LocationFromOwner = "Take",
	  --OffsetZ = 160,
      ClearCreateAnimations = true,
    })

return data
end)
