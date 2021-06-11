############################################################
# Description: Verifies the item for gobblerift feeding
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s SelectedItem

scoreboard players set @s tcc.dummy 0
data remove storage tcc:storage root.temp.item.tag.RepairCost
data remove storage tcc:storage root.temp.item.tag.display
execute store success score @s tcc.dummy if data storage tcc:storage root.temp.item.tag run data modify storage tcc:storage root.temp.item.tag set value {}

execute if data storage tcc:storage root.gamerules{ignoreGobbleriftMeatNBT:1b} run scoreboard players set @s tcc.dummy 0
advancement grant @s[scores={tcc.dummy=0}] only tcc:minecraft/end/feed_gobblerift
execute if entity @s[scores={tcc.dummy=0}] at @s anchored eyes run function tcc:block/gobblerift/feed/raycast
