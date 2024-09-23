# Sets odds for pigs

# 1/256 chance to spawn 8 pigs (target + 7)
execute if predicate tcc:random_chance/0.00390625 run return run function tcc:entity/pig/spawn_7_pigs

# This runs otherwise
summon minecraft:pig ~ ~ ~ {Age:-23999}
execute if predicate tcc:random_chance/0.5 run summon pig ~ ~ ~ {Age:-23999}