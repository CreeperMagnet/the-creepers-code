# Makes an item glow and last forever

tag @s add tcc.second_clock
data modify entity @s Age set value -32767s
team join tcc.recovery_compass @s
tag @s add tcc.recovery_compass_item
data modify entity @s Glowing set value 1b