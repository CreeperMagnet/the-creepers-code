############################################################
# Description: Throws out a slot as an item.
# Creator: CreeperMagnet_
############################################################

execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[3] set value {Slot:3b}
execute as @p[tag=tcc.inside_jewelry_table_gui] at @s run summon item ~ ~ ~ {PickupDelay:3s,Item:{id:"stone",Count:1b},Tags:["tcc.replace_item","global.ignore"]}
data modify entity @e[type=item,limit=1,tag=tcc.replace_item] Item set from block ~ ~ ~ Items[{Slot:3b}]
tag @e[type=item,limit=1,tag=tcc.replace_item] remove tcc.replace_item
item replace block ~ ~ ~ container.3 with air
