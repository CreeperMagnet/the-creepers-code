############################################################
# Description: Removes potion lore from a tipped sword
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]

execute if data storage tcc:storage root.temp.item.tag.potion{id:"minecraft:turtle_master"} run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute if data storage tcc:storage root.temp.item.tag.potion{id:"minecraft:long_turtle_master"} run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
execute if data storage tcc:storage root.temp.item.tag.potion{id:"minecraft:strong_turtle_master"} run data remove storage tcc:storage root.temp.item.tag.display.Lore[-1]
