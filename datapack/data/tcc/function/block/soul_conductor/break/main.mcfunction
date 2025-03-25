# Commands to break a soul conductor

execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"tcc:technical","translate":"block.tcc.soul_conductor.name"}},id:"minecraft:dropper"}}] at @s run function tcc:block/soul_conductor/break/kill_item
function tcc:block/break_particles/spawn_generic
kill @s
function tcc:block/hopper_updating/undo
