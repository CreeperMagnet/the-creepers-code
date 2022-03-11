############################################################
# The magic of NBT
############################################################

loot spawn ~ ~ ~ loot tcc:technical/placeholder
data modify entity @e[type=minecraft:item,tag=!smithed.entity,nbt={Item:{tag:{tcc:{id:"placeholder"}}}},sort=nearest,limit=1] Item set from entity @s Item
