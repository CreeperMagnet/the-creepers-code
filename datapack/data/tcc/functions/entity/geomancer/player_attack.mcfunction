############################################################
# Description: Chooses a random attack to do on a player
# Creator: CreeperMagnet_
############################################################

tag @s[predicate=tcc:chance/one_third] add tcc.tag
execute if entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_wall/make_trap
execute unless entity @s[tag=tcc.tag] run function tcc:entity/geomancer/spawn_explosive/random_pos
tag @s remove tcc.tag