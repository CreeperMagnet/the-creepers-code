############################################################
# Description: Starts the raycast for breeding a snail
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute at @s anchored eyes run function tcc:entity/snail/breed/raycast
advancement revoke @s only tcc:technical/entity/breed_snail
