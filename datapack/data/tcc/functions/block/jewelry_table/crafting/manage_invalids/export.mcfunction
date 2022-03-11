############################################################
# Exports invalid items
############################################################

data modify storage tcc:storage root.temp.Items set value []

data modify storage tcc:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage tcc:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:6b}]
data modify storage tcc:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:22b}]
execute if entity @s[tag=tcc.jewelry_table.assembled_output] run data modify storage tcc:storage root.temp.Items append from block ~ ~ ~ Items[{Slot:4b}]

data remove block ~ ~ ~ Items[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:6b}]
data remove block ~ ~ ~ Items[{Slot:22b}]
execute if entity @s[tag=tcc.jewelry_table.assembled_output] run data remove block ~ ~ ~ Items[{Slot:4b}]

data modify storage tcc:storage root.temp.export_items set from block ~ ~ ~ Items
execute store result score @s tcc.dummy run data get block ~ ~ ~ Items


# Spawns the items on the nearest player that opened the table's gui
execute if data storage tcc:storage root.temp.export_items[{}] run function tcc:block/jewelry_table/crafting/manage_invalids/spawn_loop
data modify block ~ ~ ~ Items set from storage tcc:storage root.temp.Items
