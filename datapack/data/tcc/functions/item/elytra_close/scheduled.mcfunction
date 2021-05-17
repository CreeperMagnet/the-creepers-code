############################################################
# Description: Closes your elytra when shifting
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.schedule.elytra_close] run item modify entity @s armor.chest tcc:elytra_open
tag @a remove tcc.schedule.elytra_close
