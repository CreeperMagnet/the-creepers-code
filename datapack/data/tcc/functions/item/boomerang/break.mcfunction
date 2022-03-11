############################################################
# Commands for the boomerang hitting a block and breaking
############################################################

data modify storage tcc:storage root.temp.item set from entity @s ArmorItems[3].tag.tcc.item
loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/carrot_on_a_stick
kill @s
