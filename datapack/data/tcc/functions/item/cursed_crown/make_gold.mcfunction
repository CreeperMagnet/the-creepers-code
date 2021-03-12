############################################################
# Description: Turns a mob drop into GOLDDDD
# Creator: CreeperMagnet_
############################################################
advancement revoke @s only tcc:technical/item/cursed_crown
tag @s add tcc.scheduled.cursed_crown
schedule function tcc:item/cursed_crown/schedule 1t append
