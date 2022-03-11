############################################################
# Commands to break a jewelry table
############################################################

# Delete Output
data modify storage tcc:storage root.temp.output_item set from entity @s ArmorItems[3].tag.tcc.stored_barrel_data[1][{Slot:4b}]
data remove storage tcc:storage root.temp.output_item.Slot
execute if data entity @s ArmorItems[3].tag.tcc.stored_barrel_data[1][{Slot:4b}].id as @e[type=item,sort=nearest,distance=..2,tag=!smithed.entity] run function tcc:block/jewelry_table/break/delete_output

# Spawn particles, items, etc.
execute store success score #temp_0 tcc.dummy run kill @e[tag=!smithed.entity,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:barrel",tag:{display:{Name:'{"color":"white","font":"tcc:jewelry_table","translate":"block.tcc.jewelry_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.tcc.jewelry_table"}]}'}}}}]
execute if score #temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/jewelry_table
particle minecraft:item barrel{CustomModelData:330000} ~ ~ ~ 0.5 0.6 0.5 0.05 100 normal
kill @s
function tcc:block/hopper_updating/undo
