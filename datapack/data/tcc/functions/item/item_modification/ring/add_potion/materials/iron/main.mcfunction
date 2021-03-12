############################################################
# Description: Does stuff for golden rings
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp.default_name
function tcc:item/item_modification/ring/name_management/check_name/iron
execute unless data storage tcc:storage root.temp.default_name run data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.custom_name set value 1
execute if data storage tcc:storage root.temp.default_name run function tcc:item/item_modification/ring/add_potion/materials/iron/modify_name

function tcc:item/item_modification/ring/add_potion/materials/iron/modify_lore

data modify storage tcc:storage root.temp.Items[0].tag.tcc.potion.durability set value [60,60]