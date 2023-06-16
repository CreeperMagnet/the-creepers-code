############################################################
# Commands to place a pottery table
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"pottery_table"}}}]} positioned ~ ~0.5 ~ run function tcc:block/pottery_table/place/summon
