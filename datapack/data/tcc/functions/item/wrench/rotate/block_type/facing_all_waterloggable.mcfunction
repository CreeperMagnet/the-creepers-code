############################################################
# Rotates a block with an all facing blockstate that's waterloggable
############################################################

execute if block ~ ~ ~ minecraft:lightning_rod run function tcc:item/wrench/rotate/macro/facing_all_waterloggable {block:"minecraft:lightning_rod"}
