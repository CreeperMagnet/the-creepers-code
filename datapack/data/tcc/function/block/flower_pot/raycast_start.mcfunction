# Starts the placement raycast using player's reach

tag @s add tcc.flower_pot_raycaster
scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:block/flower_pot/raycast
tag @s remove tcc.flower_pot_raycaster