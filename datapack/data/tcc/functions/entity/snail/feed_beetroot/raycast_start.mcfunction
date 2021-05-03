############################################################
# Description: Starts the raycast for feeding a snail beetroot
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
execute at @s anchored eyes run function tcc:entity/snail/feed_beetroot/raycast
advancement revoke @s only tcc:technical/entity/feed_snail_beetroot
