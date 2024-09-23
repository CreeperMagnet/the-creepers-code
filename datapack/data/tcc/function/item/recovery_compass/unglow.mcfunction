# Removes data from glowing item

tag @s remove tcc.second_clock
tag @s remove tcc.recovery_compass_item
data modify entity @s Age set value 0s
team leave @s
data modify entity @s Glowing set value 0b