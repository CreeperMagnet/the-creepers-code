# Commands to break a creaking connector

kill @n[tag=!smithed.entity,type=minecraft:item,distance=..2,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"tcc:technical","translate":"block.tcc.creaking_connector.name"}},id:"minecraft:furnace"}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tcc:{clear:1b}}}}}]

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.id set from entity @s item.components."minecraft:custom_data".id
function tcc:block/creaking_connector/array_management/remove with storage tcc:temp root.macro_input
execute if data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/creaking_connector/named
execute unless data entity @s CustomName run loot spawn ~ ~ ~ loot tcc:blocks/creaking_connector/unnamed
function tcc:block/break_particles/spawn_generic
kill @s
function tcc:block/hopper_updating/undo
