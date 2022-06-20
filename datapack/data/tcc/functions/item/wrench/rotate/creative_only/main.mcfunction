############################################################
# Checks creative-only blocks
############################################################

data remove storage tcc:storage root.temp
data modify storage tcc:storage root.temp.wrench_block_data set from block ~ ~ ~ {}
execute if block ~ ~ ~ jigsaw run function tcc:item/wrench/rotate/block/jigsaw
execute if block ~ ~ ~ command_block run function tcc:item/wrench/rotate/block/command_block/main
execute if block ~ ~ ~ chain_command_block run function tcc:item/wrench/rotate/block/chain_command_block/main
execute if block ~ ~ ~ repeating_command_block run function tcc:item/wrench/rotate/block/repeating_command_block/main
execute if block ~ ~ ~ end_portal_frame run function tcc:item/wrench/rotate/block/end_portal_frame
data modify block ~ ~ ~ conditionMet set from storage tcc:storage root.temp.wrench_block_data.conditionMet
data modify block ~ ~ ~ CustomName set from storage tcc:storage root.temp.wrench_block_data.CustomName
data modify block ~ ~ ~ UpdateLastExecution set from storage tcc:storage root.temp.wrench_block_data.UpdateLastExecution
data modify block ~ ~ ~ TrackOutput set from storage tcc:storage root.temp.wrench_block_data.TrackOutput
data modify block ~ ~ ~ SuccessCount set from storage tcc:storage root.temp.wrench_block_data.SuccessCount
data modify block ~ ~ ~ powered set from storage tcc:storage root.temp.wrench_block_data.powered
data modify block ~ ~ ~ auto set from storage tcc:storage root.temp.wrench_block_data.auto
data modify block ~ ~ ~ name set from storage tcc:storage root.temp.wrench_block_data.name
data modify block ~ ~ ~ joint set from storage tcc:storage root.temp.wrench_block_data.joint
data modify block ~ ~ ~ target set from storage tcc:storage root.temp.wrench_block_data.target
data modify block ~ ~ ~ final_state set from storage tcc:storage root.temp.wrench_block_data.final_state
data modify block ~ ~ ~ pool set from storage tcc:storage root.temp.wrench_block_data.pool

