# Function to modify the durability of a vanilla item

execute store result score @s tcc.dummy run data get storage tcc:storage root.temp.item.tag.Damage
scoreboard players operation #temp_0 tcc.dummy = @s tcc.dummy
scoreboard players operation @s tcc.dummy += #item_durability_change tcc.dummy

scoreboard players operation #temp_0 tcc.dummy *= #-1 tcc.dummy
execute if score #item_durability_change tcc.dummy < #temp_0 tcc.dummy run scoreboard players operation #item_durability_change tcc.dummy = #temp_0 tcc.dummy

execute if score @s tcc.dummy matches ..-1 run scoreboard players set @s tcc.dummy 0
execute store result storage tcc:storage root.temp.item.tag.Damage int 1 run scoreboard players get @s tcc.dummy
