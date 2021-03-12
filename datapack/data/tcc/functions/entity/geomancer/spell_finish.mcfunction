############################################################
# Description: Makes animations and such for a spell-casting cycle
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.trader_entity.still
tag @s remove tcc.geomancer.casting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
data modify entity @s HandItems[0].tag.CustomModelData set value 330005
execute if entity @s[tag=!tcc.failed_line_of_sight] run playsound tcc:entity.geomancer.cast_spell hostile @a[distance=..16]
execute if entity @s[tag=!tcc.failed_line_of_sight] as @e[gamemode=!creative,gamemode=!spectator,type=player,limit=1,sort=nearest] at @s align xyz run function tcc:entity/geomancer/player_attack
