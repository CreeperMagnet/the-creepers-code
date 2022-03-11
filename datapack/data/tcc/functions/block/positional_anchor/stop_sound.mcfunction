############################################################
# Stops the clicking sound
############################################################

advancement revoke @s only tcc:technical/item_used_on_block/click_positional_anchor

stopsound @a[distance=..16] * block.chest.locked
