############################################################
# Checks a block tag
############################################################

execute if block ~ ~ ~ acacia_sign run function tcc:item/wrench/rotate/block/acacia_sign/main
execute if block ~ ~ ~ birch_sign run function tcc:item/wrench/rotate/block/birch_sign/main
execute if block ~ ~ ~ crimson_sign run function tcc:item/wrench/rotate/block/crimson_sign/main
execute if block ~ ~ ~ dark_oak_sign run function tcc:item/wrench/rotate/block/dark_oak_sign/main
execute if block ~ ~ ~ jungle_sign run function tcc:item/wrench/rotate/block/jungle_sign/main
execute if block ~ ~ ~ oak_sign run function tcc:item/wrench/rotate/block/oak_sign/main
execute if block ~ ~ ~ spruce_sign run function tcc:item/wrench/rotate/block/spruce_sign/main
execute if block ~ ~ ~ warped_sign run function tcc:item/wrench/rotate/block/warped_sign/main

data modify block ~ ~ ~ Color set from storage tcc:storage root.temp.wrench_block_data.Color
data modify block ~ ~ ~ Text1 set from storage tcc:storage root.temp.wrench_block_data.Text1
data modify block ~ ~ ~ Text2 set from storage tcc:storage root.temp.wrench_block_data.Text2
data modify block ~ ~ ~ Text3 set from storage tcc:storage root.temp.wrench_block_data.Text3
data modify block ~ ~ ~ Text4 set from storage tcc:storage root.temp.wrench_block_data.Text4