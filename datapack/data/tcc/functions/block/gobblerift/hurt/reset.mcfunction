############################################################
# Description: Gobblerift unhurting
# Creator: CreeperMagnet_
############################################################

execute store result entity @s HandItems[0].tag.CustomModelData int 1 run data get entity @s HandItems[0].tag.CustomModelData 0.9999999999
tag @s remove tcc.gobblerift.hurt