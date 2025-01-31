# Only runs when you get health boost during cursed crown cooldown

data remove storage tcc:temp root.macro_input
# The tcc.dummy value is provided by the parent function
execute store result storage tcc:temp root.macro_input.value int 1 run scoreboard players remove @s tcc.dummy 2
data modify storage tcc:temp root.macro_input.operation set value "add"
function tcc:item/cursed_crown/absorption/add_to_absorption with storage tcc:temp root.macro_input
