############################################################
# Description: Makes riftjuice teleportation cross-dimensionally work properly, and also adds a failsafe condition
# Creator: CreeperMagnet_
############################################################

# Use the "minecraft:overworld" line as a template if you're adding to this code via function tag. Also, make sure to add a predicate and add to the other function tag used in this process as well.

execute if data storage tcc:storage root.temp.riftjuice{dimension:"unknown"} run function tcc:item/riftjuice_bottle/failsafe
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:overworld"} in minecraft:overworld positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_end"} in minecraft:the_end positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_nether"} in minecraft:the_nether positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
