# Distanced macro check for pottery table entities

$execute unless entity @e[type=minecraft:item_display,tag=tcc.pottery_table.open,distance=..$(distance)] run tag @s remove tcc.inside_pottery_table_gui