############################################################
# Rotates a wall hanging sign and any unattached signs beneath it
############################################################


execute if block ~ ~ ~ minecraft:acacia_wall_hanging_sign run function tcc:item/wrench/rotate/block/acacia_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:bamboo_wall_hanging_sign run function tcc:item/wrench/rotate/block/bamboo_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:birch_wall_hanging_sign run function tcc:item/wrench/rotate/block/birch_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:cherry_wall_hanging_sign run function tcc:item/wrench/rotate/block/cherry_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:crimson_wall_hanging_sign run function tcc:item/wrench/rotate/block/crimson_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:dark_oak_wall_hanging_sign run function tcc:item/wrench/rotate/block/dark_oak_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:jungle_wall_hanging_sign run function tcc:item/wrench/rotate/block/jungle_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:mangrove_wall_hanging_sign run function tcc:item/wrench/rotate/block/mangrove_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:oak_wall_hanging_sign run function tcc:item/wrench/rotate/block/oak_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:spruce_wall_hanging_sign run function tcc:item/wrench/rotate/block/spruce_wall_hanging_sign/main
execute if block ~ ~ ~ minecraft:warped_wall_hanging_sign run function tcc:item/wrench/rotate/block/warped_wall_hanging_sign/main

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] run function tcc:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_unattached