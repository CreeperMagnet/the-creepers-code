# Sets a snail variant's tags

tag @s[predicate=tcc:random_chance/0.5] add tcc.tag
execute if entity @s[tag=tcc.tag] run function tcc:entity/snail/summon/set_variant/spiral
execute unless entity @s[tag=tcc.tag] run function tcc:entity/snail/summon/set_variant/yellow