# Rotates an unattached hanging sign and all unattached signs beneath it

scoreboard players set @s tcc.dummy 0

execute if block ~ ~ ~ minecraft:acacia_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:acacia_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:bamboo_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:bamboo_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:birch_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:birch_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:cherry_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:cherry_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:crimson_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:crimson_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:dark_oak_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:dark_oak_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:jungle_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:jungle_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:mangrove_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:mangrove_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:oak_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:oak_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:spruce_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:spruce_hanging_sign",attached:"false"}
execute if block ~ ~ ~ minecraft:warped_hanging_sign run function tcc:item/wrench/rotate/macro/hanging_signs/locked_rotation/main {block:"minecraft:warped_hanging_sign",attached:"false"}

execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:ceiling_hanging_signs[attached=false] run function tcc:item/wrench/rotate/block_tag/all_hanging_signs/ceiling_hanging_signs_unattached