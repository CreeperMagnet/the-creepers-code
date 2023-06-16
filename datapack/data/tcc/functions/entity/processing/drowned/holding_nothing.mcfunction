############################################################
# Gives a drowned a random item in the mainhand
############################################################

tag @s remove tcc.tag
tag @s[predicate=tcc:chance/one_half] add tcc.tag
data modify entity @s HandDropChances set value [1.0f,1.0f]
loot replace entity @s[tag=tcc.tag] weapon.mainhand loot tcc:items/swordfish
loot replace entity @s[tag=!tcc.tag] weapon.mainhand loot tcc:entities/drowned_pottery_sherd
tag @s remove tcc.tag