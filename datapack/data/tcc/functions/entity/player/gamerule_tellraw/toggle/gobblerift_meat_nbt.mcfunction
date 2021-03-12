############################################################
# Description: Toggles the ignoreGobbleriftMeatNBT gamerule
# Creator: Ellivers
############################################################

execute store result score @s tcc.dummy run data get storage tcc:storage root.gamerules.ignoreGobbleriftMeatNBT
execute if entity @s[scores={tcc.dummy=..0}] run function tcc:commands/gamerules/ignore_gobblerift_meat_nbt/true
execute if entity @s[scores={tcc.dummy=1..}] run function tcc:commands/gamerules/ignore_gobblerift_meat_nbt/false
function tcc:entity/player/gamerule_tellraw/menu
