############################################################
# Gives the proper tea effect
############################################################

execute unless entity @s[advancements={tcc:technical/consume_item/tea={antitoxin=false,antitoxin_extended=false}}] unless entity @s[tag=tcc.tea.antitoxin,scores={tcc.tea=301..}] run function tcc:item/tea/drink/antitoxin
execute unless entity @s[advancements={tcc:technical/consume_item/tea={clearsight=false,clearsight_extended=false}}] unless entity @s[tag=tcc.tea.clearsight,scores={tcc.tea=301..}] run function tcc:item/tea/drink/clearsight
execute unless entity @s[advancements={tcc:technical/consume_item/tea={obscurity=false,obscurity_extended=false}}] unless entity @s[tag=tcc.tea.obscurity,scores={tcc.tea=301..}] run function tcc:item/tea/drink/obscurity
execute unless entity @s[advancements={tcc:technical/consume_item/tea={plenty=false,plenty_extended=false}}] unless entity @s[tag=tcc.tea.plenty,scores={tcc.tea=301..}] run function tcc:item/tea/drink/plenty
execute unless entity @s[advancements={tcc:technical/consume_item/tea={purity=false,purity_extended=false}}] unless entity @s[tag=tcc.tea.purity,scores={tcc.tea=301..}] run function tcc:item/tea/drink/purity
execute unless entity @s[advancements={tcc:technical/consume_item/tea={serendipity=false,serendipity_extended=false}}] unless entity @s[tag=tcc.tea.serendipity,scores={tcc.tea=301..}] run function tcc:item/tea/drink/serendipity
execute unless entity @s[advancements={tcc:technical/consume_item/tea={stability=false,stability_extended=false}}] unless entity @s[tag=tcc.tea.stability,scores={tcc.tea=301..}] run function tcc:item/tea/drink/stability
execute unless entity @s[advancements={tcc:technical/consume_item/tea={steadiness=false,steadiness_extended=false}}] unless entity @s[tag=tcc.tea.steadiness,scores={tcc.tea=301..}] run function tcc:item/tea/drink/steadiness
execute unless entity @s[advancements={tcc:technical/consume_item/tea={vigor=false,vigor_extended=false}}] unless entity @s[tag=tcc.tea.vigor,scores={tcc.tea=301..}] run function tcc:item/tea/drink/vigor
execute unless entity @s[advancements={tcc:technical/consume_item/tea={vitality=false,vitality_extended=false}}] unless entity @s[tag=tcc.tea.vitality,scores={tcc.tea=301..}] run function tcc:item/tea/drink/vitality
execute unless entity @s[advancements={tcc:technical/consume_item/tea={vivacity=false,vivacity_extended=false}}] unless entity @s[tag=tcc.tea.vivacity,scores={tcc.tea=301..}] run function tcc:item/tea/drink/vivacity

execute unless entity @s[advancements={tcc:technical/consume_item/tea={antitoxin_extended=false,clearsight_extended=false,obscurity_extended=false,plenty_extended=false,purity_extended=false,serendipity_extended=false,stability_extended=false,steadiness_extended=false,vigor_extended=false,vitality_extended=false,vivacity_extended=false}}] run scoreboard players set @s tcc.tea 450

function tcc:item/tea/clear/main

advancement revoke @s only tcc:technical/consume_item/tea