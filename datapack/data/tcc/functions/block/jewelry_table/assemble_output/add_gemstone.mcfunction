############################################################
# Description: Runs gemstone functions
# Creator: CreeperMagnet_
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.Items insert 0 from block ~ ~ ~ Items[{Slot:4b}]
data modify storage tcc:storage root.temp.gemstone set from block ~ ~ ~ Items[{Slot:1b}].tag.tcc.gemstone
function tcc:item/item_modification/ring/add_gemstone/main
data modify block ~ ~ ~ Items[{Slot:4b}].tag set from storage tcc:storage root.temp.Items[0].tag
