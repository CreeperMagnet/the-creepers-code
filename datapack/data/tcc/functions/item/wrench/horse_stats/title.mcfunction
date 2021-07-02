############################################################
# Description: Makes wrench horse stats work
# Creator: CreeperMagnet_
############################################################
execute store result score @s tcc.dummy run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1000
execute store result score @s tcc.dummy2 run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 1000
data modify storage abcl:storage temp.message set value {Message: '{"translate":"item.tcc.wrench.horse_stats","with":[{"score":{"name":"@s","objective":"tcc.dummy"}},{"score":{"name":"@s","objective":"tcc.dummy2"}}]}', Priority: 1}
execute as @p[tag=tcc.wrench_raycaster,tag=!global.ignore.gui] run function abcl:message/check
scoreboard players reset @s tcc.dummy
scoreboard players reset @s tcc.dummy2
