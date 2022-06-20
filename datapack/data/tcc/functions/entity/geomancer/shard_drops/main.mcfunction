############################################################
# Drops shards/xp from a geomancer
############################################################

execute store success score @s tcc.dummy run clone ~8 ~8 ~8 ~-8 ~-8 ~-8 ~-8 ~-8 ~-8 filtered minecraft:sculk_catalyst force
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:entity/geomancer/shard_drops/echo
execute unless entity @s[scores={tcc.dummy=1..}] run function tcc:entity/geomancer/shard_drops/amethyst