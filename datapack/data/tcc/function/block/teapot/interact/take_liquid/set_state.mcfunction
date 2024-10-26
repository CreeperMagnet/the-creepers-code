# Empties a teapot, setting tags and visuals

execute on vehicle run data modify entity @s item set value {id:"minecraft:stone",count:1,components:{"minecraft:item_model":"tcc:block/teapot/empty"}}
tag @s remove tcc.teapot.water
tag @s remove tcc.teapot.filled
tag @s remove tcc.teapot.warped_wart
tag @s remove tcc.teapot.can_extend