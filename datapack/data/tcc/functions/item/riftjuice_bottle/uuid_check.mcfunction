############################################################
# Description: Makes riftjuice work
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/drink_riftjuice
data remove storage tcc:storage root.temp
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] run data modify storage tcc:storage root.temp.riftjuice set from entity @s SelectedItem.tag.tcc.riftjuice
execute unless entity @s[nbt={SelectedItem:{tag:{tcc:{id:"riftjuice_bottle"}}}}] run data modify storage tcc:storage root.temp.riftjuice set from entity @s Inventory[{Slot:-106b}].tag.tcc.riftjuice
data modify storage tcc:storage root.temp.gobblerift_array set from storage tcc:storage root.gobblerift_array
execute store result score tcc.temp_0 tcc.dummy run data modify storage tcc:storage root.temp.gobblerift_array[] set value 0
data modify storage tcc:storage root.temp.gobblerift_array set from storage tcc:storage root.gobblerift_array
execute store result score tcc.temp_1 tcc.dummy run data modify storage tcc:storage root.temp.gobblerift_array[] set from storage tcc:storage root.temp.riftjuice.uuid
execute unless score tcc.temp_0 tcc.dummy = tcc.temp_1 tcc.dummy run function #tcc:riftjuice_dimensions/teleportation
execute unless data storage tcc:storage root.temp.riftjuice.uuid run function #tcc:riftjuice_dimensions/teleportation
