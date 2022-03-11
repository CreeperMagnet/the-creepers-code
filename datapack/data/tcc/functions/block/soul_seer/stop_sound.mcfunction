############################################################
# Stops chest lock sound
############################################################

advancement revoke @s only tcc:technical/item_used_on_block/click_soul_seer
stopsound @a[distance=..16] * block.chest.locked
