# Clears a negative effect from you when you get it if you have the proper tags

effect clear @s[tag=tcc.tea.antitoxin] minecraft:poison
effect clear @s[tag=tcc.tea.clearsight] minecraft:blindness
effect clear @s[tag=tcc.tea.illumination] minecraft:darkness
effect clear @s[tag=tcc.tea.obscurity] minecraft:glowing
effect clear @s[tag=tcc.tea.plenty] minecraft:hunger
effect clear @s[tag=tcc.tea.purity] minecraft:wither
effect clear @s[tag=tcc.tea.serendipity] minecraft:unluck
effect clear @s[tag=tcc.tea.stability] minecraft:levitation
effect clear @s[tag=tcc.tea.steadiness] minecraft:nausea
effect clear @s[tag=tcc.tea.vigor] minecraft:weakness
effect clear @s[tag=tcc.tea.vitality] minecraft:mining_fatigue
effect clear @s[tag=tcc.tea.vivacity] minecraft:slowness
function tcc:item/tea/clear/set_timer_scores
advancement revoke @s only tcc:technical/effects_changed/tea_immunity
