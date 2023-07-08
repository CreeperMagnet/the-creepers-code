############################################################
# Gives a drowned a random item in the mainhand
############################################################

data modify entity @s HandDropChances set value [1.0f,1.0f]
loot replace entity @s weapon.mainhand loot tcc:items/swordfish