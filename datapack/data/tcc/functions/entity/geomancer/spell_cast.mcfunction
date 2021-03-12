############################################################
# Description: Makes animations and such for a spell-casting cycle
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s tcc.dummy2 0
execute if entity @s[scores={tcc.dummy2=0..2}] run function tcc:entity/geomancer/line_of_sight/start
scoreboard players add @s[scores={tcc.dummy2=0..}] tcc.dummy2 1
tag @s add tcc.trader_entity.still
attribute @s minecraft:generic.movement_speed modifier add 0-2-0-3-3 slowness -100 add
execute if entity @s[tag=tcc.failed_line_of_sight] run function tcc:entity/geomancer/spell_finish
execute if entity @s[tag=!tcc.failed_line_of_sight] run data modify entity @s HandItems[0].tag.CustomModelData set value 330007
execute if entity @s[tag=!tcc.failed_line_of_sight] facing entity @e[type=player,gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={tcc.dummy2=3}] run function tcc:entity/geomancer/spell_finish
tag @s remove tcc.failed_line_of_sight
