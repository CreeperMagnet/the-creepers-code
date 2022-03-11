############################################################
# Makes animations and such for a spell-casting cycle
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.spellcasting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
execute if entity @s[tag=tcc.has_line_of_sight] run function tcc:entity/iceologer/spell_completed
