############################################################
# Makes a raycast function
############################################################

execute if block ^ ^ ^0.01 minecraft:brewing_stand positioned ^ ^ ^0.01 align xyz run function tcc:block/brewing_stand/marker_spawning/spawn
execute if entity @s[distance=..7] unless block ^ ^ ^0.01 minecraft:brewing_stand positioned ^ ^ ^0.01 run function tcc:block/brewing_stand/marker_spawning/raycast
