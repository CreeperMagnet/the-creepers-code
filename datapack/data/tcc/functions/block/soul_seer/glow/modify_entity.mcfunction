############################################################
# Modifies the entity
############################################################

data modify entity @s item.tag.CustomModelData set value 330005
scoreboard players set @s tcc.dummy2 200
particle sculk_soul ~ ~-0.5 ~ 0.15 0 0.15 0.01 10 force
effect give @e[distance=0.1..24,tag=!smithed.strict,tag=!smithed.block,tag=!tcc.cannot_glow] glowing 10 0 true
data merge entity @s {brightness:{sky:15,block:7}}
tag @s add tcc.glow_in_the_dark
playsound tcc:block.soul_seer.emanate block @a[distance=..24] ~ ~ ~ 2 1 1
setblock ~ ~-1 ~ deepslate_bricks
setblock ~ ~-1 ~ dropper[facing=down,triggered=false]{CustomName:'{"font":"tcc:technical","translate":"block.tcc.soul_seer.name"}',Lock:"§soul_seer_on\\uF001"}