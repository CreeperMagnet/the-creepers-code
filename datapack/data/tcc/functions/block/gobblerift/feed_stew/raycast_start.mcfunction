############################################################
# Description: Starts the raycast for feeding gobblerifts stew
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
tag @s remove tcc.tag
execute if data storage tcc:storage root.gamerules{doGobbleriftBreeding:1b} at @s anchored eyes run function tcc:block/gobblerift/feed_stew/raycast
advancement revoke @s only tcc:technical/block/gobblerift/feed_stew