############################################################
# Description: Starts the gobblerift on solid ground
# Creator: CreeperMagnet_
############################################################

data modify entity @s {} merge from entity @p[tag=tcc.tag] SelectedItem.tag.tcc.snail
data modify entity @s CustomName set from entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{display:{Name:'{"italic":false,"translate":"item.tcc.snail_bucket"}'}}}}] SelectedItem.tag.display.Name
tp @s ~0.5 ~ ~0.5
data remove entity @s Offers.Recipes
tag @s remove tcc.snail.start
