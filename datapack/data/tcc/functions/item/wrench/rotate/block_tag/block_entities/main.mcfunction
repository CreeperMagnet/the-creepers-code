############################################################
# Checks a block tag
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.wrench_block_data set from block ~ ~ ~ {}
execute if block ~ ~ ~ #tcc:containers run function tcc:item/wrench/rotate/block_tag/block_entities/containers
execute if block ~ ~ ~ #minecraft:standing_signs run function tcc:item/wrench/rotate/block_tag/block_entities/signs
execute if block ~ ~ ~ minecraft:lectern run function tcc:item/wrench/rotate/block/lectern/main
execute if block ~ ~ ~ #minecraft:beehives run function tcc:item/wrench/rotate/block_tag/block_entities/beehives
