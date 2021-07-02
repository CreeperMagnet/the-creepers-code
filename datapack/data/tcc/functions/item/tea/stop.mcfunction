############################################################
# Description: Ends the tea effect
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/tea/tea_effect_remove
scoreboard players reset @s tcc.tea
data modify storage abcl:storage temp.message set value {Message: 0, Priority: 1}
execute as @s[tag=tcc.tea.antitoxin] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.antitoxin_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.clearsight] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.clearsight_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.obscurity] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.obscurity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.plenty] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.plenty_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.purity] run data modify storage abcl:storage temp.messag.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.purity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.serendipity] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.serendipity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.stability] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.stability_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.vigor] run data modify storage abcl:storage temp.messag.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vigor_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.vitality] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vitality_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.vivacity] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vivacity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
execute as @s[tag=tcc.tea.steadiness] run data modify storage abcl:storage temp.message.Message set value '{"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.steadiness_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}'
function abcl:message/check
tag @s remove tcc.tea.antitoxin
tag @s remove tcc.tea.clearsight
tag @s remove tcc.tea.obscurity
tag @s remove tcc.tea.plenty
tag @s remove tcc.tea.purity
tag @s remove tcc.tea.serendipity
tag @s remove tcc.tea.stability
tag @s remove tcc.tea.steadiness
tag @s remove tcc.tea.vigor
tag @s remove tcc.tea.vitality
tag @s remove tcc.tea.vivacity
