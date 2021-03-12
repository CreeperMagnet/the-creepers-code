############################################################
# Description: Commands to break a jewelry table
# Creator: CreeperMagnet_
############################################################
execute as @e[tag=tcc.jewelry_table.dead,limit=1,sort=nearest,type=armor_stand] run data modify entity @s ArmorItems[3].tag.tcc.temp set from entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b}]
execute store success score @s tcc.dummy run data modify entity @e[tag=tcc.jewelry_table.dead,limit=1,sort=nearest,type=armor_stand] ArmorItems[3].tag.tcc.temp.tag set from entity @s Item.tag
execute if entity @s[scores={tcc.dummy=0}] run kill @s
