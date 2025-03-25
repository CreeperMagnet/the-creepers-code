# Commands to break a soul seer

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}},id:"minecraft:dropper"}}] at @s run function tcc:block/soul_seer/break/kill_item
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tcc:{clear:1b}}}}}]
function tcc:block/break_particles/spawn_generic
kill @s
function tcc:block/hopper_updating/undo
