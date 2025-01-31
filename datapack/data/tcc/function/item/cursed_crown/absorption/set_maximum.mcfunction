# Sets your absorption health based on the given amount of max health you have

attribute @s minecraft:max_health modifier remove tcc:cursed_crown
attribute @s minecraft:max_absorption modifier remove tcc:cursed_crown
data remove storage tcc:temp root.macro_input
execute store result score @s tcc.dummy run attribute @s minecraft:max_health get
execute store result storage tcc:temp root.macro_input.max_health float 1 run scoreboard players remove @s tcc.dummy 2
execute store result storage tcc:temp root.macro_input.max_absorption float 1 run scoreboard players get @s tcc.dummy
function tcc:item/cursed_crown/absorption/set_attributes_macro with storage tcc:temp root.macro_input