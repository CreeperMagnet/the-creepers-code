# Changes the lore of the pot 

data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.sherd set value "blank"
$data modify storage tcc:storage root.temp.macro_input.sherd set from storage tcc:storage root.temp.barrel_data[1][{Slot:$(slot)b}].tag.tcc.sherd
function tcc:block/pottery_table/crafting/create_output/decorate_pot/nether_brick/lore/set_lang_macro with storage tcc:storage root.temp.macro_input
$data modify storage tcc:storage root.temp.item.tag.display.Lore[$(lore_line)] set from storage tcc:storage root.temp.lore_line