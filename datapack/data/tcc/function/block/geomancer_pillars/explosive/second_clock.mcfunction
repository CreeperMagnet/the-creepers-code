# Functions to run off an explosive geomancer pillar every tick

scoreboard players add @s tcc.dummy2 1
execute if entity @s[scores={tcc.dummy2=1}] run playsound tcc:block.explosive_geomancer_pillar.hiss master @a[distance=..16]
execute if entity @s[scores={tcc.dummy2=1}] run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value true
execute if entity @s[scores={tcc.dummy2=3}] run function tcc:block/geomancer_pillars/explosive/explode
execute if entity @s[scores={tcc.dummy2=3}] run particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/geomancer_pillar/explosive"}}} ~ ~1 ~ 0.5 1 0.5 0.1 100 normal
execute if entity @s[scores={tcc.dummy2=3}] run fill ~ ~-0.5 ~ ~ ~1.5 ~ minecraft:air replace minecraft:barrier
execute if entity @s[scores={tcc.dummy2=3}] run kill @s
