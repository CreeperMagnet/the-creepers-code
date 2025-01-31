# Makes animations and such for a spell-casting cycle

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
data modify entity @s ArmorItems[2].components."minecraft:custom_model_data".flags[2] set value false
attribute @s minecraft:movement_speed modifier remove tcc:slowness
execute if entity @s[tag=tcc.has_line_of_sight] run function tcc:entity/iceologer/spell_successful
