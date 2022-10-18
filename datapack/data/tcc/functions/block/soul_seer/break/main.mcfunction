############################################################
# Commands to break a soul seer
############################################################

execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}'}}}}] at @s run function tcc:block/soul_seer/break/kill_item
particle minecraft:item dropper{CustomModelData:330004} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
function tcc:block/hopper_updating/undo
