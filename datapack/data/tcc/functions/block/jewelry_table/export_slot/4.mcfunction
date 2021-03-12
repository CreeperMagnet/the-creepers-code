############################################################
# Description: Throws out a slot as an item.
# Creator: CreeperMagnet_
############################################################

execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[4] set value {Slot:4b}
execute as @p[tag=!global.ignore,tag=tcc.inside_jewelry_table_gui] at @s run summon item ~ ~ ~ {PickupDelay:3s,Item:{id:"stone",Count:1b},Tags:["tcc.replace_item","global.ignore"]}
data modify entity @e[type=item,limit=1,tag=tcc.replace_item] Item set from block ~ ~ ~ Items[{Slot:4b}]
tag @e[type=item,limit=1,tag=tcc.replace_item] remove tcc.replace_item
replaceitem block ~ ~ ~ container.4 air
