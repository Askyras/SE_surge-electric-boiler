
local boiler = util.table.deepcopy(data.raw["assembling-machine"]["se-electric-boiler"])
boiler.name = "se-surge-electric-boiler"
boiler.minable = {mining_time = 0.5, result = "se-surge-electric-boiler"}
boiler.fast_replaceable_group = "electric-boiler"
boiler.energy_source = {
    type = "electric",
    usage_priority = "tertiary"
}

boiler_recipe = {
	name = "se-surge-electric-boiler",
	type = "recipe",
	ingredients = {
	{name = "se-electric-boiler", amount = 1},
	{name = "power-switch", amount = 1}
	},
	result = "se-surge-electric-boiler",
	enabled = false,
}

local boiler_item = util.table.deepcopy(data.raw["item"]["se-electric-boiler"])
boiler_item.name = "se-surge-electric-boiler"
boiler_item.place_result = "se-surge-electric-boiler"

table.insert(data.raw["technology"]["se-electric-boiler"].effects, {type = "unlock-recipe", recipe = boiler_recipe.name,} )

data.raw["assembling-machine"]["se-electric-boiler"].fast_replaceable_group = "electric-boiler"

data:extend{
boiler,
boiler_item,
boiler_recipe
}