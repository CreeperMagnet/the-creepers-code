############################################################
# Description: Starts the raycast for bucketing a snail
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute at @s anchored eyes run function tcc:entity/snail/bucket/raycast
advancement revoke @s only tcc:technical/entity/bucket_snail
