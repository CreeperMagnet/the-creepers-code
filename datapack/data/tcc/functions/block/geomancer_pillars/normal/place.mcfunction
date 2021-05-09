############################################################
# Description: Function to spawn a geomancer pillar
# Creator: CreeperMagnet_
############################################################

fill ~ ~ ~ ~ ~2 ~ barrier
playsound minecraft:block.deepslate.place block @a[distance=..16]
execute align xz run summon armor_stand ~0.5 ~0.5 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["global.ignore","tcc.entity","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.normal"],ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330026}}]}
