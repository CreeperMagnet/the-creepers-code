# Heals the player based on a score provided

execute store result score @s tcc.dummy run attribute @s minecraft:max_health get 10
execute store result score @s tcc.dummy2 run data get entity @s Health 10
scoreboard players operation @s tcc.dummy -= @s tcc.dummy2
$scoreboard players remove @s tcc.dummy $(amount)

data remove storage tcc:temp root.macro_input
execute store result storage tcc:temp root.macro_input.amount float 0.1 run scoreboard players get @s tcc.dummy
function tcc:entity/player/heal/apply_attribute_macro with storage tcc:temp root.macro_input

effect give @s minecraft:instant_health 1 24 true

tag @s add tcc.scheduled.remove_attributes
schedule function tcc:entity/player/heal/remove_attributes/scheduled 2t replace