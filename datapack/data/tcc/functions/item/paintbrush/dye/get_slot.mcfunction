# Checks if the current slot is greater than the existing slots

$execute if data entity @s Inventory[{id:"minecraft:$(color)_dye"}] store result score #temp_1 tcc.dummy run data get entity @s Inventory[{id:"minecraft:$(color)_dye"}].Slot
$execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run data modify storage tcc:storage root.temp.item.id set value "minecraft:$(color)_dye"
execute if score #temp_1 tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = #temp_1 tcc.dummy
