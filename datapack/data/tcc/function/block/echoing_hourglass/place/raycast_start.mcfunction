# Starts the placement raycast using player's reach

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:block/echoing_hourglass/place/raycast