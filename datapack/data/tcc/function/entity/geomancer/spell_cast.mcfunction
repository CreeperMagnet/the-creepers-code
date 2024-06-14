# Makes animations and such for a spell-casting cycle

scoreboard players add @s tcc.dummy2 0
execute if entity @s[scores={tcc.dummy2=0..}] run function tcc:entity/illager/line_of_sight
scoreboard players add @s[scores={tcc.dummy2=0..}] tcc.dummy2 1
attribute @s minecraft:generic.movement_speed modifier add tcc:slowness -100 add_value
execute if entity @s[tag=!tcc.has_line_of_sight] run function tcc:entity/geomancer/spell_finish
execute if entity @s[tag=tcc.has_line_of_sight] facing entity @n[predicate=tcc:entity_properties/targeted_by_illagers,distance=..16] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={tcc.dummy2=3..}] run function tcc:entity/geomancer/spell_finish