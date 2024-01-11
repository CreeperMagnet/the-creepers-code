# Decreases the breeding cooldown

execute store result score @s tcc.dummy run data get entity @s ArmorItems[3].tag.tcc.breeding_cooldown
execute if entity @s[scores={tcc.dummy=..0}] run tag @s remove tcc.breeding_cooldown
execute store result entity @s ArmorItems[3].tag.tcc.breeding_cooldown int 1 run data get entity @s ArmorItems[3].tag.tcc.breeding_cooldown 0.9999999999
