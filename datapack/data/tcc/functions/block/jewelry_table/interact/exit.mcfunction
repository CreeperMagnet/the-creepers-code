############################################################
# Description: Untags the player if they've exited a jewelry table
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.inside_jewelry_table_gui
advancement revoke @s only tcc:technical/block/jewelry_table_exit_gui
