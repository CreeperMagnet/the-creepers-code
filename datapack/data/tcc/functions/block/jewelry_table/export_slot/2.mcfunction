############################################################
# Description: Throws out a slot as an item.
# Creator: CreeperMagnet_
############################################################

execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:2b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[2] set value {Slot:2b}
execute as @p[tag=tcc.inside_jewelry_table_gui] at @s run summon item ~ ~ ~ {PickupDelay:3s,Item:{id:"stone",Count:1b},Tags:["tcc.replace_item","global.ignore"]}
data modify entity @e[type=item,limit=1,tag=tcc.replace_item] Item set from block ~ ~ ~ Items[{Slot:2b}]
tag @e[type=item,limit=1,tag=tcc.replace_item] remove tcc.replace_item
item replace block ~ ~ ~ container.2 with air
