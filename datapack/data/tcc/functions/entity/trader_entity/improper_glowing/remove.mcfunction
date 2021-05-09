############################################################
# Description: Removes glowing from certain wandering traders when it's applied
# Creator: CreeperMagnet_
############################################################

effect clear @e[type=minecraft:wandering_trader,tag=tcc.entity,limit=1,nbt={HurtTime:10s}] minecraft:glowing
