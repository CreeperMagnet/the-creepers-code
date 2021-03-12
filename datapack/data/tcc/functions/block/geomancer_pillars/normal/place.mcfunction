############################################################
# Description: Function to spawn a geomancer pillar
# Creator: CreeperMagnet_
############################################################

fill ~ ~ ~ ~ ~2 ~ barrier
playsound minecraft:block.basalt.place block @a[distance=..16]
execute align xz run summon item_frame ~ ~2 ~ {Facing:1b,Invisible:1b,Fixed:1b,Tags:["global.ignore","tcc.entity","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.normal"],Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330027}}}
execute align xz run summon item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Fixed:1b,Tags:["global.ignore","tcc.entity","tcc.block","tcc.geomancer_pillar","tcc.geomancer_pillar.normal_bottom"],Item:{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330026}}}
