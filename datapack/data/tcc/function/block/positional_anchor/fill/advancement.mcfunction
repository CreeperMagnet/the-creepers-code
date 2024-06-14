# Begins the positional anchor raycasting

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run attribute @s minecraft:player.block_interaction_range get 100
execute anchored eyes run function tcc:block/positional_anchor/fill/raycast
item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count
advancement revoke @s only tcc:technical/any_block_use/fill_positional_anchor
