# Updates states for a teapot

execute if entity @s[tag=!tcc.teapot.filled] if data storage tcc:temp root.item{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}} run function tcc:block/teapot/interact/add_water
execute if entity @s[tag=!tcc.teapot.filled] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"tea"} run function tcc:block/teapot/interact/add_tea/main
execute unless score @s tcc.dummy2 matches 1.. if entity @s[tag=tcc.teapot.filled] if data storage tcc:temp root.item{id:"minecraft:glass_bottle"} run function tcc:block/teapot/interact/take_liquid/main
execute if entity @s[tag=tcc.teapot.water] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"warped_wart"} run function tcc:block/teapot/interact/add_warped_wart
execute unless score @s tcc.dummy2 matches 1.. if entity @s[tag=tcc.teapot.can_extend] if data storage tcc:temp root.item.components."minecraft:custom_data".tcc{id:"snail_mucus"} run function tcc:block/teapot/interact/add_snail_mucus
execute unless score @s tcc.dummy2 matches 1.. if entity @s[tag=tcc.teapot.warped_wart] if data storage tcc:temp root.item{tea_ingredient:1b} run function tcc:block/teapot/interact/add_ingredient/main
data remove entity @s interaction