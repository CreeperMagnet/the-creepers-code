############################################################
# Commands to break a soul seer
############################################################

execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}'}}}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:blocks/soul_seer
particle minecraft:item dropper{CustomModelData:330004} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
function tcc:block/hopper_updating/undo
