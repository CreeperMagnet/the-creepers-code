############################################################
# Description: :toomuch:
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b},{Slot:3b,Count:64b}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:0b,tag:{tcc:{gemstone:{quality:"pristine"}}}}]} unless block ~ ~ ~ minecraft:hopper{Items:[{Slot:1b,tag:{tcc:{gemstone:{quality:"pristine"}}}}]} run data remove block ~ ~ ~ Items[{Slot:3b}]
item modify block ~ ~ ~ container.3 tcc:reduce_count
data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}] set from block ~ ~ ~ Items[{Slot:3b}]
