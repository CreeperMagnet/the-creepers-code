############################################################
# Makes an explosive pillar at a random position near the player
############################################################

scoreboard players add @s tcc.dummy 1

execute store result score #temp_0 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute store result score #temp_2 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_2
execute if score #temp_2 tcc.dummy matches 1 run scoreboard players operation #temp_0 tcc.dummy *= #-1 tcc.dummy

execute store result score #temp_1 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_3
execute store result score #temp_2 tcc.dummy run loot spawn 0 0 0 loot tcc:technical/roll/min_1_max_2
execute if score #temp_2 tcc.dummy matches 1 run scoreboard players operation #temp_1 tcc.dummy *= #-1 tcc.dummy

function tcc:entity/geomancer/spawn_explosive/x

# tcc.dummy score determines the number of times checked
execute unless entity @s[scores={tcc.dummy=10..}] unless entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_explosive/iterate
execute if entity @s[scores={tcc.dummy=10..}] run effect give @s minecraft:mining_fatigue 120 1 false
