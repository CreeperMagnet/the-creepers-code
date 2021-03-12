############################################################
# Description: Starts the raycast for juicing gobblerifts
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute at @s anchored eyes run function tcc:block/gobblerift/juice/raycast
advancement revoke @s only tcc:technical/block/gobblerift/juice