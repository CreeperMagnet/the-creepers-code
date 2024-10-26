# Common code for decorating a custom pot

item replace block ~ ~ ~ container.15 from block ~ ~ ~ container.12
data modify block ~ ~ ~ Items[{Slot:15b}].count set value 1
data modify storage tcc:temp root.item set from block ~ ~ ~ Items[{Slot:15b}]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.raw_pot set value 0b
execute if data storage tcc:temp root.barrel_data[1][{Slot:3b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[2] set from storage tcc:temp root.barrel_data[1][{Slot:3b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:11b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[0] set from storage tcc:temp root.barrel_data[1][{Slot:11b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:13b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[3] set from storage tcc:temp root.barrel_data[1][{Slot:13b}]
execute if data storage tcc:temp root.barrel_data[1][{Slot:21b}] run data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[1] set from storage tcc:temp root.barrel_data[1][{Slot:21b}]
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[].Slot
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.sherds[].count

# Sets macro input for a macro to set item model

data remove storage tcc:temp root.macro_input
data merge storage tcc:temp {root:{macro_input:{sherd_0:"blank",sherd_1:"blank"}}}
data modify storage tcc:temp root.macro_input.sherd_0 set from storage tcc:temp root.barrel_data[1][{Slot:21b}].components."minecraft:custom_data".tcc.sherd
data modify storage tcc:temp root.macro_input.sherd_1 set from storage tcc:temp root.barrel_data[1][{Slot:13b}].components."minecraft:custom_data".tcc.sherd
data modify storage tcc:temp root.macro_input.material set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.type
function tcc:block/pottery_table/crafting/create_output/decorate_pot/set_item_model_macro with storage tcc:temp root.macro_input