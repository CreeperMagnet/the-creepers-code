# Sets odds for pigs

# This runs otherwise
data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.variant set from entity @s variant

# 1/256 chance to spawn 8 pigs (target + 7)
execute if predicate tcc:random_chance/0.00390625 run return run function tcc:entity/pig/spawn_7_pigs

function tcc:entity/pig/summon_pig_macro with storage tcc:temp root.macro_input
execute if predicate tcc:random_chance/0.5 run function tcc:entity/pig/summon_pig_macro with storage tcc:temp root.macro_input