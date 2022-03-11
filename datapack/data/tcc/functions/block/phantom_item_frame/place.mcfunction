############################################################
# Getting which way the item frame is facing
############################################################

tag @s remove tcc.phantom_item_frame.place
execute store result score @s tcc.dummy run data get entity @s Facing
execute if entity @s[scores={tcc.dummy=0}] run tag @s add tcc.phantom_item_frame.down
execute if entity @s[scores={tcc.dummy=1}] run tag @s add tcc.phantom_item_frame.up
execute if entity @s[scores={tcc.dummy=2}] run tag @s add tcc.phantom_item_frame.north
execute if entity @s[scores={tcc.dummy=3}] run tag @s add tcc.phantom_item_frame.south
execute if entity @s[scores={tcc.dummy=4}] run tag @s add tcc.phantom_item_frame.west
execute if entity @s[scores={tcc.dummy=5}] run tag @s add tcc.phantom_item_frame.east
