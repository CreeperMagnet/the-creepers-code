############################################################
# Commands to break a frostbloom
############################################################

execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={Item:{id:"minecraft:spruce_sapling"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function tcc:block/frostbloom/break/kill_item
particle minecraft:item carrot_on_a_stick{CustomModelData:330007} ~ ~ ~ 0.3 0.3 0.3 0.05 50 normal
kill @s
execute if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable run setblock ~ ~ ~ snow
