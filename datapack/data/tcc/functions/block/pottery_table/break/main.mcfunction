############################################################
# Commands to break a pottery table
############################################################

# Close GUI
function tcc:block/pottery_table/tick/close

# Delete Output
data modify storage tcc:storage root.temp.output_item set from entity @s item.tag.stored_barrel_data[1][{Slot:15b}]
data remove storage tcc:storage root.temp.output_item.Slot
scoreboard players set #temp_0 tcc.dummy 0
execute if data entity @s item.tag.stored_barrel_data[1][{Slot:15b}].id as @e[type=item,sort=nearest,distance=..2,tag=!smithed.entity] run function tcc:block/pottery_table/break/delete_output

# Spawn particles, items, etc.
execute as @e[tag=!smithed.entity,limit=1,type=item,distance=..3,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"color":"white","font":"tcc:pottery_table","translate":"block.tcc.pottery_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.tcc.pottery_table"}]}'}}}}] at @s run function tcc:block/pottery_table/break/kill_item
particle minecraft:item barrel{CustomModelData:330000} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
function tcc:block/hopper_updating/undo
