############################################################
# Description: :toomuch:
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ hopper{Items:[{Slot:1b,id:"minecraft:end_crystal"}]} run function tcc:block/jewelry_table/export_slot/eggs
execute store result score @s tcc.dummy run data get block ~ ~ ~ Items[{Slot:1b}].Count
scoreboard players remove @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=0}] run data remove block ~ ~ ~ Items[{Slot:1b}]
execute unless entity @s[scores={tcc.dummy=0}] store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get @s tcc.dummy
execute unless entity @s[scores={tcc.dummy=0}] run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:1b}] set from block ~ ~ ~ Items[{Slot:1b}]
scoreboard players reset @s tcc.dummy