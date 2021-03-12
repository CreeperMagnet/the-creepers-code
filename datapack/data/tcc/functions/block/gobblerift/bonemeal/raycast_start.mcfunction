############################################################
# Description: Starts the raycast for bonemealing gobblerifts
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute at @s anchored eyes run function tcc:block/gobblerift/bonemeal/raycast
advancement revoke @s only tcc:technical/block/gobblerift/bonemeal