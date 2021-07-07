############################################################
# Description: Commands to run off a snail every second
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy2=1..}] run function tcc:entity/snail/beetroot_boost
execute if entity @s[tag=tcc.breeding_cooldown] run function tcc:entity/snail/breed/cooldown_loop
execute if entity @s[predicate=tcc:snail_damage_areas] run function tcc:entity/snail/biome_hurt
execute if entity @s[tag=tcc.pregnant] at @s align xyz positioned ~ ~-1 ~ if block ~ ~ ~ clay unless entity @e[dx=0,dz=0,dy=0,type=armor_stand,tag=tcc.snail_nest] run function tcc:entity/snail/breed/lay_egg/loop
execute if entity @s[tag=tcc.in_love] run function tcc:entity/snail/breed/pathfind
