############################################################
# Description: The magic of NBT
# Creator: Ellivers
############################################################

loot spawn ~ ~ ~ loot tcc:technical/placeholder
data modify entity @e[type=minecraft:item,nbt={Item:{tag:{tcc:{id:"placeholder"}}}},sort=nearest,limit=1] Item set from entity @s Item
