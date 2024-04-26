# Sets a gobblerift into seedling state 5

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data" set value 330030
data modify entity @s height set value 1.5625f
tag @s add tcc.gobblerift.bonemealable
tag @s add tcc.gobblerift.seedling_5