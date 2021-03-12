############################################################
# Description: Scheduled cursed crown commands
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.cursed_crown_unequip] run function tcc:item/item_modification/inventory/load/non_armor
tag @a remove tcc.scheduled.cursed_crown_unequip