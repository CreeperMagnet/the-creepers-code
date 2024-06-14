# Commands to break a pottery table

# Close GUI
function tcc:block/pottery_table/tick/close

# Delete Output
data modify storage tcc:temp root.output_item set from entity @s item.components."minecraft:custom_data".stored_barrel_data[1][{Slot:15b}]
data remove storage tcc:temp root.output_item.Slot
scoreboard players set #temp_0 tcc.dummy 0
execute if data entity @s item.components."minecraft:custom_data".stored_barrel_data[1][{Slot:15b}].id as @e[type=minecraft:item,sort=nearest,distance=..2,tag=!smithed.entity] run function tcc:block/pottery_table/break/delete_output

# Spawn particles, items, etc.
execute as @n[tag=!smithed.entity,type=minecraft:item,distance=..3,nbt={PickupDelay:10s,Item:{components:{"minecraft:custom_name":'{"color":"white","font":"tcc:pottery_table","translate":"block.tcc.pottery_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.tcc.pottery_table"}]}'},id:"minecraft:barrel"}}] at @s run function tcc:block/pottery_table/break/kill_item
particle minecraft:item{item:{id:"barrel",components:{"minecraft:custom_model_data":330000}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
