############################################################
# Description: :toomuch:
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:end_crystal"}]} run function tcc:block/jewelry_table/export_slot/eggs
item block ~ ~ ~ container.1 modify tcc:reduce_count
data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}] set from block ~ ~ ~ Items[{Slot:1b}]
