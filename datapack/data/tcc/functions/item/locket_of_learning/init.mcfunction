############################################################
# Description: Starts the locket process
# Creator: ChromaKey
############################################################

data remove storage tcc:storage root.temp

# store locket data to storage for modification
execute if entity @s[nbt={SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}}] run data modify storage tcc:storage root.temp.item set from entity @s SelectedItem
execute if entity @s[nbt=!{SelectedItem:{tag:{tcc:{id:"locket_of_learning"}}}},nbt={Inventory:[{tag:{tcc:{id:"locket_of_learning"}},Slot:-106b}]}] run data modify storage tcc:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]

# store current locket/xp level to score, for operations
execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.tcc.stored_points
execute store result score @s[nbt={XpLevel:3}] tcc.dummy2 run data get entity @s XpP 1000
scoreboard players set @s[nbt=!{XpLevel:3}] tcc.dummy2 1000

# run deposit/withdraw functions
execute if entity @s[predicate=!tcc:sneaking,nbt=!{XpLevel:0},nbt=!{XpLevel:1},nbt=!{XpLevel:2}] unless score @s tcc.dummy2 matches ..306 unless score @s tcc.dummy matches 45 run function tcc:item/locket_of_learning/deposit
execute if entity @s[predicate=tcc:sneaking] unless score @s tcc.dummy matches 0 run function tcc:item/locket_of_learning/withdraw

# reset scores and remove data after all is said and done
scoreboard players reset @s tcc.dummy
scoreboard players reset @s tcc.dummy2
scoreboard players reset tcc.temp_0
data remove storage tcc:storage root.temp
