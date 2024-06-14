# Checks if the player still has item on inventory change

execute unless items entity @s container.* *[minecraft:custom_data~{tcc:{enabled:1b,id:"tangling_pearl"}}] run tag @s remove tcc.has_enabled_tangling_pearl
advancement revoke @s only tcc:technical/inventory_changed/tangling_pearl/check_drop