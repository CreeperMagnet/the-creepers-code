############################################################
# Commands for placing a jewelry table
############################################################

setblock ~ ~ ~ air
setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.tcc.jewelry_table.gui","font":"tcc:jewelry_table","color":"white","with":[{"translate":"block.tcc.jewelry_table","color":"#3F3F3F","font":"minecraft:default"}]}'}
summon armor_stand ~ ~ ~ {CustomName:'{"translate":"block.tcc.jewelry_table"}',ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:330001,tcc:{stored_barrel_data:[[],[]]}}}],Tags:["tcc.block","tcc.tick","tcc.second_clock","tcc.ten_second_clock","tcc.jewelry_table","smithed.entity","smithed.block","tcc.prevents_hoppers"],NoGravity:1b,Invisible:1b,Marker:1b}
function tcc:block/hopper_updating/fill
