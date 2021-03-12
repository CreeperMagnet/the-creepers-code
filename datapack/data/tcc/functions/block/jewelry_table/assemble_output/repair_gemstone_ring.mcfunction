############################################################
# Description: Repairs the output using the input
# Creator: CreeperMagnet_
############################################################

# Set storage stuff
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.Items insert 0 from block ~ ~ ~ Items[{Slot:4b}]
data remove storage tcc:storage root.temp.Items[0].Slot

# Find the value needed to fully repair
execute store result score @s tcc.dummy2 run data get storage tcc:storage root.temp.Items[0].tag.tcc.durability[0] 1
execute store result score tcc.temp_1 tcc.dummy run data get storage tcc:storage root.temp.Items[0].tag.tcc.durability[1] 1
scoreboard players operation @s tcc.dummy2 -= tcc.temp_1 tcc.dummy

execute unless entity @s[scores={tcc.dummy2=0}] run function tcc:item/item_modification/durability/modify_durability
data modify block ~ ~ ~ Items[{Slot:4b}].tag set from storage tcc:storage root.temp.Items[0].tag
