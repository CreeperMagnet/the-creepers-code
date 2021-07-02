############################################################
# Description: Clears a negative effect from you when you get it if you have the proper tags
# Creator: CreeperMagnet_
############################################################

data modify storage abcl:storage temp.message set value {Message: "", Priority: 1}
effect clear @s[advancements={tcc:technical/item/tea/clear={antitoxin=true}}] minecraft:poison
effect clear @s[advancements={tcc:technical/item/tea/clear={clearsight=true}}] minecraft:blindness
effect clear @s[advancements={tcc:technical/item/tea/clear={obscurity=true}}] minecraft:glowing
effect clear @s[advancements={tcc:technical/item/tea/clear={plenty=true}}] minecraft:hunger
effect clear @s[advancements={tcc:technical/item/tea/clear={purity=true}}] minecraft:wither
effect clear @s[advancements={tcc:technical/item/tea/clear={serendipity=true}}] minecraft:unluck
effect clear @s[advancements={tcc:technical/item/tea/clear={stability=true}}] minecraft:levitation
effect clear @s[advancements={tcc:technical/item/tea/clear={steadiness=true}}] minecraft:nausea
effect clear @s[advancements={tcc:technical/item/tea/clear={vigor=true}}] minecraft:weakness
effect clear @s[advancements={tcc:technical/item/tea/clear={vitality=true}}] minecraft:mining_fatigue
effect clear @s[advancements={tcc:technical/item/tea/clear={vivacity=true}}] minecraft:slowness
execute if entity @s[tag=!global.ignore.gui] run function tcc:item/tea/clear/set_timer_scores
advancement revoke @s only tcc:technical/item/tea/clear
