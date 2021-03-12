############################################################
# Description: Fills a teapot, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

data modify entity @s HandItems[0] set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330000,display:{color:2441066}}}
tag @s remove tcc.teapot.empty
tag @s add tcc.teapot.filled_water
execute at @s run playsound minecraft:item.bottle.empty master @a[distance=..16]