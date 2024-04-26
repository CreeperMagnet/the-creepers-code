# Starts the raycast for planting a potted plant

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:block/potted_plant/place/raycast
advancement revoke @s only tcc:technical/default_block_use/potted_plant
