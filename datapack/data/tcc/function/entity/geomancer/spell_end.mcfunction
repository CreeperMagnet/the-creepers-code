# Makes animations and such for a spell-casting cycle

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
data modify entity @s equipment.chest.components."minecraft:custom_model_data".flags[2] set value false
data remove entity @s Offers.Recipes
attribute @s minecraft:movement_speed modifier remove tcc:slowness

# Only run the below if you have line of sight;
execute if entity @s[tag=tcc.has_line_of_sight] run function tcc:entity/geomancer/spell_successful