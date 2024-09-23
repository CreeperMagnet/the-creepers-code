# Buckets an axolotl

execute store result score @s tcc.dummy run data get storage tcc:temp root.item.components."minecraft:bucket_entity_data".Age
execute if score @s tcc.dummy matches ..-1 run tag @s add tcc.tag

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:0} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330000
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:0} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330001

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:1} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330002
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:1} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330003

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:2} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330004
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:2} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330005

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:3} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330006
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:3} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330007

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:4} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330008
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:4} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330009

tag @s remove tcc.tag
