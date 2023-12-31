############################################################
# Deals damage from a geomancer pillar
############################################################

$damage @s 6.0 tcc:geomancer_explosive by @e[type=item_display,tag=tcc.geomancer_explosive_damage_source,limit=1] from @e[type=wandering_trader,tag=tcc.geomancer,limit=1,nbt={UUID:$(UUID)}]
