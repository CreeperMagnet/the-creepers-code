############################################################
# Spawns a geomancer
############################################################

execute store result score @s tcc.dummy if entity @e[tag=tcc.geomancer,type=minecraft:wandering_trader]
execute if entity @e[tag=tcc.geomancer,type=minecraft:wandering_trader,distance=..20] run scoreboard players set @s tcc.dummy 100
execute if entity @s[scores={tcc.dummy=..10}] run function tcc:commands/summon/geomancer
execute if entity @s[scores={tcc.dummy=..10}] run tp @s ~ ~-1000 ~
scoreboard players reset @s tcc.dummy
