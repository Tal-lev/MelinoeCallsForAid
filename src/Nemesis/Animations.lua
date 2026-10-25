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
    

return data
end)
