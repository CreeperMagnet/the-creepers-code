############################################################
# Description: Rotates a block
# Creator: CreeperMagnet_
############################################################

execute if block ~ ~ ~ smoker[lit=true] run function tcc:item/wrench/rotate/block/smoker/lit
execute if block ~ ~ ~ smoker[lit=false] run function tcc:item/wrench/rotate/block/smoker/unlit