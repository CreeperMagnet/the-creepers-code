# Starts a raycast using the player's reach

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:block/teapot/raycast