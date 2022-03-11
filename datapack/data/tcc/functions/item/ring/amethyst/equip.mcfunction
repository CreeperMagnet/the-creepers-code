############################################################
# Code to run when amethyst ring is equipped
############################################################

tag @s[predicate=tcc:entity/holding/ring/netherite] add tcc.has_netherite_amethyst_ring
tag @s add tcc.has_amethyst_ring
advancement revoke @s only tcc:technical/inventory_changed/amethyst_ring/equip
