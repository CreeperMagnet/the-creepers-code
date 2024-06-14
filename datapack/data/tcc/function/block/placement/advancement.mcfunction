# Scans for placed custom blocks

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 1
scoreboard players add @s tcc.dummy 2
execute anchored eyes run function tcc:block/placement/raycast
execute as @e[type=minecraft:item_display,tag=tcc.newly_placed_update_light] at @s run function tcc:block/update_light/on_place
advancement revoke @s only tcc:technical/placed_block/custom_block