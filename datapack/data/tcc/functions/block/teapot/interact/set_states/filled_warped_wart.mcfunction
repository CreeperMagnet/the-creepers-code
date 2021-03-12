############################################################
# Description: Fills a teapot, setting tags and visuals
# Creator: CreeperMagnet_
############################################################

data modify entity @s HandItems[0] set value {id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330000,display:{color:3126434}}}
tag @s remove tcc.teapot.filled_water
tag @s add tcc.teapot.filled_warped_wart
tag @s add tcc.teapot.filled_tea
execute at @s run playsound tcc:block.teapot.brew block @a[distance=..16]