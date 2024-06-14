# Makes an explosive pillar explode

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
tag @s add tcc.geomancer_explosive_damage_source
data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.UUID set from entity @s item.components."minecraft:custom_data".UUID
execute as @e[distance=..7,tag=!tcc.geomancer,tag=!smithed.strict,type=!#tcc:inanimate] run function tcc:block/geomancer_pillars/explosive/damage with storage tcc:temp root.macro_input
tag @s remove tcc.geomancer_explosive_damage_source