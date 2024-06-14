# Commands to run if a snail is a baby

scoreboard players remove @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=0}] run function tcc:entity/snail/baby/grow_up