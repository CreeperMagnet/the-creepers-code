############################################################
# Makes animations and such for a spell-casting cycle
############################################################

scoreboard players add @s tcc.dummy2 0
execute if entity @s[scores={tcc.dummy2=0..}] run function tcc:entity/geomancer/line_of_sight
scoreboard players add @s[scores={tcc.dummy2=0..}] tcc.dummy2 1
attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 slowness -100 add
execute if entity @s[tag=!tcc.has_line_of_sight] run function tcc:entity/geomancer/spell_finish
execute if entity @s[tag=tcc.has_line_of_sight] facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..16,nbt=!{Health:0.0f}] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={tcc.dummy2=3..}] run function tcc:entity/geomancer/spell_finish