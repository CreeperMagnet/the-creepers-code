############################################################
# Commands to run tickly for jewelry tables that just closed
############################################################

tag @s remove tcc.jewelry_table.open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=tcc.inside_jewelry_table_gui,distance=..10] at @s unless entity @e[type=armor_stand,tag=tcc.jewelry_table.open,distance=..10] run tag @s remove tcc.inside_jewelry_table_gui
data remove block ~ ~ ~ Items[{Slot:4b}]