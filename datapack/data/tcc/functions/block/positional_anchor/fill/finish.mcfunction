############################################################
# Fills a positional anchor
############################################################

execute as @e[type=item_display,distance=..0.0001,tag=tcc.positional_anchor,tag=!tcc.positional_anchor.filled,limit=1] run function tcc:block/positional_anchor/fill/modify_entity
execute if block ~ ~-1 ~ dropper[triggered=true] run tag @s add tcc.tag
setblock ~ ~-1 ~ stone
execute if entity @s[tag=tcc.tag] run setblock ~ ~-1 ~ dropper[facing=down,triggered=true]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor_filled\\uF001"}
execute if entity @s[tag=!tcc.tag] run setblock ~ ~-1 ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"§positional_anchor_filled\\uF001"}
playsound tcc:block.positional_anchor.fill block @a[distance=..16]
tag @s remove tcc.tag
