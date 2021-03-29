############################################################
# Description: Runs potion functions
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage tcc:storage root.temp.potion set from block ~ ~ ~ Items[{Slot:2b}].tag.Potion
function tcc:item/item_modification/ring/add_potion/main
data modify block ~ ~ ~ Items[{Slot:4b}].tag set from storage tcc:storage root.temp.item.tag
