############################################################
# Resets the jeweler
############################################################

tag @s remove tcc.jeweler
tag @s remove tcc.tick
item replace entity @s armor.head with air
item replace entity @s weapon.mainhand with air
data modify entity @s ArmorDropChances set value [0.085f,0.085f,0.085f,0.085f]
data modify entity @s HandDropChances set value [0.085f,0.085f]
data modify entity @s[nbt={CustomName:'{"translate":"entity.tcc.jeweler"}'}] CustomName set value ''
