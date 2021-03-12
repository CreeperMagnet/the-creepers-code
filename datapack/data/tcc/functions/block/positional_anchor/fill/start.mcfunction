############################################################
# Description: Begins the positional anchor raycasting
# Creator: Nexus
############################################################

scoreboard players set @s tcc.dummy 0
execute anchored eyes run function tcc:block/positional_anchor/fill/raycast
execute if entity @s[gamemode=!creative] run function tcc:item/item_modification/remove1_mainhand
advancement revoke @s only tcc:technical/block/fill_positional_anchor
