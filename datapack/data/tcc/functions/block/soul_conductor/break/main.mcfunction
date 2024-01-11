# Commands to break a soul conductor

execute as @e[tag=!smithed.entity,limit=1,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'}}}}] at @s run function tcc:block/soul_conductor/break/kill_item
particle minecraft:item minecraft:dropper{CustomModelData:330007} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
