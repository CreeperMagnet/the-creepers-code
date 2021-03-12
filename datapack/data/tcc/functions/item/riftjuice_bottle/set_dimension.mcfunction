############################################################
# Description: Makes riftjuice teleportation centered and properly dimensioned
# Creator: CreeperMagnet_
############################################################

execute unless data storage tcc:storage root.temp.riftjuice.dimension run function tcc:item/riftjuice_bottle/failsafe
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:overworld"} in minecraft:overworld positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_end"} in minecraft:the_end positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
execute if data storage tcc:storage root.temp.riftjuice{dimension:"minecraft:the_nether"} in minecraft:the_nether positioned 0 0 0 run function tcc:item/riftjuice_bottle/iterate_x_start
