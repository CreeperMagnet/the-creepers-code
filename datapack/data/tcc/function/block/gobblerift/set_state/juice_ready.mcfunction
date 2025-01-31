# Changes the state of a gobblerift to be ready for juice

execute if entity @s[tag=tcc.gobblerift.can_reproduce] run loot spawn ~ ~1.2 ~ loot tcc:items/gobblerift_seeds
function tcc:block/gobblerift/set_state/reset_tags
execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".strings[0] set value "riftjuice_ready"
tag @s add tcc.gobblerift.juice_ready