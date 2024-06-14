# Checks if a sherd is valid, and if it is not, exports it.

# Compare the sherd with the item in the middle
data modify storage tcc:temp root.compare set value [{},{}]
data modify storage tcc:temp root.compare[0] set from block ~ ~ ~ Items[{Slot:12b}]
$data modify storage tcc:temp root.compare[1] set from block ~ ~ ~ Items[{Slot:$(slot)b}]
data remove storage tcc:temp root.compare[].Slot
data remove storage tcc:temp root.compare[].count

# If the same as item in the middle, don't export
execute store success score @s tcc.dummy run data modify storage tcc:temp root.compare[0] set from storage tcc:temp root.compare[1]
# If item is sherd, don't export
$execute if score @s tcc.dummy matches 1.. if items block ~ ~ ~ container.$(slot) #minecraft:decorated_pot_sherds run return 0
# If item is custom sherd, don't export
$execute if score @s tcc.dummy matches 1.. if block ~ ~ ~ barrel{Items:[{Slot:$(slot)b,components:{"minecraft:custom_data":{tcc:{id:"pottery_sherd"}}}}]} run return 0

# Export if all others fail
data modify storage tcc:temp root.export_items set value [{}]
$data modify storage tcc:temp root.export_items[0] set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data remove block ~ ~ ~ Items[{Slot:$(slot)b}]
data modify storage tcc:temp root.barrel_data[1] set from block ~ ~ ~ Items
function tcc:block/pottery_table/crafting/manage_invalids/spawn_loop