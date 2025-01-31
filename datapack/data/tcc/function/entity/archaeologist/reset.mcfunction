# Resets the archaeologist

tag @s remove tcc.archaeologist
tag @s remove tcc.tick
team leave @s
data modify entity @s HandItems set value [{},{}]
data modify entity @s ArmorDropChances set value [0.085f,0.085f,0.085f,0.085f]
data modify entity @s HandDropChances set value [0.085f,0.085f]
item replace entity @s armor.head with minecraft:air
item replace entity @s weapon.mainhand with minecraft:air
data remove entity @s[nbt={CustomName:'{"translate":"entity.tcc.archaeologist"}'}] CustomName