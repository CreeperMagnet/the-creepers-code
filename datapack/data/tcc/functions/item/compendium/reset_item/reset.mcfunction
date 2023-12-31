############################################################
# Reset a compendium item
############################################################

# Different container names depending on where the item is
execute if score #temp_0 tcc.dummy matches 0..8 run function tcc:item/compendium/reset_item/reset_hotbar with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches 9..35 run function tcc:item/compendium/reset_item/reset_inventory with storage tcc:storage root.temp.item_position
$execute if score #temp_0 tcc.dummy matches -106 run loot replace entity @s weapon.offhand loot tcc:technical/copy_nbt/$(type)
