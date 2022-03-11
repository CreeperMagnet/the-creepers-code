############################################################
# Ends the locket process
############################################################

# store score back into locket data
execute store result storage tcc:storage root.temp.item.tag.tcc.stored_points int 1 run scoreboard players get @s tcc.dummy

# set custom model data based on stored points
execute if score @s tcc.dummy matches 0 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330026
execute if score @s tcc.dummy matches 1..11 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330027
execute if score @s tcc.dummy matches 12..23 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330028
execute if score @s tcc.dummy matches 24..35 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330029
execute if score @s tcc.dummy matches 36..44 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330030
execute if score @s tcc.dummy matches 45 run data modify storage tcc:storage root.temp.item.tag.CustomModelData set value 330031
execute if score @s tcc.dummy matches 45 run data modify storage tcc:storage root.temp.item.tag.Enchantments set value [{id:"binding_curse",lvl:1s}]
execute unless score @s tcc.dummy matches 45 run data modify storage tcc:storage root.temp.item.tag.Enchantments set value []

# insert the modified locket into the player's inventory
item modify entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}},nbt={Inventory:[{tag:{tcc:{id:"locket_of_learning"}},Slot:-106b}]}] weapon.offhand tcc:copy_nbt
item modify entity @s[nbt={SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}}] weapon.mainhand tcc:copy_nbt
