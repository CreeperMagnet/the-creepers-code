# Decreases the breeding cooldown

execute store result score @s tcc.dummy run data get entity @s ArmorItems[3].components."minecraft:custom_data".tcc.breeding_cooldown
execute if entity @s[scores={tcc.dummy=..0}] run tag @s remove tcc.breeding_cooldown
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".tcc.breeding_cooldown int 1 run scoreboard players remove @s tcc.dummy 1
