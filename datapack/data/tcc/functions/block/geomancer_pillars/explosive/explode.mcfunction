############################################################
# Makes an explosive pillar explode
############################################################

particle minecraft:explosion ~ ~ ~ 3 2 3 0.5 20 normal
playsound tcc:block.explosive_geomancer_pillar.explode master @a[distance=..16]
execute store result score #temp_0 tcc.dummy run difficulty
execute if entity @s[tag=!tcc.geomancer_pillar.double_damage] run scoreboard players set #damage tcc.dummy 60
execute if entity @s[tag=tcc.geomancer_pillar.double_damage] run scoreboard players set #damage tcc.dummy 120
scoreboard players operation #damage tcc.dummy *= #temp_0 tcc.dummy
execute as @a[distance=..7,gamemode=!creative,gamemode=!spectator,nbt=!{Health:0.0f}] run function tcc:block/geomancer_pillars/explosive/damage
