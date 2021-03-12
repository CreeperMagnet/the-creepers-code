############################################################
# Description: Tags the player if they've entered a jewelry table
# Creator: CreeperMagnet_
############################################################

give @s[predicate=!tcc:full_inventory] structure_block{CustomModelData:330000,display:{Name:'""'}}
tag @s add tcc.scheduled.jewelry_table_gui
schedule function tcc:block/jewelry_table/interact/clear 2t
stopsound @a[distance=..16] player minecraft:entity.item.pickup
tag @s add tcc.inside_jewelry_table_gui
advancement revoke @s only tcc:technical/block/jewelry_table_enter_gui
