############################################################
# Commands to check if a slot contains valid items
############################################################

data modify entity @s HandItems[0] set from block ~ ~ ~ Items[{Slot:6b}]
execute unless predicate tcc:block/jewelry_table/tags/minerals run function tcc:block/jewelry_table/crafting/check_slot_validity/6/export
data remove entity @s HandItems[0]
