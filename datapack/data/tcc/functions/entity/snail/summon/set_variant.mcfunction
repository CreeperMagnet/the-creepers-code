############################################################
# Sets the variant for the snail
############################################################

tag @s remove tcc.tag
tag @s[predicate=!tcc:chance/one_third] add tcc.tag
execute if entity @s[tag=tcc.tag] if predicate tcc:chance/one_half run function tcc:entity/snail/summon/set_variant/black
execute if entity @s[tag=!tcc.tag] run function tcc:entity/snail/summon/set_variant/special
execute if biome ~ ~ ~ #tcc:spawns_skull_snails run function tcc:entity/snail/summon/set_variant/skull
execute if predicate tcc:chance/one_twentieth run function tcc:entity/snail/summon/set_variant/light_blue
tag @s remove tcc.tag
