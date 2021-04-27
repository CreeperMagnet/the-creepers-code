############################################################
# Description: Starts the gobblerift on solid ground
# Creator: CreeperMagnet_
############################################################

data modify entity @s {} merge from entity @p[tag=tcc.tag] SelectedItem.tag.tcc.snail
tp @s ~0.5 ~ ~0.5
data remove entity @s Offers.Recipes
tag @s remove tcc.snail.start
