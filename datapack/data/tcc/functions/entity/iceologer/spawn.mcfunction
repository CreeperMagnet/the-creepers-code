############################################################
# Spawns an iceologer to replace a pillager
############################################################

execute store result score @s tcc.dummy if entity @e[tag=tcc.iceologer,distance=..50,type=wandering_trader]
execute if score @s tcc.dummy < #5 tcc.dummy run function tcc:commands/summon/iceologer
execute if score @s tcc.dummy < #5 tcc.dummy run tp @s ~ ~-1000 ~