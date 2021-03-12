############################################################
# Description: Commands to place a jewelry table
# Creator: CreeperMagnet_
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"jewelry_table"}}}]} unless entity @s[y_rotation=45..135] unless entity @s[y_rotation=-135..-45] run function tcc:block/jewelry_table/place_ns
execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"jewelry_table"}}}]} unless entity @s[y_rotation=135..-135] unless entity @s[y_rotation=-45..45] run function tcc:block/jewelry_table/place_ew
