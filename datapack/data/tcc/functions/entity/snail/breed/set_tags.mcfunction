# Sets the data of one snail

data modify storage tcc:storage root.temp.bred set value 1b
particle minecraft:heart ~ ~ ~ 0.5 0.5 0.5 1 15 normal
effect clear @s minecraft:speed
tag @s remove tcc.in_love
tag @s add tcc.breeding_cooldown
data modify entity @s ArmorItems[3].tag.tcc.breeding_cooldown set value 900
