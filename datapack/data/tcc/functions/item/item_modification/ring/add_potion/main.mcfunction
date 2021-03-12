############################################################
# Description: Edits the value in tcc:storage.root.temp.Items[0] using tcc:storage.root.temp.potion
# Creator: CreeperMagnet_
############################################################

# List of proper values:
  # tcc:storage.root.temp.Items[0] : Stores the item to be modified
  # tcc:storage.root.temp.potion : Stores the id of the potion (i.e. potion:"minecraft:swiftness")

data remove storage tcc:storage root.temp.Items[0].Slot
function #tcc:dynamic_rings/material_checks/add_potion

data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.id set from storage tcc:storage root.temp.potion

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.Items[0].tag.CustomModelData
scoreboard players add tcc.temp_0 tcc.dummy 1000
execute store result storage tcc:storage root.temp.Items[0].tag.CustomModelData int 1 run scoreboard players get tcc.temp_0 tcc.dummy
