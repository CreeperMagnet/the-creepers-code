# Triggers the glowing behavior of soul seer

data modify entity @s item.components."minecraft:custom_model_data" set value 330005
execute unless block ~ ~1 ~ minecraft:tinted_glass run scoreboard players set @s tcc.dummy2 200
execute if block ~ ~1 ~ minecraft:tinted_glass run scoreboard players set @s tcc.dummy2 20
data modify entity @s item.components."minecraft:custom_data".comparator set value 0
data remove storage tcc:temp root
execute if block ~ ~1 ~ minecraft:tinted_glass run data modify storage tcc:temp root.soul_seer_blocked set value 1b
function tcc:block/soul_seer/glow/decode_block
data merge entity @s {brightness:{sky:15,block:7}}
tag @s add tcc.glow_in_the_dark
particle minecraft:sculk_soul ~ ~1 ~ 0.15 0 0.15 0.01 10 force
execute unless block ~ ~1 ~ minecraft:tinted_glass run playsound tcc:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 1 1 1
execute if block ~ ~1 ~ minecraft:tinted_glass run playsound tcc:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 0.2 1 1