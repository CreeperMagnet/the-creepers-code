# Sets a snail variant's tags

function tcc:entity/snail/summon/set_variant/remove_tags
tag @s add tcc.snail.spiral
data modify entity @s ArmorItems[2].components."minecraft:custom_model_data".strings[0] set value "spiral"