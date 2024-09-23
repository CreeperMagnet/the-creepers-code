# Pathfinds one sprouter to another

data remove entity @s wander_target
data remove storage tcc:temp root
execute as @n[type=minecraft:wandering_trader,distance=0.0001..10,tag=tcc.in_love,tag=tcc.sprouter] at @s run function tcc:entity/sprouter/breed/find_mate
execute if data storage tcc:temp root.pos run function tcc:entity/sprouter/breed/set_wander_target
