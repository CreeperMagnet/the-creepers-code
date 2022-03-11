############################################################
# Ends the tea effect
############################################################

advancement revoke @s only tcc:technical/multiple_trigger_types/clear_tea_effect
scoreboard players reset @s tcc.tea
execute if entity @s[tag=tcc.tea.antitoxin] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.antitoxin_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.clearsight] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.clearsight_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.obscurity] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.obscurity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.plenty] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.plenty_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.purity] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.purity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.serendipity] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.serendipity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.stability] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.stability_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.vigor] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vigor_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.vitality] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vitality_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.vivacity] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vivacity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
execute if entity @s[tag=tcc.tea.steadiness] run title @s actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.steadiness_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
function tcc:item/tea/drink/clear_tags