############################################################
# Initiate the boomerang's flight based on the storage values given
############################################################

data modify entity @s ArmorItems[3].tag.tcc.item set from storage tcc:storage root.temp.boomerang.item
data modify entity @s ArmorItems[3].tag.tcc.slot set from storage tcc:storage root.temp.boomerang.slot
data modify entity @s ArmorItems[3].tag.tcc.UUID set from storage tcc:storage root.temp.boomerang.UUID
data modify entity @s ArmorItems[3].tag.tcc.gamemode set from storage tcc:storage root.temp.boomerang.gamemode
tp @s ~ ~ ~ ~ ~
tag @s remove tcc.boomerang.start
