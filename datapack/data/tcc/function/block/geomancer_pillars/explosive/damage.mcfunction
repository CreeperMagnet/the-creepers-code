# Deals damage from a geomancer pillar

$execute unless entity @n[type=minecraft:wandering_trader,tag=tcc.geomancer,nbt={UUID:$(UUID)}] run return run damage @s 6.0 tcc:geomancer_explosive_no_geomancer by @n[type=minecraft:item_display,tag=tcc.geomancer_explosive_damage_source]
$damage @s 6.0 tcc:geomancer_explosive by @n[type=minecraft:item_display,tag=tcc.geomancer_explosive_damage_source] from @n[type=minecraft:wandering_trader,tag=tcc.geomancer,nbt={UUID:$(UUID)}]