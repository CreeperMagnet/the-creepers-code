############################################################
# Commands for the boomerang hitting a block and breaking
############################################################

data modify storage tcc:storage root.temp.item set from entity @s ArmorItems[3].tag.tcc.item
execute unless data entity @s ArmorItems[3].tag.tcc{gamemode:1} run loot spawn ~ ~ ~ loot tcc:technical/copy_nbt/warped_fungus_on_a_stick
kill @s
