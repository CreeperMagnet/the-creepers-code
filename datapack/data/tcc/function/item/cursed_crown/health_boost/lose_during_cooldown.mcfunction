# Only runs when you lose health boost during cursed crown cooldown

data remove storage tcc:temp root.macro_input
execute store result score #temp_0 tcc.dummy run attribute @s minecraft:max_health base get
scoreboard players remove #temp_0 tcc.dummy 2
execute store result score #temp_1 tcc.dummy run attribute @s minecraft:max_health modifier value get tcc:cursed_crown

execute store result storage tcc:temp root.macro_input.value int -1 run scoreboard players operation #temp_0 tcc.dummy += #temp_1 tcc.dummy
data modify storage tcc:temp root.macro_input.operation set value "remove"

function tcc:item/cursed_crown/absorption/add_to_absorption with storage tcc:temp root.macro_input
