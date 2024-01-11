# Changes the enabled status

data remove storage tcc:storage root.temp.item
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"tangling_pearl"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"tangling_pearl"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]

scoreboard players set @s tcc.dummy 0
execute if data storage tcc:storage root.temp.item.tag.tcc{enabled:0b} run function tcc:item/tangling_pearl/toggle/on
execute if score @s tcc.dummy matches 0 if data storage tcc:storage root.temp.item.tag.tcc{enabled:1b} run function tcc:item/tangling_pearl/toggle/off

item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"tangling_pearl"}}}}] weapon.mainhand tcc:copy_nbt
item modify entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"tangling_pearl"}}}}] weapon.offhand tcc:copy_nbt

