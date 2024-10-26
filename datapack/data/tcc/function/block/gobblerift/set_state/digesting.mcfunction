# Sets a gobblerift into digesting state

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/gobblerift/stage_6_digesting"
tag @s add tcc.gobblerift.digesting
