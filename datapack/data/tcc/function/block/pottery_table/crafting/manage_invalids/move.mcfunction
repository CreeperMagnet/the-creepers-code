# Moves items if they are put into invalid slots

# Move the item slots around
execute if items block ~ ~ ~ container.0 #tcc:pot_materials unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if items block ~ ~ ~ container.0 #minecraft:decorated_pot_sherds run function tcc:block/pottery_table/crafting/manage_invalids/move_sherds
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}]} run function tcc:block/pottery_table/crafting/manage_invalids/move_sherds

execute if items block ~ ~ ~ container.0 minecraft:decorated_pot unless data block ~ ~ ~ Items[{Slot:0b}].components."minecraft:pot_decorations" unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b,components:{"minecraft:custom_data":{tcc:{id:"decorated_pot",raw_pot:1b}}}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 12b

# If things are still invalid, just throw them out instead
execute if predicate tcc:location_check/pottery_table_with_invalid_items run function tcc:block/pottery_table/crafting/manage_invalids/export

# Make sure the storage is updated properly
data modify storage tcc:temp root.barrel_data[1] set from block ~ ~ ~ Items
