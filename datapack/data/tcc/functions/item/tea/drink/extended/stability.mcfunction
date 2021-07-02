############################################################
# Description: Gives you the tag for a tea
# Creator: CreeperMagnet_
############################################################

function tcc:item/tea/drink/clear_tags
scoreboard players set @s tcc.tea 450
tag @s add tcc.tea.stability
function tcc:item/tea/clear/main
advancement revoke @s only tcc:technical/item/tea/drink/extended/stability
