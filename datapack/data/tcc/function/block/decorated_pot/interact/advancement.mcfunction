# Commands to run on decorated pot click

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:block/decorated_pot/interact/raycast
advancement revoke @s only tcc:technical/any_block_use/click_custom_decorated_pot