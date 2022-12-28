############################################################
# Modifies vanilla trader llamas
############################################################

data merge entity @s {Tame:1b,ChestedHorse:1b,Strength:5}
loot replace entity @s horse.0 loot tcc:chests/trader_llama
scoreboard players set @s tcc.dummy2 240
tag @s add tcc.ten_second_clock