############################################################
# Breaks the gobblerift
############################################################

data remove storage tcc:storage root.temp.macro_input
execute store result storage tcc:storage root.temp.macro_input.id int 1 run scoreboard players get @s tcc.dummy
function tcc:block/gobblerift/array_management/remove with storage tcc:storage root.temp.macro_input
kill @s
