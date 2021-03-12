############################################################
# Description: Golden chorus fruit commands
# Creator: Nexus
############################################################

advancement revoke @s only tcc:technical/item/golden_chorus_fruit

spreadplayers ~ ~ 500 2000 false @s[predicate=!tcc:dimension/the_nether]
spreadplayers ~ ~ 500 2000 under 127 false @s[predicate=tcc:dimension/the_nether]

tp @s[name=dragoncommands] ~ ~500 ~
