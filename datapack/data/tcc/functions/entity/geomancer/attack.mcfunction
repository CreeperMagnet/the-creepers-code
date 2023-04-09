############################################################
# Chooses a random attack to do on a geomancer target
############################################################
 
execute at @s[distance=4..] align xyz run function tcc:entity/geomancer/randomize_attack
execute at @s[distance=..4] align xyz run function tcc:entity/geomancer/spawn_explosive/start