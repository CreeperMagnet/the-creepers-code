############################################################
# Description: Commands to run off a snail every second
# Creator: CreeperMagnet_
############################################################

execute if entity @s[scores={tcc.dummy2=1..}] run function tcc:entity/snail/beetroot_boost
execute if entity @s[predicate=tcc:snail_damage_areas] run function tcc:entity/snail/biome_hurt
