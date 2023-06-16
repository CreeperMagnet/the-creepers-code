############################################################
# Commands to run tickly for pottery tables that just closed
############################################################

tag @s remove tcc.pottery_table.open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=tcc.inside_pottery_table_gui,distance=..10] at @s unless entity @e[type=item_display,tag=tcc.pottery_table.open,distance=..10] run tag @s remove tcc.inside_pottery_table_gui
data remove block ~ ~ ~ Items[{Slot:15b}]