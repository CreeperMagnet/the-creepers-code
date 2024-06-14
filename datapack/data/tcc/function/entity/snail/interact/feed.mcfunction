# Commands to run for feeding a snail beetroot

effect give @s[tag=!tcc.baby] minecraft:regeneration 10
tag @s[tag=!tcc.baby] add tcc.fed_beetroot
scoreboard players set @s[tag=!tcc.baby] tcc.dummy2 1200
scoreboard players remove @s[tag=tcc.baby] tcc.dummy2 30
execute if entity @s[tag=tcc.baby,scores={tcc.dummy2=..0}] run function tcc:entity/snail/baby/grow_up
particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 1 5 normal
playsound tcc:entity.snail.feed neutral @a[distance=..16]
