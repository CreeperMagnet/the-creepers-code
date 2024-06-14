# Sets visuals based on the tea you inserted

data modify entity @s item set value {id:"minecraft:leather_horse_armor",count:1,components:{"minecraft:custom_data":{tea:{}},"minecraft:custom_model_data":330000,"minecraft:dyed_color":{rgb:3760074}}}
data modify entity @s item.components."minecraft:custom_data".tea set from storage tcc:temp root.item.components."minecraft:custom_data".tcc.tea
data modify entity @s item.components."minecraft:dyed_color".rgb set from storage tcc:temp root.item.components."minecraft:potion_contents".custom_color