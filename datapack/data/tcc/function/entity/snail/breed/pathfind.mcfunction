# Pathfinds one snail to another

data remove entity @s wander_target
data remove storage tcc:temp root
execute as @n[type=minecraft:wandering_trader,distance=0.0001..5,tag=tcc.in_love,tag=tcc.snail] at @s run function tcc:entity/snail/breed/find_mate
execute if data storage tcc:temp root.pos run function tcc:entity/snail/breed/set_wander_target
