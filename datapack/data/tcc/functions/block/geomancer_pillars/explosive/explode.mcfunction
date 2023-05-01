############################################################
# Makes an explosive pillar explode
############################################################

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
tag @s add tcc.geomancer_explosive_damage_source
data modify storage tcc:storage root.temp.UUID set from entity @s item.tag.UUID
execute as @e[type=minecraft:wandering_trader,tag=tcc.geomancer,distance=..30] run function tcc:entity/illager/attack_uuid_matching
execute as @e[distance=..7,tag=!tcc.geomancer,tag=!smithed.strict,type=!#tcc:inanimate] run damage @s 6.0 tcc:geomancer_explosive by @e[type=item_display,tag=tcc.geomancer_explosive_damage_source,limit=1] from @e[type=wandering_trader,tag=tcc.geomancer,scores={tcc.dummy=0},limit=1,sort=nearest]
tag @s remove tcc.geomancer_explosive_damage_source