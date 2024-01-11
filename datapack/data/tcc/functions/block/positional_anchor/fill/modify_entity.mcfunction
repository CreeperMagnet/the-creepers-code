# Modifies the entity

data modify entity @s item.tag.CustomModelData set value 330003
data modify entity @s item.tag.tcc.owner set from entity @p[advancements={tcc:technical/item_used_on_block/fill_positional_anchor=true}] UUID
tag @s add tcc.positional_anchor.filled