############################################################
# Description: Code to run when amethyst ring is equipped
# Creator: CreeperMagnet_
############################################################

tag @s[predicate=tcc:holding/amethyst_ring/pristine] add tcc.has_pristine_amethyst_ring
tag @s add tcc.has_amethyst_ring
advancement revoke @s only tcc:technical/item/rings/amethyst_gemstone/equip_ring
