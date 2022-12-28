############################################################
# Functions to run off of every TCC trader llama every ten seconds
############################################################

scoreboard players remove @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=..0},tag=tcc.wandering_witch_llama] run particle witch ~ ~ ~ 0.5 1 0.5 0 50 normal
execute if entity @s[scores={tcc.dummy2=..0}] run tp @s ~ -1000 ~
execute unless data entity @s Leash.UUID run tag @s remove tcc.ten_second_clock