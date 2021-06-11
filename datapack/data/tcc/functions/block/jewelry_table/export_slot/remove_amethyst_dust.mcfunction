############################################################
# Description: :toomuch:
# Creator: CreeperMagnet_
############################################################

scoreboard players reset @s tcc.dummy
execute store result score @s tcc.dummy run data get block ~ ~ ~ Items[{Slot:3b}].Count
execute if entity @s[scores={tcc.dummy=20..}] run item modify block ~ ~ ~ container.3 tcc:reduce_count_20
execute unless entity @s[scores={tcc.dummy=20..}] run item modify block ~ ~ ~ container.3 tcc:reduce_count
data modify entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:3b}] set from block ~ ~ ~ Items[{Slot:3b}]
