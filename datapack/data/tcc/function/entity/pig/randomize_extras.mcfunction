# Sets odds for pigs

summon minecraft:pig ~ ~ ~ {Age:-23999}
execute if predicate tcc:random_chance/0.5 run summon pig ~ ~ ~ {Age:-23999}
