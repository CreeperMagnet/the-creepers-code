# Remove the contents of the table

tag @s remove tcc.pottery_table.assembled_output
playsound tcc:block.pottery_table.use block @a[distance=..16]
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.3 tcc:reduce_count
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.11 tcc:reduce_count
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.13 tcc:reduce_count
execute if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot",Slot:12b}]} run item modify block ~ ~ ~ container.21 tcc:reduce_count
item modify block ~ ~ ~ container.12 tcc:reduce_count
execute unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:decorated_pot"}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,count:2}]} unless items entity @p[gamemode=!spectator,tag=tcc.inside_pottery_table_gui] player.cursor * run function tcc:block/pottery_table/crafting/shift_click_sherd_duplication
data modify storage tcc:temp root.barrel_data[1] set from block ~ ~ ~ Items
playsound tcc:block.pottery_table.craft block @a[distance=..16] ~ ~ ~