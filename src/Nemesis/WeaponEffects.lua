local shieldEffect = {
    Trigger = "Fire",
    Name = "ShieldSelfInvulnerableRush2",
    Type = "INVULNERABLE",
    DurationFrames = 20,
    Modifier = 1.0,
    Active = false,
    AngleCoverage = 360,
    CanAffectInvulnerable = true,
    Cancelable = true,
}

local file = rom.path.combine(rom.paths.Content, 'Game/Weapons/PlayerWeapons.sjson')
	sjson.hook(file, function(data)
    local done = 0
	for key, weapon in pairs(data.Weapons) do
        if weapon.Name == 'WeaponCast' then
            table.insert(data.Weapons[key].Effects,shieldEffect)
            break
        end
    end

return data
end)
