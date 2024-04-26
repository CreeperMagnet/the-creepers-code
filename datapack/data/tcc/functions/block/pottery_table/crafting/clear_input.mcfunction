# Remove the contents of the table

tag @s remove tcc.pottery_table.assembled_output
playsound tcc:block.pottery_table.use block @a[distance=..16]
item modify block ~ ~ ~ container.3 tcc:reduce_count
item modify block ~ ~ ~ container.11 tcc:reduce_count
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.12 tcc:reduce_count
item modify block ~ ~ ~ container.13 tcc:reduce_count
item modify block ~ ~ ~ container.21 tcc:reduce_count
data modify storage tcc:temp root.barrel_data[1] set from block ~ ~ ~ Items
