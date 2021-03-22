############################################################
# Description: Closes your elytra when shifting
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.schedule.elytra_close] run item entity @s armor.chest modify tcc:elytra_open
tag @a remove tcc.schedule.elytra_close
