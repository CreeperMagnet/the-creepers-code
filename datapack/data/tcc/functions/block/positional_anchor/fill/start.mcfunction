# Begins the positional anchor raycasting

execute anchored eyes run function tcc:block/positional_anchor/fill/raycast
item modify entity @s[gamemode=!creative] weapon.mainhand tcc:reduce_count/1
advancement revoke @s only tcc:technical/item_used_on_block/fill_positional_anchor
