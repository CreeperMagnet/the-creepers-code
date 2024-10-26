# Sets a gobblerift into seedling state 3

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/gobblerift/stage_3"
data modify entity @s height set value 0.9375f
tag @s add tcc.gobblerift.bonemealable
tag @s add tcc.gobblerift.seedling_3