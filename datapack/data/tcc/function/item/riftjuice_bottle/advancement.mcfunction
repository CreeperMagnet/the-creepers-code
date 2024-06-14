# Makes riftjuice work

advancement revoke @s only tcc:technical/consume_item/riftjuice_bottle
data remove storage tcc:temp root
execute if predicate tcc:entity_properties/slots/weapon.mainhand/riftjuice_bottle store result storage tcc:temp root.riftjuice.id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".tcc.riftjuice_id
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/riftjuice_bottle store result storage tcc:temp root.riftjuice.id int 1 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".tcc.riftjuice_id
function tcc:item/riftjuice_bottle/get_gobblerift_data with storage tcc:temp root.riftjuice
execute unless data storage tcc:temp root.riftjuice.pos run playsound tcc:block.gobblerift.teleport_player_fail player @a[distance=..16]
execute if data storage tcc:temp root.riftjuice.pos run function tcc:item/riftjuice_bottle/teleport