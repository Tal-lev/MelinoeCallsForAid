--Inserts text
local TextOrder = {
"Id",
"InheritFrom",
"DisplayName",
"Description",
"OverwriteLocalization",
}

local file = rom.path.combine(rom.paths.Content, 'Game/Text/en/TraitText.en.sjson')
sjson.hook(file, function(data)

    -- Nemesis Aspect
    table.insert(data.Texts, sjson.to_object(
    {
        Id = "NemesisAspect",
        InheritFrom = "BaseBoonMultiline",
        DisplayName = "Nemesis",
        Description = "Retribution Incarnate.",
    },
    TextOrder)
    )

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_Shop",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Nemesis, Retribution Incarnate:",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_Upgrade",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Nemesis {$TooltipData.AspectRarityText}",
		},
		TextOrder)
	)

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "NemesisAspect_FlavorText",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "Proud Daughter of Night and the final act of numerous Greek Tragedies.",
		},
		TextOrder)
	)
    

    table.insert(data.Texts, sjson.to_object(
		{
			Id = "ChronosAspectStatDisplay",
			InheritFrom = "BaseBoonMultiline",
			DisplayName = "",
			Description = ""

		},
		TextOrder)
	)

    --Dash Boons
    table.insert(data.Texts, sjson.to_object(
    {
      Id = "NemesisZeusCastBoon",
      InheritFrom = "BaseBoon",
      DisplayName = "Storm Parry",
      Description = "Your {$Keywords.CastSet} cause lightning bolts to strike the attacker and inflict {$Keywords.Echo}.",
    },
    TextOrder)
	)

return data
end)