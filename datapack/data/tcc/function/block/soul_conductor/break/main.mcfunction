# Commands to break a soul conductor

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"font":"tcc:technical","translate":"block.tcc.soul_conductor.name"}'},id:"minecraft:dropper"}}] at @s run function tcc:block/soul_conductor/break/kill_item
particle minecraft:item{item:{id:"minecraft:stone",components:{"minecraft:item_model":"tcc:block/soul_conductor/up"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
