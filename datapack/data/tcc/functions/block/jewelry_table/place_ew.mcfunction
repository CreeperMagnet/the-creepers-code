############################################################
# Description: Commands for placing a jewelry table
# Creator: CreeperMagnet_
############################################################

setblock ~ ~ ~ air
setblock ~ ~ ~ hopper{TransferCooldown:2147483647,CustomName:'{"translate":"block.tcc.jewelry_table.gui","font":"tcc:jewelry_table","color":"white","with":[{"translate":"block.tcc.jewelry_table","color":"#3F3F3F","font":"minecraft:default"}]}'}
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.jewelry_table"}',ArmorItems:[{},{},{},{id:"minecraft:hopper",Count:1b,tag:{CustomModelData:330001,tcc:{potion:"",stored_slots:[{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b}]}}}],Tags:["tcc.block","tcc.entity","tcc.jewelry_table","global.ignore"],NoGravity:1b,Invisible:1b,Marker:1b}
