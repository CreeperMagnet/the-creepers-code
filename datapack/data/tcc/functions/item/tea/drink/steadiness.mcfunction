############################################################
# Description: Gives you the tag for a tea
# Creator: CreeperMagnet_
############################################################

function tcc:item/tea/drink/clear_tags
tag @s add tcc.tea.steadiness
function tcc:item/tea/clear/steadiness
advancement revoke @s only tcc:technical/item/tea/drink/steadiness
