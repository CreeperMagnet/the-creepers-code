# Sets a gobblerift into seedling state 2

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "seedling_2"
data modify entity @s height set value 0.5f
tag @s add tcc.gobblerift.bonemealable
tag @s add tcc.gobblerift.seedling_2
tag @s add tcc.gobblerift.seedling