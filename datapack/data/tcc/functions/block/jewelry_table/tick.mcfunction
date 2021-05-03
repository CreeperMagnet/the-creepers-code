############################################################
# Description: Commands to run tickly for jewelry tables
# Creator: CreeperMagnet_
############################################################

execute unless block ~ ~ ~ hopper run function tcc:block/jewelry_table/break
execute if entity @a[tag=tcc.inside_jewelry_table_gui,distance=..10] run function tcc:block/jewelry_table/check_gui
