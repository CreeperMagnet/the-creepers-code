############################################################
# Spawning code for the wandering witch
############################################################

scoreboard players set #wandering_witch_attempts tcc.dummy -1
execute store result score #temp_0 tcc.dummy run gamerule doTraderSpawning
execute if score #temp_0 tcc.dummy matches 1 summon marker run function tcc:entity/wandering_witch/spawning/spawn_witch