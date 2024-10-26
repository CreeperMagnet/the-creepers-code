# Changes the state of a gobblerift to hungry

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/gobblerift/stage_6_empty"
data modify entity @s height set value 2.0f
tag @s add tcc.gobblerift.hungry