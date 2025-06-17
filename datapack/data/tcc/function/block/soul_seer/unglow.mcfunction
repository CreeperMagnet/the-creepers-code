# Commands to run when the glow block stops glowing

function tcc:block/soul_seer/remove_items/main
scoreboard players reset @s tcc.dummy2
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false
execute unless block ~ ~1 ~ minecraft:tinted_glass run playsound tcc:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 1 0.5 1
execute if block ~ ~1 ~ minecraft:tinted_glass run playsound tcc:block.soul_seer.emanate block @a[distance=..6] ~ ~ ~ 0.2 0.5 1
data modify entity @s item.components."minecraft:custom_data".comparator set value 0

tag @s remove tcc.tag
execute if block ~ ~ ~ minecraft:dropper[triggered=true] run tag @s add tcc.tag
setblock ~ ~ ~ minecraft:cobbled_deepslate
execute if entity @s[tag=tcc.tag] run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]{CustomName:{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"},"components":{"minecraft:custom_data":{"tcc":{block_id:"soul_seer"}}},lock:{components:{"minecraft:custom_data":{tcc:{soul_seer:1b}}}}}
execute if entity @s[tag=!tcc.tag] run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=false]{CustomName:{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"},"components":{"minecraft:custom_data":{"tcc":{block_id:"soul_seer"}}},lock:{components:{"minecraft:custom_data":{tcc:{soul_seer:1b}}}}}