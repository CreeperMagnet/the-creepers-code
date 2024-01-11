# Functions to run as the player who fell into the situation

execute positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s minecraft:levitation 4 50
execute positioned ~ -64 ~ if entity @s[dy=-100] run effect give @s minecraft:slow_falling 60 0
execute if block ~ ~1 ~ minecraft:water run effect give @s minecraft:water_breathing 180 0 false
tag @s remove tcc.scheduled.totem_of_undying
