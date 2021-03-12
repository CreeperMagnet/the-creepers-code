data modify storage tcc:storage root.inventory_temp2 set from storage tcc:storage root.inventory_temp.Inventory[{Slot:103b}]
data modify storage tcc:storage root.inventory_temp2.Slot set value 0b

execute in minecraft:overworld run data modify block -30000000 0 2033 Items append from storage tcc:storage root.inventory_temp2

execute in minecraft:overworld run loot replace entity @s armor.head 1 mine -30000000 0 2033 air{drop_contents:1b}