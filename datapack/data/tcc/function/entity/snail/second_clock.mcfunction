# Commands to run off a snail every second

execute if entity @s[scores={tcc.dummy2=1..},tag=!tcc.baby] run function tcc:entity/snail/beetroot_boost
execute if entity @s[scores={tcc.dummy2=1..},tag=tcc.baby] run function tcc:entity/snail/baby/clock
execute if entity @s[tag=tcc.breeding_cooldown] run function tcc:entity/snail/breed/cooldown_loop
execute if entity @s[predicate=tcc:location_check/in_water] if biome ~ ~ ~ #tcc:water_hurts_snails run damage @s 1.0 tcc:snail_salt
execute if entity @s[tag=tcc.pregnant] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ minecraft:clay unless entity @e[distance=..0.5,tag=smithed.block] run function tcc:entity/snail/breed/lay_egg/loop
execute if entity @s[tag=tcc.in_love] run function tcc:entity/snail/breed/pathfind
execute if entity @s[nbt={Invulnerable:1b}] run data modify entity @s Invulnerable set value 0b
data remove entity @s Offers.Recipes