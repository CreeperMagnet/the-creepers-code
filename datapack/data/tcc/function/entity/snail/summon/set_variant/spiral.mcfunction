# Sets a snail variant's tags

function tcc:entity/snail/summon/set_variant/remove_tags
tag @s add tcc.snail.spiral
data modify entity @s ArmorItems[3].components."minecraft:custom_data".tcc.custom_model_data.idle set value 330082
data modify entity @s HandItems[0].components."minecraft:custom_model_data" set value 330082
