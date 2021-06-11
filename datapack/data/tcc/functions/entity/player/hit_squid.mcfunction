############################################################
# Description: Makes squid spit ink at those who hit them
# Creator: CreeperMagnet_
############################################################

execute as @e[type=squid,nbt={HurtTime:10s},tag=!global.ignore] at @s as @e[distance=..3,type=!squid,tag=!global.ignore] at @s if block ~ ~ ~ water run effect give @s blindness 3 0
advancement revoke @s only tcc:technical/entity/hit_squid