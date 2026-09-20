--Melinoe effects
local file = rom.path.combine(rom.paths.Content, 'Game/Animations/Melinoe_1Base_VFX.sjson')
sjson.hook(file, function(data)
	table.insert(data.Animations,
		{
		Name = "ChronosBlinkStreak",
		InheritFrom = "BlinkStreak",
		AddColor = true,
		ColorFromOwner = "Ignore",
		StartRed = 1,
		StartGreen = 1,
		StartBlue = 0.8,
		EndRed = 0.6,
		EndGreen = 0.6,
		EndBlue = 0.0 ,
		ClearCreateAnimations = true,
	})

    table.insert(data.Animations,
    {
        Name = "ChronosBlinkTrailFxOutGroundLighting",
        InheritFrom = "BlinkTrailFxOutGroundLighting",
        Red = 0.6,
		Green = 0.6,
		Blue = 0,
    })

    table.insert(data.Animations,
    {
        Name = "ChronosBlinkTrailFxOut",
        InheritFrom = "BlinkTrailFxOut",
        AddColor = true,
        ColorFromOwner = "Ignore",
        StartRed = 1,
        StartGreen = 1,
        StartBlue = 0.8,
        EndRed = 0.6,
        EndGreen = 0.6,
        EndBlue = 0.0,
        ClearCreateAnimations = true,
        CreateAnimations =
        {
            { Name = "ChronosBlinkTrailFxOutGroundLighting", },
        },
	})

    table.insert(data.Animations,
    {
        Name = "ChronosBlinkTrailFxLoop",
        InheritFrom = "BlinkTrailFxLoop",
        AddColor = true,
        Red = 0.6,
		Green = 0.6,
		Blue = 0,
        ChainTo = "ChronosBlinkTrailFxOut",
    })

    table.insert(data.Animations,
    {
        Name = "ChronosBlinkTrailFxIn",
        InheritFrom = "BlinkTrailFxIn",
        ChainTo = "ChronosBlinkTrailFxLoop",
        StartRed = 1,
        StartGreen = 1,
        StartBlue = 0.8,
        EndRed = 0.6,
        EndGreen = 0.6,
        EndBlue = 0.0,
    })
    --Chronos Special
    table.insert(data.Animations,
    {
		Name = "Player_Chronos_GrindFire1",
		InheritFrom = "EnemyChronosBaseAnimation",
		GrannyAnimation = "Chronos_Base_ScytheGrindLoop_C_00",
		OwnerNoInvulnerableCoverage = false,
        ChainTo = "Enemy_Chronos_GrindPostFire",
		Loop = false,
		CreateAnimation = "ChronosScytheSpin",
		Sound = "/SFX/Enemy Sounds/Chronos/ChronosSuctionStartAndLoop",
		StopSoundOnFinishFade = 0.2,
	})
   --Chronos Dash
    table.insert(data.Animations,
	{
		Name = "Player_Chronos_DashFire",
		InheritFrom = "EnemyChronosBaseAnimation",
		GrannyAnimation = "Chronos_Base_DashFire_C_00",
		ChainTo = "Player_Chronos_DashPostFire",
		OwnerHasNoUnitCollision = true,
	})
    table.insert(data.Animations,
	{
		Name = "Player_Chronos_DashPostFire",
		InheritFrom = "EnemyChronosBaseAnimation",
		GrannyAnimation = "Chronos_Base_DashReturnToIdle_C_00",
		ChainTo = "NPC_Chronos_Enlightened_Hover",
		HoldLastFrame = false,
	})

return data
end)