# Changes the state of a gobblerift to hungry

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "hungry"
data modify entity @s height set value 2.0f
tag @s add tcc.gobblerift.hungry
tag @s add tcc.gobblerift.can_reproduce
execute on vehicle run function tcc:block/gobblerift/set_state/add_seedling_to_array