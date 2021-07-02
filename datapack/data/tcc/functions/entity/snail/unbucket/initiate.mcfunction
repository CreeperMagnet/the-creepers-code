############################################################
# Description: Starts the gobblerift on solid ground
# Creator: CreeperMagnet_
############################################################

data modify entity @s {} merge from entity @p[tag=tcc.tag] SelectedItem.tag.tcc.snail
execute store result score @s tcc.dummy2 run data get entity @p[tag=tcc.tag] SelectedItem.tag.tcc.snail_boost_timer
tag @s[tag=!tcc.not_fed_beetroot,scores={tcc.dummy2=0}] add tcc.not_fed_beetroot
execute at @s[scores={tcc.dummy2=1..}] run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 50 normal
data modify entity @s CustomName set from entity @p[tag=tcc.tag,nbt=!{SelectedItem:{tag:{display:{Name:'{"italic":false,"translate":"item.tcc.snail_bucket"}'}}}}] SelectedItem.tag.display.Name
tp @s ~0.5 ~ ~0.5
data remove entity @s Offers.Recipes
tag @s remove tcc.snail.start
