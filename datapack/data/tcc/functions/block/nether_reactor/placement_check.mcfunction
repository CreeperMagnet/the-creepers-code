############################################################
# Commands to place a nether reactor
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"nether_reactor_core"}}}]} run function tcc:block/nether_reactor/place
