# Commands to run if a snail has a beetroot boost

scoreboard players remove @s tcc.dummy2 1
tag @s[scores={tcc.dummy2=0}] remove tcc.fed_beetroot
tag @s[scores={tcc.dummy2=0}] remove tcc.fed_heartbeet
execute if entity @s[predicate=tcc:random_chance/0.01,tag=!tcc.fed_heartbeet] run loot spawn ~ ~ ~ loot tcc:gameplay/snail_slime
execute if entity @s[predicate=tcc:random_chance/0.05,tag=tcc.fed_heartbeet] run loot spawn ~ ~ ~ loot tcc:gameplay/snail_slime
