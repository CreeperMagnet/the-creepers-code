# Macro for tea effect

$execute unless entity @s[tag=tcc.tea.$(id),scores={tcc.tea=$(duration)..}] run scoreboard players set @s tcc.tea $(duration)

function tcc:item/tea/clear_tags
$tag @s add tcc.tea.$(id)
