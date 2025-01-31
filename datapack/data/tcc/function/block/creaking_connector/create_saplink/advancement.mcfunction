# Commands for creating a saplink when clicking a creaking connector with a sapling

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:block_interaction_range get 100
execute anchored eyes run function tcc:block/creaking_connector/create_saplink/raycast
advancement revoke @s only tcc:technical/default_block_use/creaking_connector