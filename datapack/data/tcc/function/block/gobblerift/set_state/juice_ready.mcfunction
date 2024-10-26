# Changes the state of a gobblerift to be ready for juice

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/gobblerift/stage_6_full"
tag @s add tcc.gobblerift.juice_ready