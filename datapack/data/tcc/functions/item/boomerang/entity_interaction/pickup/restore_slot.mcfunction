# Restores the proper slot in which the boomerang came from

data remove storage tcc:temp root.boomerang.macro_input.item
$execute if data entity @s Inventory[{Slot:$(slot)b}] run data modify storage tcc:temp root.boomerang.macro_input.item set from entity @s Inventory[{Slot:$(slot)b}]

execute if data storage tcc:temp root.boomerang.macro_input.item run function tcc:technical/macros/spawn_item with storage tcc:temp root.boomerang.macro_input

$loot replace entity @s hotbar.$(slot) loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)}]}]}]}