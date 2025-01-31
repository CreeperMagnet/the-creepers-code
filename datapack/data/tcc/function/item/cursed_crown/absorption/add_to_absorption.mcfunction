# Sets your absorption health based on the given amount of max health you have

# Get absorption amount
execute store result score #temp_0 tcc.dummy run data get entity @s AbsorptionAmount
attribute @s minecraft:max_health modifier remove tcc:cursed_crown
attribute @s minecraft:max_absorption modifier remove tcc:cursed_crown
data remove storage tcc:temp root.macro_input
execute store result score @s tcc.dummy run attribute @s minecraft:max_health get
execute store result storage tcc:temp root.macro_input.max_health float 1 run scoreboard players remove @s tcc.dummy 2

$scoreboard players $(operation) #temp_0 tcc.dummy $(value)
execute if score #temp_0 tcc.dummy < #0 tcc.dummy run scoreboard players set #temp_0 tcc.dummy 0
execute if score #temp_0 tcc.dummy >= @s tcc.dummy run scoreboard players set @s tcc.cursed_crown_cooldown 0
execute if score #temp_0 tcc.dummy > @s tcc.dummy run scoreboard players operation #temp_0 tcc.dummy = @s tcc.dummy
execute store result storage tcc:temp root.macro_input.max_absorption float 1 run scoreboard players get #temp_0 tcc.dummy

function tcc:item/cursed_crown/absorption/set_attributes_macro with storage tcc:temp root.macro_input

