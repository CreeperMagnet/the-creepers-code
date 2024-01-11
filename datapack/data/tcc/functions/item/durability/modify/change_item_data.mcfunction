# Modifies the data of the item

# Set the durability tag
execute store result storage tcc:storage root.temp.item.tag.tcc.durability[0] int 1 run scoreboard players get @s tcc.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s tcc.dummy2 run data get storage tcc:storage root.temp.item.tag.tcc.durability[1] 1
data modify storage tcc:storage root.temp.item.tag.tcc.repaired set value 0b
execute if score @s tcc.dummy = @s tcc.dummy2 run data modify storage tcc:storage root.temp.item.tag.tcc.repaired set value 1b
