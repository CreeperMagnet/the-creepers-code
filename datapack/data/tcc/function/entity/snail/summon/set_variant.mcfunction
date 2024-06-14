# Sets the variant for the snail

tag @s remove tcc.tag
tag @s[predicate=!tcc:random_chance/0.33] add tcc.tag
execute if entity @s[tag=tcc.tag] if predicate tcc:random_chance/0.5 run function tcc:entity/snail/summon/set_variant/black
execute if entity @s[tag=!tcc.tag] run function tcc:entity/snail/summon/set_variant/special
execute if predicate tcc:random_chance/0.05 run function tcc:entity/snail/summon/set_variant/light_blue
execute if biome ~ ~ ~ #tcc:spawns_skull_snails run function tcc:entity/snail/summon/set_variant/skull
tag @s remove tcc.tag
