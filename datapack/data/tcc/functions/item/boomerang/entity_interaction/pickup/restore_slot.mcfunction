############################################################
# Restores the proper slot in which the boomerang came from
############################################################

data remove storage tcc:storage root.temp.boomerang.spawn_item

execute if data storage tcc:storage root.temp.boomerang{slot:0} if data entity @s Inventory[{Slot:0b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:0b}]
execute if data storage tcc:storage root.temp.boomerang{slot:1} if data entity @s Inventory[{Slot:1b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:1b}]
execute if data storage tcc:storage root.temp.boomerang{slot:2} if data entity @s Inventory[{Slot:2b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:2b}]
execute if data storage tcc:storage root.temp.boomerang{slot:3} if data entity @s Inventory[{Slot:3b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:3b}]
execute if data storage tcc:storage root.temp.boomerang{slot:4} if data entity @s Inventory[{Slot:4b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:4b}]
execute if data storage tcc:storage root.temp.boomerang{slot:5} if data entity @s Inventory[{Slot:5b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:5b}]
execute if data storage tcc:storage root.temp.boomerang{slot:6} if data entity @s Inventory[{Slot:6b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:6b}]
execute if data storage tcc:storage root.temp.boomerang{slot:7} if data entity @s Inventory[{Slot:7b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:7b}]
execute if data storage tcc:storage root.temp.boomerang{slot:8} if data entity @s Inventory[{Slot:8b}] run data modify storage tcc:storage root.temp.boomerang.spawn_item set from entity @s Inventory[{Slot:8b}]

execute if data storage tcc:storage root.temp.boomerang.spawn_item run function tcc:item/boomerang/entity_interaction/pickup/spawn_item/main

execute if data storage tcc:storage root.temp.boomerang{slot:0} run loot replace entity @s hotbar.0 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:1} run loot replace entity @s hotbar.1 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:2} run loot replace entity @s hotbar.2 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:3} run loot replace entity @s hotbar.3 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:4} run loot replace entity @s hotbar.4 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:5} run loot replace entity @s hotbar.5 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:6} run loot replace entity @s hotbar.6 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:7} run loot replace entity @s hotbar.7 loot tcc:technical/copy_nbt/carrot_on_a_stick
execute if data storage tcc:storage root.temp.boomerang{slot:8} run loot replace entity @s hotbar.8 loot tcc:technical/copy_nbt/carrot_on_a_stick
