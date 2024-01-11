# Checks if an item is vanilla or not

scoreboard players set @s tcc.dummy 0
data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.item set from entity @s Item
data remove storage tcc:storage root.temp.item.tag.display
data remove storage tcc:storage root.temp.item.tag.Enchantments
data remove storage tcc:storage root.temp.item.tag.RepairCost
execute unless data storage tcc:storage root.temp.item.tag.tcc store success score @s tcc.dummy if data storage tcc:storage root.temp.item.tag run data modify storage tcc:storage root.temp.item.tag set value {}
execute if data storage tcc:storage root.temp.item.tag.tcc run scoreboard players set @s tcc.dummy 0
execute if score @s tcc.dummy matches 0 run function tcc:item/soulbound_item/add_item_to_array