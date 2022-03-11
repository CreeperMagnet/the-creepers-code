############################################################
# Functions to run off of brewing stand markers every second
############################################################

execute store result score @s tcc.dummy run data get block ~ ~ ~ BrewTime
execute if score @s tcc.dummy matches 1..22 run function tcc:block/brewing_stand/brewing/finish