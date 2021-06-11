############################################################
# Description: Starts the raycast for feeding gobblerifts
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
tag @s remove tcc.tag
function tcc:block/gobblerift/feed/verify_item
advancement revoke @s only tcc:technical/block/gobblerift/feed
