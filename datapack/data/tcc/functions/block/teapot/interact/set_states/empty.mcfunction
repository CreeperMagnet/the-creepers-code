############################################################
# Description: Empties a teapot, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

data modify entity @s HandItems[0] set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330023}}
tag @s remove tcc.teapot.filled_warped_wart
tag @s remove tcc.teapot.filled_tea
tag @s remove tcc.teapot.filled_antitoxin_tea
tag @s remove tcc.teapot.filled_clearsight_tea
tag @s remove tcc.teapot.filled_obscurity_tea
tag @s remove tcc.teapot.filled_plenty_tea
tag @s remove tcc.teapot.filled_purity_tea
tag @s remove tcc.teapot.filled_serendipity_tea
tag @s remove tcc.teapot.filled_stability_tea
tag @s remove tcc.teapot.filled_steadiness_tea
tag @s remove tcc.teapot.filled_vigor_tea
tag @s remove tcc.teapot.filled_vitality_tea
tag @s remove tcc.teapot.filled_vivacity_tea
tag @s remove tcc.teapot.filled_water
tag @s add tcc.teapot.empty
