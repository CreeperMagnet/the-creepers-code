# Modifies the entity

data modify entity @s item.components."minecraft:custom_model_data" set value 330003
data modify entity @s item.components."minecraft:custom_data".owner set from entity @p[advancements={tcc:technical/any_block_use/fill_positional_anchor=true}] UUID
tag @s add tcc.positional_anchor.filled