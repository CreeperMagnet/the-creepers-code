############################################################
# Description: Trigger for gobblerifts
# Creator: CreeperMagnet_
############################################################

execute as @e[nbt={HurtTime:10s},tag=tcc.gobblerift,sort=arbitrary,distance=..7] at @s run function tcc:block/gobblerift/hurt/increment
advancement revoke @s only tcc:technical/block/gobblerift/hurt