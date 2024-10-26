# Buckets an axolotl

execute store result score @s tcc.dummy run data get storage tcc:temp root.item.components."minecraft:bucket_entity_data".Age
execute if score @s tcc.dummy matches ..-1 run tag @s add tcc.tag

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:0} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "minecraft:axolotl_bucket"
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:0} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/leucistic_baby"

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:1} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/wild"
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:1} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/wild_baby"

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:2} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/gold"
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:2} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/gold_baby"

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:3} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/cyan"
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:3} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/cyan_baby"

execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:4} unless entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/blue"
execute if data storage tcc:temp root.item.components."minecraft:bucket_entity_data"{Variant:4} if entity @s[tag=tcc.tag] run data modify storage tcc:temp root.item.components."minecraft:item_model" set value "tcc:axolotl_bucket/blue_baby"

tag @s remove tcc.tag
