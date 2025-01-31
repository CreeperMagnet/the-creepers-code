# Modifies zombified archaeologist

data modify entity @s VillagerData.profession set value "minecraft:nitwit"
data modify entity @s ArmorDropChances set value [-1000.0f,-1000.0f,-1000.0f,-1000.0f]
item replace entity @s armor.head with minecraft:shears[minecraft:item_model="tcc:entity/archaeologist/head/main"]
item replace entity @s weapon.mainhand with air
data remove entity @s[nbt={CustomName:'{"translate":"entity.tcc.archaeologist"}'}] CustomName
tag @s add tcc.zombified_archaeologist
tag @s add tcc.ten_second_clock
tag @s add tcc.burns_in_sunlight
