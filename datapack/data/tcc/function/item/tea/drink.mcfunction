# Gives the proper tea effect

execute if entity @s[advancements={tcc:technical/consume_item/tea={extended=false}}] run function tcc:item/tea/clear_tags

execute if entity @s[advancements={tcc:technical/consume_item/tea={extended=false}}] run scoreboard players set @s tcc.tea 300
execute if entity @s[advancements={tcc:technical/consume_item/tea={extended=true}}] run scoreboard players set @s tcc.tea 450
execute if entity @s[advancements={tcc:technical/consume_item/tea={antitoxin=true}}] run tag @s add tcc.tea.antitoxin
execute if entity @s[advancements={tcc:technical/consume_item/tea={clearsight=true}}] run tag @s add tcc.tea.clearsight
execute if entity @s[advancements={tcc:technical/consume_item/tea={illumination=true}}] run tag @s add tcc.tea.illumination
execute if entity @s[advancements={tcc:technical/consume_item/tea={obscurity=true}}] run tag @s add tcc.tea.obscurity
execute if entity @s[advancements={tcc:technical/consume_item/tea={plenty=true}}] run tag @s add tcc.tea.plenty
execute if entity @s[advancements={tcc:technical/consume_item/tea={purity=true}}] run tag @s add tcc.tea.purity
execute if entity @s[advancements={tcc:technical/consume_item/tea={serendipity=true}}] run tag @s add tcc.tea.serendipity
execute if entity @s[advancements={tcc:technical/consume_item/tea={stability=true}}] run tag @s add tcc.tea.stability
execute if entity @s[advancements={tcc:technical/consume_item/tea={steadiness=true}}] run tag @s add tcc.tea.steadiness
execute if entity @s[advancements={tcc:technical/consume_item/tea={vigor=true}}] run tag @s add tcc.tea.vigor
execute if entity @s[advancements={tcc:technical/consume_item/tea={vitality=true}}] run tag @s add tcc.tea.vitality
execute if entity @s[advancements={tcc:technical/consume_item/tea={vivacity=true}}] run tag @s add tcc.tea.vivacity
execute if entity @s[advancements={tcc:technical/consume_item/tea={salubrity=true}}] run tag @s add tcc.tea.salubrity
execute if entity @s[advancements={tcc:technical/consume_item/tea={sealing=true}}] run tag @s add tcc.tea.sealing
execute if entity @s[advancements={tcc:technical/consume_item/tea={stillness=true}}] run tag @s add tcc.tea.stillness
execute if entity @s[advancements={tcc:technical/consume_item/tea={untangling=true}}] run tag @s add tcc.tea.untangling

function tcc:item/tea/clear/main

advancement revoke @s only tcc:technical/consume_item/tea