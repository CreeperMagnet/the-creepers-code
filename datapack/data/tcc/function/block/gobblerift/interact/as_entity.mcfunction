# Commands to run as the gobblerift interacted with

execute if entity @s[tag=!tcc.gobblerift.hurt] run function tcc:block/gobblerift/interact/as_not_hurt_entity
execute on vehicle run data modify entity @s item.components."minecraft:custom_data".break_state set value 0
data remove entity @s interaction