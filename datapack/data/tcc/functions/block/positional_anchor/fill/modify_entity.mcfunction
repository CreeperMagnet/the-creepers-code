############################################################
# Description: Modifies the entity
# Creator: Creeper
############################################################

data modify entity @s ArmorItems[3].tag.CustomModelData set value 330033
tag @s add tcc.positional_anchor.filled
data modify entity @s ArmorItems[3].tag.tcc.owner set from entity @p[advancements={tcc:technical/block/fill_positional_anchor=true}] UUID
