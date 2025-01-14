# Fills a positional anchor

execute as @n[type=minecraft:item_display,distance=..0.0001,tag=tcc.positional_anchor,tag=!tcc.positional_anchor.filled] run function tcc:block/positional_anchor/fill/modify_entity
execute if block ~ ~-1 ~ minecraft:dropper[triggered=true] run tag @s add tcc.tag
setblock ~ ~-1 ~ minecraft:stone
execute if entity @s[tag=tcc.tag] run setblock ~ ~-1 ~ minecraft:dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',lock:{components:{"minecraft:custom_data":{tcc:{positional_anchor_filled:1b}}}}}
execute if entity @s[tag=!tcc.tag] run setblock ~ ~-1 ~ minecraft:dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',lock:{components:{"minecraft:custom_data":{tcc:{positional_anchor_filled:1b}}}}}
playsound tcc:block.positional_anchor.fill block @a[distance=..16]
tag @s remove tcc.tag
