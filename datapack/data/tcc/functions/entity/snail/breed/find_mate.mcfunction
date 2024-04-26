# Takes the data from the snail's mate

data modify storage tcc:temp root.pos set from entity @s Pos
execute as @e[type=minecraft:wandering_trader,sort=nearest,distance=0.001..1.5,tag=tcc.snail,tag=tcc.in_love,limit=1] at @s run function tcc:entity/snail/breed/set_tags
execute if data storage tcc:temp root.bred run function tcc:entity/snail/breed/set_tags_female
