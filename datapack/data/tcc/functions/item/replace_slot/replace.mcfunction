# Replace an item

# Different container names depending on where the item is
execute if score #temp_0 tcc.dummy matches 0..8 run function tcc:item/replace_slot/in_hotbar with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches 9..35 run function tcc:item/replace_slot/in_inventory with storage tcc:storage root.temp.item_position
$execute if score #temp_0 tcc.dummy matches -106 run loot replace entity @s weapon.offhand loot $(path)
