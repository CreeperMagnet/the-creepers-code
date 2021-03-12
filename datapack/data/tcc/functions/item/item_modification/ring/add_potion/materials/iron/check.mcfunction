############################################################
# Description: Checks if a ring has the proper materials
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp.Items[0].tag.tcc{metal:"minecraft:iron"} run function tcc:item/item_modification/ring/add_potion/materials/iron/main
