############################################################
# Makes riftjuice work
############################################################

tag @s remove tcc.tag
advancement revoke @s only tcc:technical/consume_item/riftjuice_bottle
data remove storage tcc:storage root.temp
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] store result score #temp tcc.dummy run data get entity @s SelectedItem.tag.tcc.riftjuice_id
execute unless entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] store result score #temp tcc.dummy run data get entity @s Inventory[{Slot:-106b}].tag.tcc.riftjuice_id
function tcc:block/gobblerift/array_management/get
data modify storage tcc:storage root.temp.riftjuice set from storage tcc:storage root.temp.entry
execute unless data storage tcc:storage root.temp.riftjuice run playsound tcc:block.gobblerift.teleport_player_fail player @a[distance=..16]
execute if data storage tcc:storage root.temp.riftjuice run function tcc:item/riftjuice_bottle/default_dimensions