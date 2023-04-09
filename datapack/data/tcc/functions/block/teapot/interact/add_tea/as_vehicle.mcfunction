############################################################
# Sets visuals based on the tea you inserted
############################################################

data modify entity @s item set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{tea:{},CustomModelData:330000,display:{color:3760074}}}
data modify entity @s item.tag.tea set from storage tcc:storage root.temp.item.tag.tcc.tea
data modify entity @s item.tag.display.color set from storage tcc:storage root.temp.item.tag.CustomPotionColor