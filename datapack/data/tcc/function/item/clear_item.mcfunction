# Clears a death item

clear @s minecraft:structure_block[minecraft:custom_data~{tcc:{clear:1b}}]
advancement revoke @s only tcc:technical/inventory_changed/clear_item
