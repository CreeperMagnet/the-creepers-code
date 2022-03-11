############################################################
# Fills a teapot, setting tags and visuals
############################################################

data modify entity @s HandItems[0] set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{tcc:{tea:{id:"water",color:3760074,extended:0b}},CustomModelData:330000,display:{color:3760074}}}
tag @s add tcc.teapot.water
tag @s add tcc.teapot.filled
playsound minecraft:item.bottle.empty master @a[distance=..16]