local file = rom.path.combine(rom.paths.Content, 'Game/Animations/GUI_HUD_VFX.sjson')
sjson.hook(file, function(data)
    
    table.insert(data.Animations,
    {
		Name = "ChronosManaBarFill",
		InheritFrom = "HPBarFill",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaBarFill\\ChronosManaBarFill",
	})

    table.insert(data.Animations,
    {
		Name = "ChronosManaBarReserveFill",
		InheritFrom = "HPBarFill",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaBarReserveFill\\ChronosManaBarReserveFill",
	})

return data
end)