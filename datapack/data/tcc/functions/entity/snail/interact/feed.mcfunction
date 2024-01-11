# Commands to run for feeding a snail beetroot

scoreboard players set @s tcc.dummy2 1200
tag @s add tcc.fed_beetroot
effect give @s minecraft:regeneration 10
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
playsound tcc:entity.snail.feed neutral @a[distance=..16]
