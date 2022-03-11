############################################################
# Golden chorus fruit commands
############################################################

advancement revoke @s only tcc:technical/consume_item/golden_chorus_fruit

spreadplayers ~ ~ 500 2000 false @s[predicate=!tcc:location/dimension/the_nether]
spreadplayers ~ ~ 500 2000 under 127 false @s[predicate=tcc:location/dimension/the_nether]

tp @s[name=dragoncommands] ~ ~500 ~
