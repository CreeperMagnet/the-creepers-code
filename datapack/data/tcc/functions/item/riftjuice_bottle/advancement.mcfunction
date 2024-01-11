# Makes riftjuice work

advancement revoke @s only tcc:technical/consume_item/riftjuice_bottle
data remove storage tcc:storage root.temp
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] store result storage tcc:storage root.temp.riftjuice.id int 1 run data get entity @s SelectedItem.tag.tcc.riftjuice_id
execute unless entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] store result storage tcc:storage root.temp.riftjuice.id int 1 run data get entity @s Inventory[{Slot:-106b}].tag.tcc.riftjuice_id
function tcc:item/riftjuice_bottle/get_gobblerift_data with storage tcc:storage root.temp.riftjuice
execute unless data storage tcc:storage root.temp.riftjuice.pos run playsound tcc:block.gobblerift.teleport_player_fail player @a[distance=..16]
execute if data storage tcc:storage root.temp.riftjuice.pos run function tcc:item/riftjuice_bottle/teleport