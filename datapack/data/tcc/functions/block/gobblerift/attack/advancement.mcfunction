# Commands to run when you hurt a gobblerift

data remove storage tcc:storage root.temp
execute if entity @s[predicate=tcc:entity/holding/gobblerift_instamine] run data modify storage tcc:storage root.temp.instamine set value 1b
execute if entity @s[gamemode=creative] run data modify storage tcc:storage root.temp.instamine set value 1b
execute as @e[type=minecraft:interaction,tag=tcc.gobblerift,distance=..7,nbt={attack:{}}] at @s run function tcc:block/gobblerift/attack/as_interaction
advancement revoke @s only tcc:technical/player_hurt_entity/gobblerift