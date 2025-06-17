# Commands to run tickly for pottery tables that just closed

tag @s remove tcc.pottery_table.open
tag @s add tcc.pottery_table.update_on_next_open
stopsound @a[distance=..16] block block.barrel.close
execute as @a[tag=tcc.inside_pottery_table_gui,distance=..64] at @s run function tcc:block/pottery_table/close_as_player/main
data remove block ~ ~ ~ Items[{Slot:15b}]
tag @s remove tcc.pottery_table.assembled_output
data modify entity @s data.tcc.old_barrel_items set from block ~ ~ ~ Items
data modify entity @s data.tcc.current_barrel_items set from block ~ ~ ~ Items