############################################################
# Description: Makes an explosive pillar explode
# Creator: CreeperMagnet_
############################################################

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
execute store result score tcc.temp_0 tcc.dummy run difficulty
execute if entity @s[tag=!tcc.geomancer_pillar.double_damage] run scoreboard players set tcc.damage tcc.dummy 60
execute if entity @s[tag=tcc.geomancer_pillar.double_damage] run scoreboard players set tcc.damage tcc.dummy 120
scoreboard players operation tcc.damage tcc.dummy *= tcc.temp_0 tcc.dummy
execute as @e[type=player,distance=..7,gamemode=!creative,gamemode=!spectator] run function tcc:block/geomancer_pillars/explosive/damage
