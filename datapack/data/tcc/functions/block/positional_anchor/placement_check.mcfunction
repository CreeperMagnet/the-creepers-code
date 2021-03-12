############################################################
# Description: Commands to place a positional anchor
# Creator: Nexus
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"positional_anchor"}}}]} run function tcc:block/positional_anchor/place
