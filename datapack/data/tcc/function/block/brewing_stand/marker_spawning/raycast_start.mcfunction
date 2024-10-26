# Starts a raycast

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:block/brewing_stand/marker_spawning/raycast
advancement revoke @s only tcc:technical/default_block_use/open_brewing_stand
