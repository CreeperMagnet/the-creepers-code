# Checks if the player still has item on inventory change

tag @s[nbt=!{Inventory:[{tag:{tcc:{enabled:1b,id:"tangling_pearl"}}}]}] remove tcc.has_enabled_tangling_pearl
advancement revoke @s only tcc:technical/inventory_changed/tangling_pearl/check_drop