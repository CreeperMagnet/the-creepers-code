# Increments the stage of the echoing hourglass

data modify storage tcc:temp root.powder set from entity @s item.components."minecraft:custom_data".powder

data modify entity @s item.components."minecraft:custom_model_data" set from storage tcc:temp root.powder.custom_model_data.glass[0]
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_top] run data modify entity @s item.components."minecraft:custom_model_data" set from storage tcc:temp root.powder.custom_model_data.top[0]
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_bottom] run data modify entity @s item.components."minecraft:custom_model_data" set from storage tcc:temp root.powder.custom_model_data.bottom[0]

data remove entity @s item.components."minecraft:custom_data".powder.custom_model_data.glass[0]
data remove entity @s item.components."minecraft:custom_data".powder.custom_model_data.top[0]
data remove entity @s item.components."minecraft:custom_data".powder.custom_model_data.bottom[0]