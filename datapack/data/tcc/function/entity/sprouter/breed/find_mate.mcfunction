# Takes the data from the sprouter's mate

data modify storage tcc:temp root.pos set from entity @s Pos
execute as @n[type=minecraft:wandering_trader,distance=0.001..2,tag=tcc.sprouter,tag=tcc.in_love] at @s run function tcc:entity/sprouter/breed/set_tags
execute if data storage tcc:temp root.bred run function tcc:entity/sprouter/breed/set_tags_female
