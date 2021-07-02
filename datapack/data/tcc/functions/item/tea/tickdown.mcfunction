############################################################
# Description: Ticks down the tea effect
# Creator: CreeperMagnet_
############################################################

scoreboard players remove @s tcc.tea 1
execute if entity @s[scores={tcc.tea=0}] run function tcc:item/tea/stop
data modify storage abcl:storage temp.message set value {Message: "", Priority: 100}
execute if entity @s[tag=!global.ignore.gui] if data storage tcc:storage root.gamerules{alwaysShowTeaTimer:1b} run function tcc:item/tea/clear/set_timer_scores