# Restores the proper slot in which the boomerang came from

data remove storage tcc:storage root.temp.boomerang.macro_input.item
$execute if data entity @s Inventory[{Slot:$(slot)b}] run data modify storage tcc:storage root.temp.boomerang.macro_input.item set from entity @s Inventory[{Slot:$(slot)b}]
#
execute if data storage tcc:storage root.temp.boomerang.macro_input.item run function tcc:technical/macros/spawn_item with storage tcc:storage root.temp.boomerang.macro_input
#
$loot replace entity @s hotbar.$(slot) loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
