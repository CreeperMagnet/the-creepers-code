# Commands to break a snail nest

execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:clay",Count:1b}}]
execute unless score #temp_0 tcc.dummy matches 1.. run function tcc:block/snail_nest/break_no_silk_touch
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/snail_nest
particle minecraft:item minecraft:dropper{CustomModelData:330006} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
