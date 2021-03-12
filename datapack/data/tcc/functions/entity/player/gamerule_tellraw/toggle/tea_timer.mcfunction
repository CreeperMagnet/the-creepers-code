############################################################
# Description: Toggles the alwaysShowTeaTimer gamerule
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.alwaysShowTeaTimer
execute if entity @s[scores={tcc.dummy=..0}] run function tcc:commands/gamerules/always_show_tea_timer/true
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:commands/gamerules/always_show_tea_timer/false
function tcc:entity/player/gamerule_tellraw/menu
