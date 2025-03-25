# Starts the recipe process of a brewing recipe

data modify storage tcc:temp root.item.components."minecraft:potion_contents" set value {custom_color:16777215,potion:"minecraft:mundane",custom_name:"tcc:serum_of_shrinking"}
data modify storage tcc:temp root.item.components."minecraft:lore" set value [{"color":"dark_purple","italic":false,"translate":"potion.whenDrank"},{"color":"blue","italic":false,"translate":"attribute.modifier.take.1","with":["17",{"translate":"attribute.name.scale"}]},{"translate":"pack.tcc","color":"#008725"}]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc set value {id:"serum_of_shrinking"}
data modify storage tcc:temp root.item.components."minecraft:tooltip_display" set value {hidden_components:["minecraft:potion_contents"]}
data modify storage tcc:temp root.item.components."minecraft:item_name" set value {"translate":"item.tcc.serum_of_shrinking"}
data modify storage tcc:temp root.item.components."minecraft:max_stack_size" set value 16
data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:serum_of_shrinking"
