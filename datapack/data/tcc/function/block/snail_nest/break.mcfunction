# Commands to break a snail nest

execute store success score #temp_0 tcc.dummy run kill @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:clay",count:1}}]
execute unless score #temp_0 tcc.dummy matches 1.. run function tcc:block/snail_nest/break_no_silk_touch
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/snail_nest
function tcc:block/break_particles/spawn_generic
kill @s
