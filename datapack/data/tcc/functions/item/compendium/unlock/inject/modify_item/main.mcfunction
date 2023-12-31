############################################################
# Copies the modified NBT to a compendium
############################################################

# Tag so advancements won't trigger while modifying the item
tag @s add tcc.modifying_item

# Different container names depending on where the item is
execute if score #temp_0 tcc.dummy matches 0..8 run function tcc:item/compendium/unlock/inject/modify_item/hotbar with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches 9..35 run function tcc:item/compendium/unlock/inject/modify_item/inventory with storage tcc:storage root.temp.item_position
execute if score #temp_0 tcc.dummy matches -106 run item modify entity @s weapon.offhand tcc:copy_nbt

tag @s remove tcc.modifying_item
