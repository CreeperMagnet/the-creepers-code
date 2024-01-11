# Sets a snail variant's tags

function tcc:entity/snail/summon/set_variant/remove_tags
tag @s add tcc.snail.gary
data modify entity @s ArmorItems[3].tag.tcc.custom_model_data.idle set value 330076
data modify entity @s HandItems[0].tag.CustomModelData set value 330076
