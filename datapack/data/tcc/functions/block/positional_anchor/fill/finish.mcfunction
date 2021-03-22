############################################################
# Description: Fills a positional anchor
# Creator: Creeper
############################################################

execute as @e[dx=0,dz=0,dy=0,type=armor_stand,tag=tcc.positional_anchor,tag=!tcc.positional_anchor.filled,limit=1] run function tcc:block/positional_anchor/fill/modify_entity
execute if block ~ ~ ~ dropper[triggered=true] run tag @s add tcc.tag
setblock ~ ~ ~ stone
execute if block ~2 ~ ~ comparator[mode=compare,facing=west,powered=false] if block ~1 ~ ~ #tcc:opaque run setblock ~2 ~ ~ comparator[mode=compare,powered=true,facing=west]{OutputSignal:1}
execute if block ~ ~ ~2 comparator[mode=compare,facing=north,powered=false] if block ~ ~ ~1 #tcc:opaque run setblock ~ ~ ~2 comparator[mode=compare,powered=true,facing=north]{OutputSignal:1}
execute if block ~-2 ~ ~ comparator[mode=compare,facing=east,powered=false] if block ~-1 ~ ~ #tcc:opaque run setblock ~-2 ~ ~ comparator[mode=compare,powered=true,facing=east]{OutputSignal:1}
execute if block ~ ~ ~-2 comparator[mode=compare,facing=south,powered=false] if block ~ ~ ~-1 #tcc:opaque run setblock ~ ~ ~-2 comparator[mode=compare,powered=true,facing=south]{OutputSignal:1}
execute if block ~2 ~ ~ comparator[mode=subtract,facing=west,powered=false] if block ~1 ~ ~ #tcc:opaque run setblock ~2 ~ ~ comparator[mode=subtract,powered=true,facing=west]{OutputSignal:1}
execute if block ~ ~ ~2 comparator[mode=subtract,facing=north,powered=false] if block ~ ~ ~1 #tcc:opaque run setblock ~ ~ ~2 comparator[mode=subtract,powered=true,facing=north]{OutputSignal:1}
execute if block ~-2 ~ ~ comparator[mode=subtract,facing=east,powered=false] if block ~-1 ~ ~ #tcc:opaque run setblock ~-2 ~ ~ comparator[mode=subtract,powered=true,facing=east]{OutputSignal:1}
execute if block ~ ~ ~-2 comparator[mode=subtract,facing=south,powered=false] if block ~ ~ ~-1 #tcc:opaque run setblock ~ ~ ~-2 comparator[mode=subtract,powered=true,facing=south]{OutputSignal:1}
execute if entity @s[tag=tcc.tag] run setblock ~ ~ ~ dropper[facing=down,triggered=true]{Items:[{Slot:4b,id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000,tcc:{id:"positional_anchor_item",clear:1b}}}],CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"positional_anchor_filled\\uF001"}
execute if entity @s[tag=!tcc.tag] run setblock ~ ~ ~ dropper[facing=down,triggered=false]{Items:[{Slot:4b,id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000,tcc:{id:"positional_anchor_item",clear:1b}}}],CustomName:'{"font":"tcc:technical","translate":"block.tcc.positional_anchor.name"}',Lock:"positional_anchor_filled\\uF001"}
playsound tcc:block.positional_anchor.fill block @a[distance=..16]
tag @s remove tcc.tag