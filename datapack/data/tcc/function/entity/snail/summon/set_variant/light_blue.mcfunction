# Sets a snail variant's tags

function tcc:entity/snail/summon/set_variant/remove_tags
tag @s add tcc.snail.light_blue
data modify entity @s equipment.chest.components."minecraft:custom_model_data".strings[0] set value "light_blue"
data remove entity @s Offers.Recipes