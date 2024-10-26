# Starts the snail raycast by getting your reach

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:entity/snail/unbucket/raycast