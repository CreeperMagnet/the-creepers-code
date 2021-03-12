############################################################
# Description: Updates the nether reactor's state
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/block/nether_reactor_update
execute as @e[type=armor_stand,tag=tcc.nether_reactor_core,tag=!tcc.nether_reactor_core.on,distance=..12,sort=nearest] at @s run function tcc:block/nether_reactor/check_casing/off
