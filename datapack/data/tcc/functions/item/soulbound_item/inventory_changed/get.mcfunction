############################################################
# Check if the player has dropped their soulbound item
############################################################

tag @s add tcc.has_soulbound_item
advancement revoke @s only tcc:technical/inventory_changed/soulbound_item/get