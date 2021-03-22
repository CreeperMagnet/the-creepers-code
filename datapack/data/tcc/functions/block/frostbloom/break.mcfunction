############################################################
# Description: Commands to break a frostbloom
# Creator: CreeperMagnet_
############################################################

execute store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:spruce_sapling"}}]
execute unless block ~ ~ ~ #tcc:air store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b}}]
execute if score tcc.temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/frostbloom
particle minecraft:item carrot_on_a_stick{CustomModelData:330030} ~ ~ ~ 0.3 0.3 0.3 0.05 50 normal
kill @s
execute if block ~ ~-1 ~ grass_block if block ~ ~ ~ #tcc:replaceable run setblock ~ ~ ~ snow
