# Changes the lore of the pot 

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.sherd set value "blank"
$data modify storage tcc:temp root.macro_input.sherd set from storage tcc:temp root.barrel_data[1][{Slot:$(slot)b}].components."minecraft:custom_data".tcc.sherd
function tcc:block/pottery_table/crafting/create_output/decorate_pot/prismarine/lore/set_lang_macro with storage tcc:temp root.macro_input
$data modify storage tcc:temp root.item.components."minecraft:lore"[$(lore_line)] set from storage tcc:temp root.lore_line