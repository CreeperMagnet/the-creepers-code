############################################################
# Description: Gives you the tag for a tea
# Creator: CreeperMagnet_
############################################################

execute unless entity @s[tag=tcc.tea.serendipity,scores={tcc.tea=301..}] run function tcc:item/tea/drink/clear_tags
execute unless entity @s[tag=tcc.tea.serendipity,scores={tcc.tea=301..}] run scoreboard players set @s tcc.tea 300
tag @s add tcc.tea.serendipity
function tcc:item/tea/clear/serendipity
advancement revoke @s only tcc:technical/item/tea/drink/serendipity