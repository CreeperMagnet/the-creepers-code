# Deals damage from a geomancer pillar

$execute store success score @s tcc.dummy run damage @s 6.0 tcc:geomancer_explosive by @n[type=minecraft:item_display,tag=tcc.geomancer_explosive_damage_source] from @n[type=minecraft:wandering_trader,tag=tcc.geomancer,nbt={UUID:$(UUID)}]
execute if score @s tcc.dummy matches 0 run damage @s 6.0 tcc:geomancer_explosive_no_geomancer