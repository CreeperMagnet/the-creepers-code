############################################################
# Description: Commands for cursed crown scheduling
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.cursed_crown_equip] run function tcc:item/item_modification/inventory/load/armor/head
tag @a remove tcc.scheduled.cursed_crown_equip