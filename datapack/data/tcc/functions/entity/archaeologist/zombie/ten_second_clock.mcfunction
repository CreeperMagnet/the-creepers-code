############################################################
# Checks if the zombie is cured yet
############################################################

execute store result score @s tcc.dummy run data get entity @s ConversionTime
execute if score @s tcc.dummy matches 0..300 run function tcc:entity/archaeologist/zombie/summon_cured
