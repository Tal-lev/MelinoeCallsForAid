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

	table.insert(data.Animations,
	{
		Name = "ChronosManaChargeIndicatorIn",
		FilePath = "GUI\\HUD\\ManaChargeIndicatorIn\\ManaChargeIndicatorIn",
		NumFrames = 6,
		Material = "Unlit",
		ChainTo = "ChronosManaChargeIndicatorFill",
	})

	table.insert(data.Animations,
	{
		Name = "ChronosManaChargeIndicatorFill",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaChargeIndicatorFill\\ChronosManaChargeIndicatorFill",
		NumFrames = 100,
		PlaySpeed = 100,
		EndFrame = 100,
		Material = "Unlit",
		HoldLastFrame = true,
	})

	table.insert(data.Animations,
	{
		Name = "ChronosManaChargeIndicatorHoldLoop",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaChargeIndicatorHoldLoop\\ChronosManaChargeIndicatorHoldLoop",
		PlaySpeed = 30,
		NumFrames = 30,
		Material = "Unlit",
		Loop = true,
	})

	table.insert(data.Animations,
	{
		Name = "ChronosManaChargeIndicatorDissipate",	
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaChargeIndicatorDissipate\\ChronosManaChargeIndicatorDissipate",
		NumFrames = 20,
		Material = "Unlit",
		Sound = "/Leftovers/SFX/AuraOff",
	})

	table.insert(data.Animations,
	{
		Name = "ChronosManaChargeIndicatorCancel",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosManaChargeIndicatorCancel\\ChronosManaChargeIndicatorCancel",
		NumFrames = 10,
		Material = "Unlit",
		Sound = "/Leftovers/SFX/AuraOff",
	})

	table.insert(data.Animations,
	{
		Name = "ChronosHPManaBacking",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\ChronosHPManaBacking",		
		Material = "Unlit",
	})

	table.insert(data.Animations,
	{
		Name = "ExtraLifeChronos",
		FilePath = "JarlUlsfark-MelinoeCallsForAid\\GUI\\HUD\\HealthBar_1upChronos",
		Material = "Unlit",
	})

return data
end)