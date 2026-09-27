local manaAnimationSwaps = {
  ManaBarFill = "ChronosManaBarFill",
  ManaBarReserveFill = "ChronosManaBarReserveFill"
}

local function setAnimationFrameTarget_Wrap(base, args)
    args = args or {}
    --if game.HeroHasTrait("ChronosAspect") then
    if ScreenData and ScreenData.HUD and ScreenData.HUD.ComponentData.ManaMeterFill.Animation == "ChronosManaBarFill" then
        args.Name = manaAnimationSwaps[args.Name] or args.Name
    end
    return base(args)
end

modutil.mod.Path.Context.Env("ShowManaMeter", function (  )
    modutil.mod.Path.Wrap("SetAnimationFrameTarget", function (base, args)
        return setAnimationFrameTarget_Wrap(base, args)
    end)
end)

modutil.mod.Path.Context.Env("UpdateManaMeterUIReal", function (  )
    modutil.mod.Path.Wrap("SetAnimationFrameTarget", function (base, args)
        return setAnimationFrameTarget_Wrap(base, args)
    end)
end)

modutil.mod.Path.Context.Env("ShowHealthUI", function (  )
    modutil.mod.Path.Wrap("SetAnimationFrameTarget", function (base, args)
        return setAnimationFrameTarget_Wrap(base, args)
    end)
end)