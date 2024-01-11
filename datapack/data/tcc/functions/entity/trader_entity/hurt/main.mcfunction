# Creates hurt color and noises

execute if entity @s[nbt={HurtTime:9s}] run function tcc:entity/trader_entity/hurt/9s
execute store result entity @s HandItems[0].tag.CustomModelData int -1 run data get entity @s HandItems[0].tag.CustomModelData -1.0000000001
execute store result entity @s[tag=!tcc.trader_entity.no_head] ArmorItems[3].tag.CustomModelData int -1 run data get entity @s ArmorItems[3].tag.CustomModelData -1.0000000001
