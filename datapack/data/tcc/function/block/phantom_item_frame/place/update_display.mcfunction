# Updates the display entity to ride the item frame

execute at @s if block ~ ~ ~ #tcc:opaque run function tcc:block/update_light/main

ride @s mount @n[type=minecraft:item_frame,tag=tcc.phantom_item_frame]
tag @s remove tcc.phantom_item_frame.update
