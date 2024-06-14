# Modifies the item

# Set the value on the locket item based on deposit loop results
execute store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.stored_points int 1 run scoreboard players get #temp_0 tcc.dummy

# Set custom model data/glint based on fill level
data modify storage tcc:temp root.item.components."minecraft:enchantment_glint_override" set value false
execute if score #temp_0 tcc.dummy matches 0 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330026
execute if score #temp_0 tcc.dummy matches 1..349 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330027
execute if score #temp_0 tcc.dummy matches 350..698 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330028
execute if score #temp_0 tcc.dummy matches 699..1046 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330029
execute if score #temp_0 tcc.dummy matches 1047..1394 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330030
execute if score #temp_0 tcc.dummy matches 1395 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330031
execute if score #temp_0 tcc.dummy matches 1395 run data modify storage tcc:temp root.item.components."minecraft:enchantment_glint_override" set value true

# Modifies the mainhand item
function tcc:technical/macros/loot/replace with storage tcc:temp root.item
$item modify entity @s $(slot) {"function":"minecraft:set_lore","entity":"this","lore":[{"translate":"item.tcc.locket_of_learning.lore","with":[{"nbt":"root.item.components.\"minecraft:custom_data\".tcc.stored_points","storage":"tcc:temp"},{"text":"1395"}],"color":"gray","italic":false}],"mode":"replace_section","offset":0}