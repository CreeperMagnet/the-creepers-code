# Breaks the gobblerift

data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.id int 1 run scoreboard players get @s tcc.dummy
function tcc:block/gobblerift/array_management/remove with storage tcc:temp root.macro_input
kill @s
