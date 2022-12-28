############################################################
# Spawning code for the wandering witch
############################################################

scoreboard players set #wandering_witch_attempts tcc.dummy -1
summon marker ~ ~ ~ {Tags:["tcc.wandering_witch_spawning"]}
execute as @e[type=marker,tag=tcc.wandering_witch_spawning,limit=1,sort=nearest] at @s run function tcc:entity/wandering_witch/spawning/spawn_witch