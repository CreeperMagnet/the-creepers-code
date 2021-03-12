############################################################
# Description: Removes the potion lore of a golden ring
# Creator: CreeperMagnet_
############################################################
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-2]
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-2]
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-2]
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:long_turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-2]
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-2]

execute if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-5]
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-5]
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-5]
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:long_turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-5]
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.gemstone{lore_attribute:1} if data storage tcc:storage root.temp.Items[0].tag.tcc.potion{id:"minecraft:strong_turtle_master"} run data remove storage tcc:storage root.temp.Items[0].tag.display.Lore[-5]
