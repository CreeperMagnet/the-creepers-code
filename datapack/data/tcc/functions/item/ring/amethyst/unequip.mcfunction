############################################################
# Code to run when amethyst ring is equipped
############################################################

tag @s remove tcc.has_netherite_amethyst_ring
tag @s remove tcc.has_amethyst_ring
advancement revoke @s only tcc:technical/inventory_changed/amethyst_ring/unequip
