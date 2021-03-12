############################################################
# Description: Commands to run every ten seconds
# Creator: CreeperMagnet_
############################################################

effect give @s minecraft:invisibility 1000000 0 true
scoreboard players add @s[predicate=!tcc:chance/one_tenth,tag=!tcc.gobblerift.open_state] tcc.dummy2 1
data modify entity @s HandItems[0].tag.tcc.gobblerift_break_state set value 0
execute if entity @s[scores={tcc.dummy2=75..},tag=!tcc.gobblerift.open_state,tag=!tcc.gobblerift.juicing] run function tcc:block/gobblerift/grow
execute if entity @s[scores={tcc.dummy2=30..},tag=!tcc.gobblerift.open_state,tag=tcc.gobblerift.juicing] run function tcc:block/gobblerift/grow