############################################################
# Description: Starts the raycast for feeding gobblerifts
# Creator: CreeperMagnet_
############################################################

scoreboard players set @s tcc.dummy 0
tag @s remove tcc.tag
execute if data storage tcc:storage root.gamerules{ignoreGobbleriftMeatNBT:1b} run advancement grant @s only tcc:minecraft/end/feed_gobblerift
execute if data storage tcc:storage root.gamerules{ignoreGobbleriftMeatNBT:1b} at @s anchored eyes run function tcc:block/gobblerift/feed/raycast
execute unless data storage tcc:storage root.gamerules{ignoreGobbleriftMeatNBT:1b} unless data entity @s SelectedItem.tag run advancement grant @s only tcc:minecraft/end/feed_gobblerift
execute unless data storage tcc:storage root.gamerules{ignoreGobbleriftMeatNBT:1b} unless data entity @s SelectedItem.tag at @s anchored eyes run function tcc:block/gobblerift/feed/raycast
advancement revoke @s only tcc:technical/block/gobblerift/feed