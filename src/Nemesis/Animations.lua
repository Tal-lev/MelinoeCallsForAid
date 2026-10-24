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

