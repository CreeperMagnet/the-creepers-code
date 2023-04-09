############################################################
# Commands to break a frostbloom
############################################################

execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={Item:{id:"minecraft:spruce_sapling"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function tcc:block/frostbloom/break/kill_item
particle minecraft:item warped_fungus_on_a_stick{CustomModelData:330007} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s
execute if block ~ ~1 ~ minecraft:light[level=0] run setblock ~ ~1 ~ air
execute if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable run setblock ~ ~ ~ snow
