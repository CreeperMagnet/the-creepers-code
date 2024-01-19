# Modifies zombified archaeologist

data modify entity @s VillagerData.profession set value "minecraft:nitwit"
data modify entity @s ArmorDropChances set value [-1000.0f,-1000.0f,-1000.0f,-1000.0f]
item replace entity @s armor.head with minecraft:structure_block{CustomModelData:330062}
data modify entity @s[nbt={CustomName:'{"translate":"entity.tcc.archaeologist"}'}] CustomName set value '""'
tag @s add tcc.zombified_archaeologist
tag @s add tcc.ten_second_clock
tag @s add tcc.burns_in_sunlight
