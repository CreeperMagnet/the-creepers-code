############################################################
# Commands to clear elder guardian or geomancer mining fatigue
############################################################

execute if entity @s[advancements={tcc:technical/player_killed_entity/clear_mining_fatigue={killed_elder_guardian=true}}] run effect clear @a[distance=..50] minecraft:mining_fatigue
effect clear @s minecraft:mining_fatigue
advancement revoke @s only tcc:technical/player_killed_entity/clear_mining_fatigue
