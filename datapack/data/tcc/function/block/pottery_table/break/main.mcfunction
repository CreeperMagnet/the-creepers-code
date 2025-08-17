# Commands to break a pottery table

# Close GUI
function tcc:block/pottery_table/tick/close

# Delete Output
data remove storage tcc:temp root.output_item
data modify storage tcc:temp root.output_item set from entity @s data.tcc.old_barrel_items[{Slot:15b}]
data remove storage tcc:temp root.output_item.Slot
scoreboard players set #temp_0 tcc.dummy 0

execute if data storage tcc:temp root.output_item.id as @e[type=minecraft:item,sort=nearest,distance=..2,tag=!smithed.entity] run function tcc:block/pottery_table/break/delete_output

# Spawn particles, items, etc.
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..3,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":{"font":"tcc:pottery_table"}},id:"minecraft:barrel"}}] at @s run function tcc:block/pottery_table/break/kill_item
function tcc:block/break_particles/spawn_generic
kill @s
function tcc:block/hopper_updating/undo
