# Commands to run when the teapot is attacked

data remove storage tcc:temp root
execute if entity @s[gamemode=creative] run data modify storage tcc:temp root.instamine set value 1b
execute if items entity @s weapon.* #minecraft:axes run data modify storage tcc:temp root.instamine set value 1b

execute as @e[type=minecraft:interaction,tag=tcc.teapot,limit=1,sort=nearest,nbt={attack:{}}] at @s run function tcc:block/teapot/attack/as_interaction

advancement revoke @s only tcc:technical/player_hurt_entity/teapot