############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ command_block[conditional=true] run function tcc:item/wrench/rotate/block/command_block/conditional
execute if block ~ ~ ~ command_block[conditional=false] run function tcc:item/wrench/rotate/block/command_block/unconditional