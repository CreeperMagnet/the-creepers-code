############################################################
# Description: Functions to run off a normal geomancer pillar every tick
# Creator: CreeperMagnet_
############################################################

scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=5}] run playsound minecraft:block.deepslate.break block @a[distance=..16]
execute if entity @s[scores={tcc.dummy2=5}] run particle minecraft:item minecraft:structure_block{CustomModelData:330026} ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
execute if entity @s[scores={tcc.dummy2=5}] run fill ~ ~-0.5 ~ ~ ~1.5 ~ air replace barrier
execute if entity @s[scores={tcc.dummy2=5}] run kill @s
