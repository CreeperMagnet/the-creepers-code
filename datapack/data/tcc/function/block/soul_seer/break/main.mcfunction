# Commands to break a soul seer

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}'},id:"minecraft:dropper"}}] at @s run function tcc:block/soul_seer/break/kill_item
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tcc:{clear:1b}}}}}]
particle minecraft:item{item:{id:"minecraft:dropper",components:{"minecraft:item_model":"tcc:block/soul_seer/off"}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
