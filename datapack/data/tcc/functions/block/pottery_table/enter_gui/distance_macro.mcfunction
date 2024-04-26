# Macro for checking pottery tables around

$execute as @e[type=minecraft:item_display,distance=..$(distance),tag=tcc.pottery_table] at @s if block ~ ~ ~ minecraft:barrel[open=false] run function tcc:block/pottery_table/open
