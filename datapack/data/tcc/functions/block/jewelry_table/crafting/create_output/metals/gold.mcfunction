############################################################
# Sets data for a specific type of ring metal
############################################################

loot replace block ~ ~ ~ container.4 loot tcc:technical/base_ring/gold
data modify storage tcc:storage root.temp.item set from block ~ ~ ~ Items[{Slot:4b}]
function tcc:block/jewelry_table/crafting/create_output/main
