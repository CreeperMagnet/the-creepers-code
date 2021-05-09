############################################################
# Description: Spawns a geomancer
# Creator: CreeperMagnet_
############################################################

execute store result score @s tcc.dummy if entity @e[tag=tcc.geomancer,type=minecraft:wandering_trader]
execute if entity @s[scores={tcc.dummy=..10}] run function tcc:commands/summon/geomancer
execute if entity @s[scores={tcc.dummy=..10}] run tp @s ~ ~-1000 ~
scoreboard players reset @s tcc.dummy
