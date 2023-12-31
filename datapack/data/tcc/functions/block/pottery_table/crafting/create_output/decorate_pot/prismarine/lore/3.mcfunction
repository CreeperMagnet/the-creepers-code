############################################################
# Changes the lore of the pot 
############################################################

data modify storage tcc:storage root.temp.sherd_type set from storage tcc:storage root.temp.barrel_data[1][{Slot:11b}].tag.tcc.sherd
function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/lookup
data modify storage tcc:storage root.temp.item.tag.display.Lore[3] set from storage tcc:storage root.temp.lore_line