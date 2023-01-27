############################################################
# Golden chorus fruit commands
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_chorus_fruit

execute if data storage tcc:storage root.gamerules{reducedGoldenChorusFruitSpread:0b} run spreadplayers ~ ~ 1 2000 false @s[predicate=!tcc:location/dimension/the_nether]
execute if data storage tcc:storage root.gamerules{reducedGoldenChorusFruitSpread:0b} run spreadplayers ~ ~ 1 2000 under 127 false @s[predicate=tcc:location/dimension/the_nether]
execute if data storage tcc:storage root.gamerules{reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 1 200 false @s[predicate=!tcc:location/dimension/the_nether]
execute if data storage tcc:storage root.gamerules{reducedGoldenChorusFruitSpread:1b} run spreadplayers ~ ~ 1 200 under 127 false @s[predicate=tcc:location/dimension/the_nether]

tp @s[name=dragoncommands] ~ ~500 ~
