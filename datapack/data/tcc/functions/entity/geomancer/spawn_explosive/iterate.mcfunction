############################################################
# Makes an explosive pillar at a random position near the player
############################################################

scoreboard players add @s tcc.dummy 1

data remove storage tcc:storage root.temp.macro_input
execute store result storage tcc:storage root.temp.macro_input.x int 1 run random value -3..3
execute store result storage tcc:storage root.temp.macro_input.z int 1 run random value -3..3
function tcc:entity/geomancer/spawn_explosive/positioned_macro with storage tcc:storage root.temp.macro_input

# tcc.dummy score determines the number of times checked
execute unless entity @s[scores={tcc.dummy=10..}] unless entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_explosive/iterate
execute if entity @s[scores={tcc.dummy=10..}] run effect give @s minecraft:mining_fatigue 120 1 false
