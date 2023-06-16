############################################################
# Starts the raycast
############################################################

data remove storage tcc:storage root.temp
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.instamine set value 1b
execute if entity @s[predicate=tcc:entity/holding/axe] run data modify storage tcc:storage root.temp.instamine set value 1b

execute as @e[type=interaction,tag=tcc.teapot,distance=..7,nbt={attack:{}}] at @s run function tcc:block/teapot/attack/as_interaction

advancement revoke @s only tcc:technical/player_hurt_entity/teapot