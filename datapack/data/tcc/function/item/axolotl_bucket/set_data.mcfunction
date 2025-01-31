# Buckets an axolotl

execute store result score @s tcc.dummy run data get storage tcc:temp root.item.components."minecraft:bucket_entity_data".Age
data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket"
data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value {flags:[false],floats:[0.0f]}
execute if score @s tcc.dummy matches ..-1 run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
execute store result storage tcc:temp root.item.components."minecraft:custom_model_data".floats[0] float 1 run data get storage tcc:temp root.item.components."minecraft:bucket_entity_data".Variant
