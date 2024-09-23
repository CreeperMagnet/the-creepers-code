# Functions to run when a player dies

execute store result score #temp tcc.dummy run gamerule keepInventory
execute if score #temp tcc.dummy matches 1 run return run advancement revoke @s only tcc:technical/entity_hurt_player/player_dies

execute as @e[type=minecraft:item,distance=..10,nbt={Age:0s}] run function tcc:entity/player/die/tag_item
advancement revoke @s only tcc:technical/entity_hurt_player/player_dies