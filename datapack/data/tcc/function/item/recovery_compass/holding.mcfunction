# Commands to run while you are holding the recovery compass

data remove storage tcc:temp root
data modify storage tcc:temp root.macro_input.UUID set from entity @s UUID
execute store result storage tcc:temp root.macro_input.score int 1 run scoreboard players get @s tcc.deaths
function tcc:item/recovery_compass/edit_items_macro with storage tcc:temp root.macro_input
