############################################################
# Description: Starts the raycast
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute anchored eyes run function tcc:item/wrench/horse_stats/raycast
advancement revoke @s only tcc:technical/item/wrench_horse_stats
