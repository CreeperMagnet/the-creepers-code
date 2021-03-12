data modify storage tcc:storage root.inventory_temp2 set value []
data modify storage tcc:storage root.inventory_temp2 append from storage tcc:storage root.inventory_temp.Inventory[{Slot:-106b}]
data modify storage tcc:storage root.inventory_temp2[{Slot:-106b}].Slot set value 0b

execute in minecraft:overworld run data modify block -30000000 0 2033 Items set from storage tcc:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine -30000000 0 2033 air{drop_contents:1b}