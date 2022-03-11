############################################################
# Moves items if they are put into invalid slots
############################################################

# Move the item slots around
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:0b}]
execute if predicate tcc:block/jewelry_table/tags/ingots unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b
execute if predicate tcc:block/jewelry_table/tags/minerals unless block ~ ~ ~ barrel{Items:[{Slot:6b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 6b
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.tcc{id:"amethyst_dust"} unless block ~ ~ ~ barrel{Items:[{Slot:22b}]} run data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 22b
data remove entity @s HandItems[0]

# If things are still invalid, just throw them out instead
execute if entity @s[predicate=tcc:block/jewelry_table/has_invalid_items] run function tcc:block/jewelry_table/crafting/manage_invalids/export

# Make sure the storage is updated properly
data modify storage tcc:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
