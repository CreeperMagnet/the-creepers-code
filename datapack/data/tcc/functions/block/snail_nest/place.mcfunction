############################################################
# Description: Commands to place a snail nest
# Creator: CreeperMagnet_
############################################################

execute align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {CustomName:'{"translate":"block.tcc.snail_nest"}',Tags:["tcc.snail_nest","tcc.block","tcc.entity"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330003}}]}
setblock ~ ~ ~ clay
