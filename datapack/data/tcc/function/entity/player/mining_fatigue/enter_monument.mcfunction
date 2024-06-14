# Gives the player mining fatigue if they enter a monument

execute if entity @e[type=minecraft:elder_guardian,distance=..50] run function tcc:entity/player/mining_fatigue/elder_guardian_effects
advancement revoke @s only tcc:technical/location/enter_monument