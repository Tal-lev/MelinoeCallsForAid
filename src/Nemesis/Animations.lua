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

