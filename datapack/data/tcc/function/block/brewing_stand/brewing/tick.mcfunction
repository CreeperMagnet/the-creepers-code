# Functions to run off of brewing stand markers every tick

execute unless items block ~ ~ ~ container.3 * run return fail
execute unless predicate tcc:location_check/custom_potion_brewing_stand run return run scoreboard players reset @s tcc.dummy2
function tcc:block/brewing_stand/brewing/increase_state
