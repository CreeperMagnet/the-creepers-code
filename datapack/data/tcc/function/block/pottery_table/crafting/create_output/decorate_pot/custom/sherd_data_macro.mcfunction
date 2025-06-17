# Edits the sherd data of the pot

# Set the lore based on macro input
data remove storage tcc:temp root.macro_input
$data modify storage tcc:temp root.macro_input.sherd set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".tcc.sherd
$data modify storage tcc:temp root.macro_input.type set value "$(type)"
function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom/lore_macro with storage tcc:temp root.macro_input
$data modify storage tcc:temp root.item.components."minecraft:lore"[$(index)] set from storage tcc:temp root.lore_line

# Put the sherd data into the model
$data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[$(index)] set from block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".tcc.sherd

# Store the sherd item on the pot's data so we can create it again when breaking
$data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[$(index)] set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[$(index)].Slot
$data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[$(index)].count