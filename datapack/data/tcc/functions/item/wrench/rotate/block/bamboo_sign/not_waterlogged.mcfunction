############################################################
# Rotates a block
############################################################

execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=0] run setblock ~ ~ ~ bamboo_sign[rotation=1]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=1] run setblock ~ ~ ~ bamboo_sign[rotation=2]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=2] run setblock ~ ~ ~ bamboo_sign[rotation=3]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=3] run setblock ~ ~ ~ bamboo_sign[rotation=4]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=4] run setblock ~ ~ ~ bamboo_sign[rotation=5]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=5] run setblock ~ ~ ~ bamboo_sign[rotation=6]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=6] run setblock ~ ~ ~ bamboo_sign[rotation=7]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=7] run setblock ~ ~ ~ bamboo_sign[rotation=8]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=8] run setblock ~ ~ ~ bamboo_sign[rotation=9]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=9] run setblock ~ ~ ~ bamboo_sign[rotation=10]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=10] run setblock ~ ~ ~ bamboo_sign[rotation=11]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=11] run setblock ~ ~ ~ bamboo_sign[rotation=12]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=12] run setblock ~ ~ ~ bamboo_sign[rotation=13]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=13] run setblock ~ ~ ~ bamboo_sign[rotation=14]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=14] run setblock ~ ~ ~ bamboo_sign[rotation=15]
execute if entity @s[scores={tcc.dummy=0}] store result score @s tcc.dummy if block ~ ~ ~ bamboo_sign[rotation=15] run setblock ~ ~ ~ bamboo_sign[rotation=0]
