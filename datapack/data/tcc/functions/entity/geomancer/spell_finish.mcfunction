############################################################
# Description: Makes animations and such for a spell-casting cycle
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy2
tag @s remove tcc.trader_entity.still
tag @s remove tcc.geomancer.casting
attribute @s minecraft:generic.movement_speed modifier remove 0-2-0-3-3
data modify entity @s HandItems[0].tag.CustomModelData set value 330005
execute if entity @s[tag=tcc.has_line_of_sight] run playsound tcc:entity.geomancer.cast_spell hostile @a[distance=..16]
data remove storage tcc:storage root.temp
execute if data entity @s ActiveEffects[{Id:5b}] run data modify storage tcc:storage root.temp.strength set value 1b
execute if entity @s[tag=tcc.has_line_of_sight] as @e[gamemode=!creative,gamemode=!spectator,type=player,limit=1,sort=nearest,distance=4..] at @s align xyz run function tcc:entity/geomancer/player_attack
execute if entity @s[tag=tcc.has_line_of_sight] as @e[gamemode=!creative,gamemode=!spectator,type=player,limit=1,sort=nearest,distance=..4] at @s align xyz run function tcc:entity/geomancer/spawn_explosive/start
data modify entity @s WanderTarget set value {X:0,Y:0,Z:0}
execute store result entity @s WanderTarget.X int 1 run data get storage tcc:storage root.temp.pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get storage tcc:storage root.temp.pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get storage tcc:storage root.temp.pos[2]
