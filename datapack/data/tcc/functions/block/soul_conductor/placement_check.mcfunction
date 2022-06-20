############################################################
# Commands to place a soul conductor
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"soul_conductor"}}}]} run function tcc:block/soul_conductor/place/main
