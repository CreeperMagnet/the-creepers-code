# Starts a wrench raycast by getting attributes and such

tag @s add tcc.wrench_raycaster
scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:item/wrench/raycast
tag @s remove tcc.wrench_raycaster