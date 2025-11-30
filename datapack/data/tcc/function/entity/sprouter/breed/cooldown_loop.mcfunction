# Decreases the breeding cooldown

execute store result score @s tcc.dummy run data get entity @s data.tcc.breeding_cooldown
execute if entity @s[scores={tcc.dummy=..0}] run tag @s remove tcc.breeding_cooldown
execute store result entity @s data.tcc.breeding_cooldown int 1 run scoreboard players remove @s tcc.dummy 1
data remove entity @s Offers.Recipes