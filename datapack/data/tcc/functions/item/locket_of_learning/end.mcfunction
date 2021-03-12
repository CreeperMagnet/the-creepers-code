############################################################
# Description: Ends the locket process
# Creator: ChromaKey
############################################################

# store score back into locket data
execute store result storage tcc:storage root.temp.Items[0].tag.tcc.stored_points int 1.0 run scoreboard players get @s tcc.dummy

# set custom model data based on stored points
execute if score @s tcc.dummy matches 0 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330031
execute if score @s tcc.dummy matches 1..11 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330032
execute if score @s tcc.dummy matches 12..23 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330033
execute if score @s tcc.dummy matches 24..35 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330034
execute if score @s tcc.dummy matches 36..44 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330035
execute if score @s tcc.dummy matches 45 run data modify storage tcc:storage root.temp.Items[0].tag.CustomModelData set value 330036
execute if score @s tcc.dummy matches 45 run data modify storage tcc:storage root.temp.Items[0].tag.Enchantments set value [{id:"binding_curse",lvl:1s}]
execute unless score @s tcc.dummy matches 45 run data remove storage tcc:storage root.temp.Items[0].tag.Enchantments

# insert the modified locket into the player's inventory
data modify block -30000000 0 2033 Items set from storage tcc:storage root.temp.Items
loot replace entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}},nbt={Inventory:[{tag:{tcc:{id:"locket_of_learning"}},Slot:-106b}]}] weapon.offhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
loot replace entity @s[nbt={SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}}] weapon.mainhand 1 mine -30000000 0 2033 minecraft:air{drop_contents:1b}
