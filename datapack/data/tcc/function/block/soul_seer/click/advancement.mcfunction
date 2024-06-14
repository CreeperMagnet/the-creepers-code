# Commands to run on soul seer click

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:block/soul_seer/click/raycast
advancement revoke @s only tcc:technical/default_block_use/click_soul_seer