############################################################
# Description: Ends the tea effect
# Creator: CreeperMagnet_
############################################################

advancement revoke @s only tcc:technical/item/tea/tea_effect_remove
scoreboard players reset @s tcc.tea
title @s[tag=tcc.tea.antitoxin] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.antitoxin_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.clearsight] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.clearsight_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.obscurity] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.obscurity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.plenty] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.plenty_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.purity] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.purity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.serendipity] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.serendipity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.stability] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.stability_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.vigor] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vigor_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.vitality] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vitality_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.vivacity] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.vivacity_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
title @s[tag=tcc.tea.steadiness] actionbar {"translate":"potion.withDuration","color":"red","with":[{"translate":"item.tcc.steadiness_tea.title","color":"white","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[0,0,0]}]}
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
