# Makes the various phases of a snail laying an egg

scoreboard players set @s tcc.dummy 0
execute store result score @s tcc.dummy run data get entity @s ArmorItems[3].components."minecraft:custom_data".tcc.egg_phase
execute if entity @s[scores={tcc.dummy=4..}] align xyz positioned ~0.5 ~1 ~0.5 run function tcc:entity/snail/breed/lay_egg/set_block
execute unless data entity @s ArmorItems[3].components."minecraft:custom_data".tcc.egg_phase run data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.egg_phase set value 1
scoreboard players add @s tcc.dummy 1
execute store result entity @s ArmorItems[3].components."minecraft:custom_data".tcc.egg_phase int 1 run scoreboard players get @s tcc.dummy
particle minecraft:block{block_state:"minecraft:clay"} ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 30 normal
execute if entity @s[tag=!tcc.silent] run playsound minecraft:block.gravel.break neutral @a[distance=..16]
