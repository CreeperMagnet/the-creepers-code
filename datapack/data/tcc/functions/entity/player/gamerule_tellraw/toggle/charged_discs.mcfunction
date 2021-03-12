############################################################
# Description: Toggles the doChargedDiscs gamerule
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.doChargedDiscs
execute if entity @s[scores={tcc.dummy=..0}] run function tcc:commands/gamerules/do_charged_discs/true
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:commands/gamerules/do_charged_discs/false
function tcc:entity/player/gamerule_tellraw/menu
