############################################################
# Makes an explosive pillar explode
############################################################

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
tag @s add tcc.geomancer_explosive_damage_source
data remove storage tcc:storage root.temp.macro_input
data modify storage tcc:storage root.temp.macro_input.UUID set from entity @s item.tag.UUID
execute as @e[distance=..7,tag=!tcc.geomancer,tag=!smithed.strict,type=!#tcc:inanimate] run function tcc:block/geomancer_pillars/explosive/damage with storage tcc:storage root.temp.macro_input
tag @s remove tcc.geomancer_explosive_damage_source