############################################################
# Commands to break a frostbloom
############################################################

execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={Age:0s,Item:{id:"minecraft:spruce_sapling",Count:1b}}]
execute unless score #temp_0 tcc.dummy matches 1.. store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={Age:1s,Item:{id:"minecraft:spruce_sapling",Count:1b}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/frostbloom
particle minecraft:item carrot_on_a_stick{CustomModelData:330007} ~ ~ ~ 0.3 0.3 0.3 0.05 50 normal
kill @s
execute if block ~ ~-1 ~ #tcc:opaque if block ~ ~ ~ #tcc:replaceable run setblock ~ ~ ~ snow
