############################################################
# Description: Toggles the ignoreGobbleriftMeatNBT gamerule
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.doGobbleriftBreeding
execute if entity @s[scores={tcc.dummy=..0}] run function tcc:commands/gamerules/do_gobblerift_breeding/true
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:commands/gamerules/do_gobblerift_breeding/false
function tcc:entity/player/gamerule_tellraw/menu
