############################################################
# Description: Scheduled witch hat commands
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.witch_hat_unequip] run function tcc:item/item_modification/inventory/load/non_armor
tag @a remove tcc.scheduled.witch_hat_unequip