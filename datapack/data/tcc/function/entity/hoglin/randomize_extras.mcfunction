# Sets odds for hoglins

# 1/256 chance to spawn 8 pigs (target + 7)
execute if predicate tcc:random_chance/0.00390625 run return run function tcc:entity/hoglin/spawn_7_hogs

summon minecraft:hoglin ~ ~ ~ {Age:-23999}
execute if predicate tcc:random_chance/0.5 run summon minecraft:hoglin ~ ~ ~ {Age:-23999}