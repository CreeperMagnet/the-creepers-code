############################################################
# Description: Kills the structure block item for comparator
# Creator: CreeperMagnet_
############################################################

kill @e[type=item,nbt={Item:{tag:{tcc:{id:"positional_anchor_item"}}}},sort=arbitrary]
clear @a structure_block{tcc:{id:"positional_anchor_item"}}
