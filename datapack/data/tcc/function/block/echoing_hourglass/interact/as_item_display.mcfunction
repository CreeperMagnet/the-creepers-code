# Commands to run as the item display of the echoing hourglass

data modify entity @s item.components."minecraft:custom_data".break_state set value 0
execute if entity @s[tag=tcc.echoing_hourglass.empty] if data storage tcc:temp root.item{id:"minecraft:sand"} run function tcc:block/echoing_hourglass/interact/insert_powder/sand
execute if entity @s[tag=tcc.echoing_hourglass.empty] if data storage tcc:temp root.item{id:"minecraft:gravel"} run function tcc:block/echoing_hourglass/interact/insert_powder/gravel
execute if entity @s[tag=tcc.echoing_hourglass.finished] run function tcc:block/echoing_hourglass/interact/take_powder/as_item_display