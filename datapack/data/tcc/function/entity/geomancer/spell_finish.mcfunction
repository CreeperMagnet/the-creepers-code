# Makes animations and such for a spell-casting cycle

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
data modify entity @s ArmorItems[2].components."minecraft:item_model" set value "tcc:entity/geomancer/body/normal/main"
attribute @s minecraft:movement_speed modifier remove tcc:slowness
execute if entity @s[tag=tcc.has_line_of_sight] run playsound tcc:entity.geomancer.cast_spell hostile @a[distance=..16]
data remove storage tcc:temp root
data modify storage tcc:temp root.UUID set from entity @s UUID
execute if entity @s[tag=tcc.has_line_of_sight] as @n[predicate=tcc:entity_properties/targeted_by_illagers,distance=..16] run function tcc:entity/geomancer/attack
data modify entity @s wander_target set value [I;0,0,0]
execute store result entity @s wander_target[0] int 1 run data get storage tcc:temp root.pos[0]
execute store result entity @s wander_target[1] int 1 run data get storage tcc:temp root.pos[1]
execute store result entity @s wander_target[2] int 1 run data get storage tcc:temp root.pos[2]
