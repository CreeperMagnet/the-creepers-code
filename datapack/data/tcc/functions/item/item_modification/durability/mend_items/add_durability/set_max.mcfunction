############################################################
# Description: Checks if an item would be fully repaired
# Creator: CreeperMagnet_
############################################################

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.durability[0] 1
execute store result score tcc.temp_1 tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.durability[1] 1
scoreboard players operation tcc.temp_0 tcc.dummy -= tcc.temp_1 tcc.dummy
execute if score @s tcc.dummy2 < tcc.temp_0 tcc.dummy run scoreboard players operation @s tcc.dummy2 = tcc.temp_0 tcc.dummy
