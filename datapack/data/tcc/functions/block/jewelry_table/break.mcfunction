############################################################
# Description: Commands to break a jewelry table
# Creator: CreeperMagnet_
############################################################
tag @s add tcc.jewelry_table.dead
execute if data entity @s ArmorItems[3].tag.tcc.stored_slots[{Slot:4b,Count:1b}] as @e[type=item,sort=nearest,distance=..2,tag=!global.ignore,tag=!global.ignore.kill] run function tcc:block/jewelry_table/break_delete_output
execute store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:hopper",tag:{display:{Name:'{"color":"white","font":"tcc:jewelry_table","translate":"block.tcc.jewelry_table.gui","with":[{"color":"#3F3F3F","font":"minecraft:default","translate":"block.tcc.jewelry_table"}]}'}}}}]
execute if score tcc.temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/jewelry_table
particle minecraft:item hopper{CustomModelData:330000} ~ ~ ~ 0.5 0.6 0.5 0.05 100 normal
kill @s
