# Commands to check if a slot contains valid items

# If custom sherd, don't export
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}]} run return 0
# If vanilla sherd, don't export
execute if items block ~ ~ ~ container.12 #minecraft:decorated_pot_sherds run return 0
# If vanilla pot, don't export
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,id:"minecraft:decorated_pot"}]} unless data block ~ ~ ~ Items[{Slot:12b}].components."minecraft:pot_decorations" run return 0
# If raw custom pot, don't export
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,components:{"minecraft:custom_data":{tcc:{id:"decorated_pot",raw_pot:1b}}}}]} run return 0

# Export if all others fail
data modify storage tcc:temp root.export_items set value [{}]
data modify storage tcc:temp root.export_items[0] set from block ~ ~ ~ Items[{Slot:12b}]
data remove block ~ ~ ~ Items[{Slot:12b}]
data modify storage tcc:temp root.barrel_data[1] set from block ~ ~ ~ Items
function tcc:block/pottery_table/crafting/manage_invalids/spawn_loop