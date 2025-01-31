# Commands to break a nether reactor core

execute store success score #temp_0 tcc.dummy run kill @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:obsidian"}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/nether_reactor_core
function tcc:block/break_particles/spawn_generic
kill @s
