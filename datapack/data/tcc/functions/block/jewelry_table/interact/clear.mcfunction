############################################################
# Description: Untags the player if they've exited a jewelry table
# Creator: CreeperMagnet_
############################################################

clear @a[tag=tcc.scheduled.jewelry_table_gui] structure_block{CustomModelData:330000}
tag @a remove tcc.scheduled.jewelry_table_gui