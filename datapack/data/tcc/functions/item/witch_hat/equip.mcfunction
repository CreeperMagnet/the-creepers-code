############################################################
# Description: Commands for witch hat
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.scheduled.witch_hat_equip] run function tcc:item/item_modification/inventory/load/armor/head
tag @a remove tcc.scheduled.witch_hat_equip