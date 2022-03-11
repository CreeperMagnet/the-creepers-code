############################################################
# Modifies zombified jeweler
############################################################

data modify entity @s VillagerData.profession set value "minecraft:nitwit"
data modify entity @s ArmorDropChances set value [-1000.0f,-1000.0f,-1000.0f,-1000.0f]
item replace entity @s armor.head with structure_block{CustomModelData:330062}
tag @s add tcc.zombified_jeweler
tag @s add tcc.ten_second_clock
