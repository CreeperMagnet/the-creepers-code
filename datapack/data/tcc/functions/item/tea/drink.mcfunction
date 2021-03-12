############################################################
# Description: Makes teas drop teacups, rather than glass bottles. Yikes.
# Creator: CreeperMagnet_
############################################################

tag @s add tcc.scheduled.tea_replace
schedule function tcc:item/tea/scheduled_replace 1t append
advancement revoke @s only tcc:technical/item/tea/drink
