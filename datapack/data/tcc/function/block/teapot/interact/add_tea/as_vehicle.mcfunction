# Sets visuals based on the tea you inserted

data modify entity @s item set value {id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_data":{tea:{}},"minecraft:item_model":"tcc:block/teapot/full","minecraft:dyed_color":{rgb:3760074}}}
data modify entity @s item.components."minecraft:custom_data".tea set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.tea
data modify entity @s item.components."minecraft:dyed_color".rgb set from storage tcc:temp root.item.components."minecraft:potion_contents".custom_color