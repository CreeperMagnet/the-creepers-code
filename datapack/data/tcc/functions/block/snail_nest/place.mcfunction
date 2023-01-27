############################################################
# Commands to place a snail nest
############################################################

execute align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {CustomName:'{"translate":"block.tcc.snail_nest"}',Tags:["tcc.snail_nest","tcc.block","tcc.tick","tcc.ten_second_clock","tcc.second_clock","tcc.prevents_darkening","smithed.entity","smithed.block"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330002}}]}
setblock ~ ~ ~ clay
