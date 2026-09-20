---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- this file will be reloaded if it changes during gameplay,
-- 	so only assign to values or define things here.


-------------------------------------------------------------------
-- This function is part of the mod creation guide from the wiki --
-------------------------------------------------------------------
function mod.LoadSkellyPackage()
	local packageName = _PLUGIN.guid .. "Portraits"
	print("AuthorName-ModName - Loading package: " .. packageName)
	LoadPackages({ Name = packageName })
end
