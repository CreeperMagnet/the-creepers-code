# Commands to run when you hurt a gobblerift

data remove storage tcc:temp root
execute if items entity @s weapon.mainhand #tcc:gobblerift_instamine run data modify storage tcc:temp root.instamine set value 1b
execute if entity @s[gamemode=creative] run data modify storage tcc:temp root.instamine set value 1b
execute as @n[type=minecraft:interaction,tag=tcc.gobblerift,nbt={attack:{}}] at @s run function tcc:block/gobblerift/attack/as_interaction
advancement revoke @s only tcc:technical/player_hurt_entity/gobblerift