############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ repeating_command_block[conditional=true] run function tcc:item/wrench/rotate/block/repeating_command_block/conditional
execute if block ~ ~ ~ repeating_command_block[conditional=false] run function tcc:item/wrench/rotate/block/repeating_command_block/unconditional