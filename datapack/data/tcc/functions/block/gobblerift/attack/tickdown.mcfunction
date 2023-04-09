############################################################
# Commands to run every tick for gobblerifts
############################################################

scoreboard players remove @s tcc.dummy2 1
execute unless entity @s[scores={tcc.dummy2=1..}] store result entity @s item.tag.CustomModelData int 1 run data get entity @s item.tag.CustomModelData 0.9999999999
execute unless entity @s[scores={tcc.dummy2=1..}] on passengers run tag @s remove tcc.gobblerift.hurt
