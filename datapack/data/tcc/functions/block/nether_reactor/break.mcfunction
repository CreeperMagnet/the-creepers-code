############################################################
# Commands to break a nether reactor core
############################################################

execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:obsidian"}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/nether_reactor_core
execute if entity @s[tag=!tcc.nether_reactor_core.on] run particle minecraft:item dropper{CustomModelData:330000} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
execute if entity @s[tag=tcc.nether_reactor_core.on] run particle minecraft:item dropper{CustomModelData:330001} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
