# Starts the locket process

data remove storage tcc:temp root

# store locket data to storage for modification
execute if predicate tcc:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage tcc:temp root.item set from entity @s SelectedItem
execute if predicate tcc:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage tcc:temp root.item.slot set value "weapon.mainhand"
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage tcc:temp root.item set from entity @s equipment.offhand
execute unless predicate tcc:entity_properties/slots/weapon.mainhand/locket_of_learning run data modify storage tcc:temp root.item.slot set value "weapon.offhand"

# Run deposit/withdraw functions

# Stored points go in #temp_0
execute store result score #temp_0 tcc.dummy run data get storage tcc:temp root.item.components."minecraft:custom_data".tcc.stored_points

execute store result score @s tcc.dummy run xp query @s points
execute unless predicate tcc:entity_properties/sneaking unless entity @s[nbt={XpLevel:0},scores={tcc.dummy=0}] unless score #temp_0 tcc.dummy matches 1395 run function tcc:item/locket_of_learning/deposit/main
execute if predicate tcc:entity_properties/sneaking run function tcc:item/locket_of_learning/withdraw/main