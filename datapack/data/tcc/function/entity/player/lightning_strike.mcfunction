# Functions to run off of a players when lightning strikes nearby

execute as @e[type=minecraft:guardian,distance=..256,tag=!smithed.entity] at @s if entity @e[type=minecraft:lightning_bolt,distance=..4] run function tcc:entity/guardian/transform_to_elder
execute as @e[type=minecraft:wandering_trader,distance=..256,tag=!smithed.entity] at @s if entity @e[type=minecraft:lightning_bolt,distance=..4] run function tcc:entity/wandering_witch/spawning/from_wandering_trader
advancement revoke @s only tcc:technical/lightning_strike/lightning_strike