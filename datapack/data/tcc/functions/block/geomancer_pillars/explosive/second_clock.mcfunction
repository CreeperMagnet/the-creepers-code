############################################################
# Description: Functions to run off an explosive geomancer pillar every tick
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=1}] run playsound tcc:block.explosive_geomancer_pillar.hiss master @a[distance=..16]
execute if entity @s[scores={tcc.dummy2=4}] run function tcc:block/geomancer_pillars/explosive/explode
execute if entity @s[scores={tcc.dummy2=4}] run particle minecraft:item minecraft:structure_block{CustomModelData:330029} ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
execute if entity @s[scores={tcc.dummy2=4}] run fill ~ ~-2 ~ ~ ~ ~ air replace barrier
execute if entity @s[scores={tcc.dummy2=4}] align xyz positioned ~ ~-2 ~ run kill @e[tag=tcc.geomancer_pillar,dx=0,dy=3,dz=0,type=item_frame]
