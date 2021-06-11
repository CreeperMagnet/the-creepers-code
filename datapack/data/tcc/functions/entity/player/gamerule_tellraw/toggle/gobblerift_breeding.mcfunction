############################################################
# Description: Toggles the ignoreGobbleriftMeatNBT gamerule
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.doGobbleriftBreeding
execute if entity @s[scores={tcc.dummy=..0}] run data modify storage tcc:storage root.gamerules.doGobbleriftBreeding set value 1b
execute if entity @s[scores={tcc.dummy=1..}] run data modify storage tcc:storage root.gamerules.doGobbleriftBreeding set value 0b
function tcc:entity/player/gamerule_tellraw/menu
