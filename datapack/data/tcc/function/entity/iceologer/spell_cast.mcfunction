# Makes animations and such for a spell-casting cycle

scoreboard players add @s tcc.dummy2 0
execute if entity @s[scores={tcc.dummy2=0..}] run function tcc:entity/illager/line_of_sight
scoreboard players add @s[scores={tcc.dummy2=0..}] tcc.dummy2 1
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value true
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier add tcc:slowness -100 add_value
execute rotated ~ 0 run particle minecraft:effect ^-0.4 ^1.7 ^0.6 0.01 0.01 0.01 0.1 3 force
execute rotated ~ 0 run particle minecraft:effect ^0.4 ^1.7 ^0.6 0.01 0.01 0.01 0.1 3 force
execute if entity @s[tag=!tcc.has_line_of_sight] run function tcc:entity/iceologer/spell_end
rotate @s[tag=tcc.has_line_of_sight] facing entity @n[predicate=tcc:entity_properties/targeted_by_illagers,distance=..16] eyes
execute if entity @s[scores={tcc.dummy2=3..}] run function tcc:entity/iceologer/spell_end