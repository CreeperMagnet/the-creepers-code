############################################################
# Empties a teapot, setting tags and visuals
############################################################

execute on vehicle run data modify entity @s item set value {id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330086}}
tag @s remove tcc.teapot.water
tag @s remove tcc.teapot.filled
tag @s remove tcc.teapot.warped_wart
tag @s remove tcc.teapot.can_extend