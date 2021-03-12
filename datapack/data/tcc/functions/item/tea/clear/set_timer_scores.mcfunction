############################################################
# Description: Sets the scoreboards for the timer
# Creator: CreeperMagnet_
############################################################

scoreboard players reset tcc.temp_0 tcc.dummy
scoreboard players reset tcc.temp_1 tcc.dummy
scoreboard players reset tcc.temp_2 tcc.dummy

scoreboard players operation tcc.temp_0 tcc.dummy = @s tcc.tea
scoreboard players operation tcc.temp_1 tcc.dummy = @s tcc.tea

# Divide into minutes
scoreboard players operation tcc.temp_0 tcc.dummy /= tcc.const.60 tcc.dummy

# Get remainder as seconds
scoreboard players operation tcc.temp_1 tcc.dummy %= tcc.const.60 tcc.dummy

# Divide remainder into 10ths
scoreboard players operation tcc.temp_2 tcc.dummy = tcc.temp_1 tcc.dummy

scoreboard players operation tcc.temp_1 tcc.dummy /= tcc.const.10 tcc.dummy
scoreboard players operation tcc.temp_2 tcc.dummy %= tcc.const.10 tcc.dummy

title @s[tag=tcc.tea.antitoxin] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.antitoxin_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.clearsight] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.clearsight_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.obscurity] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.obscurity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.plenty] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.plenty_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.purity] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.purity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.serendipity] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.serendipity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.stability] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.stability_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.steadiness] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.steadiness_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.vigor] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vigor_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.vitality] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vitality_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
title @s[tag=tcc.tea.vivacity] actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vivacity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":[{"score":{"name":"tcc.temp_0","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_1","objective":"tcc.dummy"}},{"score":{"name":"tcc.temp_2","objective":"tcc.dummy"}}]}]}
