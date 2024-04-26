# Fills a teapot, setting tags and visuals

execute on vehicle run function tcc:block/teapot/interact/add_tea/as_vehicle
execute on target run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:glass_bottle 1
playsound minecraft:item.bottle.empty master @a[distance=..16]
tag @s add tcc.teapot.filled
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.tea{id:"amenable"} run tag @s add tcc.teapot.warped_wart
execute if data storage tcc:temp root.item.components."minecraft:custom_data".tcc.tea{extended:0b} run tag @s add tcc.teapot.can_extend