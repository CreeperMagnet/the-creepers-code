# Spawning code for the wandering witch

scoreboard players set #wandering_witch_attempts tcc.dummy 0
execute store result score #temp_0 tcc.dummy run gamerule doTraderSpawning
data modify storage tcc:temp root.pos set from entity @s Pos
execute if score #temp_0 tcc.dummy matches 1 summon minecraft:marker run function tcc:entity/wandering_witch/spawning/spawn_witch