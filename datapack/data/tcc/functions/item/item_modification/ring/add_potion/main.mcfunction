############################################################
# Description: Edits the value in tcc:storage.root.temp.item using tcc:storage.root.temp.potion
# Creator: CreeperMagnet_
############################################################

# List of proper values:
  # tcc:storage.root.temp.item : Stores the item to be modified
  # tcc:storage.root.temp.potion : Stores the id of the potion (i.e. potion:"minecraft:swiftness")

function #tcc:dynamic_rings/material_checks/add_potion

data modify storage tcc:storage root.temp.item.tag.tcc.potion.id set from storage tcc:storage root.temp.potion

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.item.tag.CustomModelData
execute store result storage tcc:storage root.temp.item.tag.CustomModelData int 1 run scoreboard players add tcc.temp_0 tcc.dummy 1000
