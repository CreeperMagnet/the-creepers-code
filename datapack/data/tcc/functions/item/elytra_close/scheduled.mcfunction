############################################################
# Description: Closes your elytra when shifting
# Creator: CreeperMagnet_
############################################################

execute as @a[tag=tcc.schedule.elytra_close] run loot replace entity @s armor.chest loot tcc:technical/elytra_close/open
execute as @a[tag=tcc.schedule.elytra_close] run tag @s remove tcc.schedule.elytra_close
