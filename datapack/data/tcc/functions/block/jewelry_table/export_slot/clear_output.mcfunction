############################################################
# Description: Throws out a slot as an item.
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.jewelry_table.assembled_output] if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}].id run data modify entity @s ArmorItems[3].tag.tcc.stored_slots[4] set value {Slot:4b}
execute if entity @s[tag=tcc.jewelry_table.assembled_output] run data remove block ~ ~ ~ Items[{Slot:4b}]
tag @s remove tcc.jewelry_table.assembled_output
