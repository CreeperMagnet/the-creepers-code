data modify storage tcc:storage root.inventory_temp2 set from storage tcc:storage root.inventory_temp.Inventory

# Remove offhand
data remove storage tcc:storage root.inventory_temp2[{Slot:-106b}]
# Remove Armor
data remove storage tcc:storage root.inventory_temp2[{Slot:103b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:102b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:101b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:100b}]
# Remove Inventory
## Row 1
data remove storage tcc:storage root.inventory_temp2[{Slot:9b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:10b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:11b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:12b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:13b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:14b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:15b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:16b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:17b}]
## Row 2
data remove storage tcc:storage root.inventory_temp2[{Slot:18b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:19b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:20b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:21b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:22b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:23b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:24b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:25b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:26b}]
## Row 3
data remove storage tcc:storage root.inventory_temp2[{Slot:27b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:28b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:29b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:30b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:31b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:32b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:33b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:34b}]
data remove storage tcc:storage root.inventory_temp2[{Slot:35b}]

execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s hotbar.0 9 mine -30000000 0 2033 air{drop_contents:1b}