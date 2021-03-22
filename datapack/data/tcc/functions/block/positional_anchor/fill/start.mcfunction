############################################################
# Description: Begins the positional anchor raycasting
# Creator: Nexus
############################################################

scoreboard players set @s tcc.dummy 0
execute anchored eyes run function tcc:block/positional_anchor/fill/raycast
execute if entity @s[gamemode=!creative] run item entity @s weapon.mainhand modify tcc:reduce_count
advancement revoke @s only tcc:technical/block/fill_positional_anchor
