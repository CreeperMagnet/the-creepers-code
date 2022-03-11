############################################################
# Gives you the tag for a tea
############################################################

function tcc:item/tea/drink/clear_tags
scoreboard players set @s tcc.tea 300
tag @s add tcc.tea.stability