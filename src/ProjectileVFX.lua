local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Enemy_Clockwork_VFX.sjson')
sjson.hook(file, function(data)
    
    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRingEdgeFlameParticleArtemis",
        InheritFrom = "ChronosRadialInRingEdgeFlameParticle",
        ColorFromOwner = "Ignore",
        AddColor = true,
		Red = Color.ArtemisVoice[1],
		Green = Color.ArtemisVoice[2],
		Blue = Color.ArtemisVoice[3],
	})

    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRingEdgeFlameArtemisA",
        InheritFrom = "ChronosRadialInRingEdgeFlameA",
		VisualFx = "ChronosRadialInRingEdgeFlameParticleArtemis",
        ColorFromOwner = "Ignore",
        AddColor = true,
		Red = Color.ArtemisVoice[1],
		Green = Color.ArtemisVoice[2],
		Blue = Color.ArtemisVoice[3],
	})

    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRingEdgeFlameArtemisB",
        InheritFrom = "ChronosRadialInRingEdgeFlameB",
		VisualFx = "ChronosRadialInRingEdgeFlameParticleArtemis",
        ColorFromOwner = "Ignore",
		AddColor = true,
		Red = Color.ArtemisVoice[1],
		Green = Color.ArtemisVoice[2],
		Blue = Color.ArtemisVoice[3],
	})

    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRingEdgeFlameArtemisC",
        InheritFrom = "ChronosRadialInRingEdgeFlameC",
		VisualFx = "ChronosRadialInRingEdgeFlameParticleArtemis",
        ColorFromOwner = "Ignore",
		AddColor = true,
		Red = Color.ArtemisVoice[1],
		Green = Color.ArtemisVoice[2],
		Blue = Color.ArtemisVoice[3],
	})

    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRingEdgeFlamesArtemis",
		Random =
		{
			{ Name = "ChronosRadialInRingEdgeFlameArtemisA" },
			{ Name = "ChronosRadialInRingEdgeFlameArtemisB" },
			{ Name = "ChronosRadialInRingEdgeFlameArtemisC" },
        }
	})

    table.insert(data.Animations,
    {
		Name = "ChronosRadialInRing_DarkArtemis",
        InheritFrom = "ChronosRadialInRing_Dark",
		VisualFx = "ChronosRadialInRingEdgeFlamesArtemis",
	})

return data
end)