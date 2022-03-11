############################################################
# Functions to run off of brewing stand markers every tick
############################################################

execute unless predicate tcc:block/brewing_stand_force/any run scoreboard players reset @s tcc.dummy2
execute if predicate tcc:block/brewing_stand_force/any run function tcc:block/brewing_stand/brewing/increase_state
