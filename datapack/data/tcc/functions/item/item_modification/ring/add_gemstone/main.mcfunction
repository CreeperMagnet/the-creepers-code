############################################################
# Description: Edits the value in tcc:storage.root.temp.Items[0] using tcc:storage.root.temp.potion
# Creator: CreeperMagnet_
############################################################

# List of proper values:
  # tcc:storage.root.temp.Items[0] : Stores the item to be modified
  # tcc:storage.root.temp.gemstone : Stores the data of the gemstone (i.e. {gemstone:{id:"minecraft:diamond",quality:"cut"}})

data remove storage tcc:storage root.temp.Items[0].Slot

data remove storage tcc:storage root.temp.default_name
function #tcc:dynamic_rings/material_checks/check_name
execute unless data storage tcc:storage root.temp.Items[0].tag.tcc.potion{custom_name:1} run data modify storage tcc:storage root.temp.default_name set value 1
function #tcc:dynamic_rings/material_checks/add_gemstone

data modify storage tcc:storage root.temp.Items[0].tag.tcc.gemstone.quality set from storage tcc:storage root.temp.gemstone.quality
data modify storage tcc:storage root.temp.Items[0].tag.tcc.gemstone.id set from storage tcc:storage root.temp.gemstone.id
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.potion run data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_name set value 1

execute store result score tcc.temp_0 tcc.dummy run data get storage tcc:storage root.temp.Items[0].tag.CustomModelData

### Getting metal IDs in temp_0 and combining with temp_1's gemstone/pack id to get full Custom Model Data

# Chop off the last digit (gem id)
scoreboard players operation tcc.temp_0 tcc.dummy /= tcc.const.10 tcc.dummy
# Chop of beginning digits (pack id)
scoreboard players operation tcc.temp_0 tcc.dummy %= tcc.const.100 tcc.dummy
# Multiply by ten so it fits in with the gem/pack id from the material checks
scoreboard players operation tcc.temp_0 tcc.dummy *= tcc.const.10 tcc.dummy
# Add gem/pack id with metal id
scoreboard players operation tcc.temp_0 tcc.dummy += tcc.temp_1 tcc.dummy
execute if data storage tcc:storage root.temp.Items[0].tag.tcc.potion run scoreboard players add tcc.temp_0 tcc.dummy 1000

execute store result storage tcc:storage root.temp.Items[0].tag.CustomModelData int 1 run scoreboard players get tcc.temp_0 tcc.dummy
