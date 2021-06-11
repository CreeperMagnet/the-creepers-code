############################################################
# Description: Gobblerift hurt sound and other effects
# Creator: CreeperMagnet_
############################################################

execute store result entity @s HandItems[0].tag.CustomModelData int -1 run data get entity @s HandItems[0].tag.CustomModelData -1.0000000001
tag @s add tcc.gobblerift.hurt
execute if entity @s[nbt=!{HandItems:[{tag:{tcc:{gobblerift_break_state:2}}}]},tag=!tcc.silent] run playsound tcc:block.gobblerift.hurt block @a[distance=..16]
execute if entity @p[advancements={tcc:technical/block/gobblerift/hurt=true},predicate=tcc:holding/gobblerift_instamine] run function tcc:block/gobblerift/break
execute if entity @s[nbt={HandItems:[{tag:{tcc:{gobblerift_break_state:2}}}]}] run function tcc:block/gobblerift/break
execute if entity @s[nbt={HandItems:[{tag:{tcc:{gobblerift_break_state:1}}}]}] run data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 2
execute if entity @s[nbt={HandItems:[{tag:{tcc:{gobblerift_break_state:0}}}]}] run data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 1