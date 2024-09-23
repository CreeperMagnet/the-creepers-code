# Commands to run for feeding a baby sprouter

scoreboard players add @s tcc.dummy2 30
execute if entity @s[tag=tcc.baby,scores={tcc.dummy2=1200..}] run function tcc:entity/sprouter/grow_up
particle minecraft:happy_villager ~ ~0.5 ~ 0.25 0.5 0.25 1 5 normal
playsound tcc:entity.sprouter.eat neutral @a[distance=..16] ~ ~ ~ 1 1.5