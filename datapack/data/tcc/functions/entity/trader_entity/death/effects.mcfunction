############################################################
# Where were you when trader entity was kil?
############################################################

particle minecraft:poof ~ ~1 ~ 0.2 0.5 0.2 0 20 normal
execute if entity @s[nbt={Item:{tag:{tcc:{entity:"geomancer"}}}}] run function tcc:entity/geomancer/shard_drops/main
execute unless entity @s[nbt={Item:{tag:{tcc:{entity:"geomancer"}}}}] run summon experience_orb ~ ~ ~ {Value:2s}
execute unless entity @s[nbt={Item:{tag:{tcc:{entity:"geomancer"}}}}] run summon experience_orb ~ ~ ~ {Value:1s}
function tcc:entity/trader_entity/sounds/death
kill @s
