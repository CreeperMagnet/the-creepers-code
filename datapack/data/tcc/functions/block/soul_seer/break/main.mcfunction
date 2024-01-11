# Commands to break a soul seer

execute as @e[tag=!smithed.entity,limit=1,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.tcc.soul_seer.name","font":"tcc:technical"}'}}}}] at @s run function tcc:block/soul_seer/break/kill_item
kill @e[type=minecraft:item,nbt={Item:{tag:{tcc:{clear:1b}}}}]
particle minecraft:item minecraft:dropper{CustomModelData:330004} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
