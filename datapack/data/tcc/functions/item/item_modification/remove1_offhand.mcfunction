function tcc:item/item_modification/inventory/setup 

execute store result score temp tcc.dummy run data get storage tcc:storage root.inventory_temp.Inventory[{Slot:-106b}].Count
scoreboard players remove temp tcc.dummy 1
execute store result storage tcc:storage root.inventory_temp.Inventory[{Slot:-106b}].Count byte 1 run scoreboard players get temp tcc.dummy

function tcc:item/item_modification/inventory/load/offhand
