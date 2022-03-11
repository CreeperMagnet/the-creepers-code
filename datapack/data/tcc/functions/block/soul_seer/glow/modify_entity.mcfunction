############################################################
# Modifies the entity
############################################################

data modify entity @s ArmorItems[3].tag.CustomModelData set value 330005
scoreboard players set @s tcc.dummy2 200
particle soul ~ ~0.5 ~ 0.15 0 0.15 0.01 10 force
effect give @e[distance=0.1..24,tag=!smithed.strict,tag=!smithed.block,tag=!tcc.cannot_glow] glowing 10 0 true
playsound tcc:block.soul_seer.emanate block @a[distance=..24] ~ ~ ~ 2 1 1
data modify block ~ ~ ~ Lock set value "§soul_seer_on\\uF001"