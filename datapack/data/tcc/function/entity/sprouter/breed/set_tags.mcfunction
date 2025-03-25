# Sets the data of one sprouter

data modify storage tcc:temp root.bred set value 1b
particle minecraft:heart ~ ~2 ~ 0.5 1 0.5 1 15 normal
tag @s remove tcc.in_love
tag @s add tcc.breeding_cooldown
data modify entity @s data.tcc.breeding_cooldown set value 900
data remove entity @s Offers.Recipes
