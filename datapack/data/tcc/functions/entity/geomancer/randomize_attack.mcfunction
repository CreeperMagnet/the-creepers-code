############################################################
# Chooses a random attack to do on a player
############################################################

tag @s[predicate=tcc:chance/one_third] add tcc.tag
execute if entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_wall/make_trap
execute unless entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_explosive/start
tag @s remove tcc.tag
