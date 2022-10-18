############################################################
# Remove the contents of the table
############################################################

tag @s remove tcc.jewelry_table.assembled_output
playsound tcc:block.jewelry_table.use block @a[distance=..16]

execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:gold_ingot"}] run item modify block ~ ~ ~ container.22 tcc:reduce_count/1
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:iron_ingot"}] run item modify block ~ ~ ~ container.22 tcc:reduce_count/2
execute if data storage tcc:storage root.temp.barrel_data[1][{Slot:2b,id:"minecraft:netherite_ingot"}] run item modify block ~ ~ ~ container.22 tcc:reduce_count/3

item modify block ~ ~ ~ container.2 tcc:reduce_count/1
item modify block ~ ~ ~ container.6 tcc:reduce_count/1
data modify storage tcc:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
