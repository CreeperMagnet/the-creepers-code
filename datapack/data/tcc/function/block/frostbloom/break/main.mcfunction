# Commands to break a frostbloom

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:spruce_sapling"}}] unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] at @s run function tcc:block/frostbloom/break/kill_item
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:frostbloom"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 70 normal
kill @s
execute if block ~ ~1 ~ minecraft:light[level=0] run setblock ~ ~1 ~ minecraft:air
execute if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:air run setblock ~ ~ ~ minecraft:snow
