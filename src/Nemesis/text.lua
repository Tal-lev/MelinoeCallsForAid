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

    --Cast Boons
    table.insert(data.Texts, sjson.to_object(
    {
      Id = "NemesisZeusCastBoon",
      InheritFrom = "BaseBoon",
      DisplayName = "Storm Parry",
      Description = "Your {$Keywords.CastSet} cause lightning bolts to strike the attacker and inflict {$Keywords.Echo}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisHeraCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Engagement Parry",
      Description = "Your {$Keywords.CastSet} immediately deal damage to the attacker and inflict {$Keywords.Link}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisDemeterCastBoon",
      InheritFrom = "BaseBoonMultiline",
      DisplayName = "Arctic Parry",
      Description = "Your {$Keywords.CastSet} drops an icy shard on the attacker and inflict {$Keywords.Root}.",
    },
    TextOrder)
	)

	table.insert(data.Texts, sjson.to_object(
	{
      Id = "NemesisShardDamageHitDisplay1",
      InheritFrom = "BaseStatLine",
      DisplayName = "{!Icons.Bullet}{#PropertyFormat}Shard Damage:",
      Description = "{#UpgradeFormat}{$TooltipData.StatDisplay1}",
    },
    TextOrder)
	)

	-- Nemesis Hammers

    table.insert(data.Texts, sjson.to_object(
	{
		Id = "NemesisLongerCastTrait",
		InheritFrom = "BaseBoonMultiline",
		DisplayName = "Heightened Reflexes",
		Description = "Your {$Keywords.Cast} Parry has double duration."
	},
	TextOrder)
	)

return data
end)