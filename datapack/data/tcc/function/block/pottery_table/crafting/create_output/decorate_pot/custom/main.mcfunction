# Decorates a non-vanilla pot

data modify storage tcc:temp root.macro_input.type set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".tcc.type

data modify storage tcc:temp root.macro_input.default_item_id set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".tcc.sherds[0].id
data modify storage tcc:temp root.macro_input.default_item_id set string storage tcc:temp root.macro_input.default_item_id 10

function tcc:block/pottery_table/crafting/create_output/decorate_pot/custom/main_macro with storage tcc:temp root.macro_input