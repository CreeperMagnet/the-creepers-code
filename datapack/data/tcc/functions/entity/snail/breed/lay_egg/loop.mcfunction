# Makes the various phases of a snail laying an egg

execute store result score @s tcc.dummy run data get entity @s ArmorItems[3].tag.tcc.egg_phase
execute if entity @s[scores={tcc.dummy=4..}] align xyz positioned ~0.5 ~1 ~0.5 run function tcc:entity/snail/breed/lay_egg/set_block
execute unless data entity @s ArmorItems[3].tag.tcc.egg_phase run data modify entity @s ArmorItems[3].tag.tcc.egg_phase set value 1
execute store result entity @s ArmorItems[3].tag.tcc.egg_phase int -1 run data get entity @s ArmorItems[3].tag.tcc.egg_phase -1.0000000001
particle minecraft:block minecraft:clay ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 1 30 normal
execute if entity @s[tag=!tcc.silent] run playsound minecraft:block.gravel.break neutral @a[distance=..16]
