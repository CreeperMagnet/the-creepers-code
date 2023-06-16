############################################################
# Remove the contents of the table
############################################################

tag @s remove tcc.pottery_table.assembled_output
playsound tcc:block.pottery_table.use block @a[distance=..16]
item modify block ~ ~ ~ container.3 tcc:reduce_count/1
item modify block ~ ~ ~ container.11 tcc:reduce_count/1
execute if block ~ ~ ~ barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.12 tcc:reduce_count/1
item modify block ~ ~ ~ container.13 tcc:reduce_count/1
item modify block ~ ~ ~ container.21 tcc:reduce_count/1
data modify storage tcc:storage root.temp.barrel_data[1] set from block ~ ~ ~ Items
