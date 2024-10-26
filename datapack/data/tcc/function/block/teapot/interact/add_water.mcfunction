# Fills a teapot, setting tags and visuals

execute on vehicle run data modify entity @s item set value {id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_data":{tea:{id:"water",color:3760074,extended:0b}},"minecraft:item_model":"tcc:block/teapot/full","minecraft:dyed_color":{rgb:3760074}}}
tag @s add tcc.teapot.water
tag @s add tcc.teapot.filled
execute on target run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:glass_bottle 1
playsound minecraft:item.bottle.empty master @a[distance=..16]