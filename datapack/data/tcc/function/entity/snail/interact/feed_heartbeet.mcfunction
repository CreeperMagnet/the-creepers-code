# Commands to run for feeding a snail beetroot

playsound tcc:entity.snail.feed neutral @a[distance=..16]
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute if entity @s[tag=tcc.baby] run return run function tcc:entity/snail/baby/grow_up
scoreboard players set @s tcc.dummy2 2400
tag @s add tcc.fed_heartbeet
tag @s add tcc.fed_beetroot
effect give @s minecraft:regeneration 30
