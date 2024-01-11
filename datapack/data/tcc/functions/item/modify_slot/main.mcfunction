# Modify an item in the player's inventory

function tcc:item/get_item_pos
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.Count

# Different container names depending on where the item is
execute if score #temp_0 tcc.dummy matches 0..8 run function tcc:item/modify_slot/in_hotbar with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches 9..35 run function tcc:item/modify_slot/in_inventory with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches -106 run item modify entity @s weapon.offhand tcc:copy_nbt
