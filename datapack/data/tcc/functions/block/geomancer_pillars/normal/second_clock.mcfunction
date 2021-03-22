############################################################
# Description: Functions to run off a normal geomancer pillar every tick
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=5}] run playsound minecraft:block.basalt.break block @a[distance=..16]
execute if entity @s[scores={tcc.dummy2=5}] run particle minecraft:item minecraft:structure_block{CustomModelData:330027} ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
execute if entity @s[scores={tcc.dummy2=5}] run fill ~ ~-2 ~ ~ ~ ~ air replace barrier
execute if entity @s[scores={tcc.dummy2=5}] align xyz positioned ~ ~-2 ~ run kill @e[tag=tcc.geomancer_pillar,dx=0,dy=3,dz=0,type=item_frame]
