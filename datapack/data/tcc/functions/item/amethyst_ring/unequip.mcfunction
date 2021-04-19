############################################################
# Description: Code to run when amethyst ring is equipped
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.has_pristine_amethyst_ring
tag @s remove tcc.has_amethyst_ring
advancement revoke @s only tcc:technical/item/rings/amethyst_gemstone/unequip_ring
