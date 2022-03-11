############################################################
# Clears a death item
############################################################

clear @s structure_block{tcc:{clear:1b}}
advancement revoke @s only tcc:technical/inventory_changed/clear_item
