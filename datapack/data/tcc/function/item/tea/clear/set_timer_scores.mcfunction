# Sets the scoreboards for the timer

scoreboard players reset #temp_0 tcc.dummy
scoreboard players reset #temp_1 tcc.dummy
scoreboard players reset #temp_2 tcc.dummy

scoreboard players operation #temp_0 tcc.dummy = @s tcc.tea
scoreboard players operation #temp_1 tcc.dummy = @s tcc.tea

# Divide into minutes
scoreboard players operation #temp_0 tcc.dummy /= #60 tcc.dummy

# Get remainder as seconds
scoreboard players operation #temp_1 tcc.dummy %= #60 tcc.dummy

# Divide remainder into 10ths
scoreboard players operation #temp_2 tcc.dummy = #temp_1 tcc.dummy

scoreboard players operation #temp_1 tcc.dummy /= #10 tcc.dummy
scoreboard players operation #temp_2 tcc.dummy %= #10 tcc.dummy

execute if entity @s[tag=tcc.tea.antitoxin] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.antitoxin_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.clearsight] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.clearsight_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.illumination] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.illumination_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.obscurity] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.obscurity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.plenty] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.plenty_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.purity] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.purity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.serendipity] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.serendipity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.stability] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.stability_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.steadiness] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.steadiness_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.vigor] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vigor_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.vitality] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vitality_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.vivacity] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.vivacity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.salubrity] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.salubrity_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.sealing] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.sealing_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.stillness] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.stillness_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}
execute if entity @s[tag=tcc.tea.untangling] run title @s actionbar {"translate":"potion.withDuration","with":[{"translate":"item.tcc.untangling_tea.title","font":"tcc:tea"},{"translate":"potion.tcc.duration","with":["0",{"score":{"name":"#temp_0","objective":"tcc.dummy"}},{"score":{"name":"#temp_1","objective":"tcc.dummy"}},{"score":{"name":"#temp_2","objective":"tcc.dummy"}}]}]}