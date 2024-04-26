# Sets a gobblerift into digesting state

function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data" set value 330034
tag @s add tcc.gobblerift.digesting
