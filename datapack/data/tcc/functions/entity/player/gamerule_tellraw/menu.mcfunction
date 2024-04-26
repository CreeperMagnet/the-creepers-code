# Tellraw menu for toggling TCC gamerules

execute store result score #temp_0 tcc.dummy run data get storage tcc:gamerules alwaysShowTeaTimer
execute store result score #temp_1 tcc.dummy run data get storage tcc:gamerules reducedGoldenChorusFruitSpread

tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"translate":"chat.tcc.gamerules.title", "bold":true, "color":"#008725"},"\n"]

execute unless score #temp_0 tcc.dummy matches 1.. run tellraw @s [{"translate":"chat.tcc.gamerules.tea_timer", "color":"#007acc", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.tcc.gamerules.tea_timer.description"},"\n",{"translate":"chat.tcc.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.tcc.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function tcc:entity/player/gamerule_tellraw/toggle/tea_timer"}}]
execute if score #temp_0 tcc.dummy matches 1.. run tellraw @s [{"translate":"chat.tcc.gamerules.tea_timer", "color":"#007acc", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.tcc.gamerules.tea_timer.description"},"\n",{"translate":"chat.tcc.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.tcc.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function tcc:entity/player/gamerule_tellraw/toggle/tea_timer"}}]

execute unless score #temp_1 tcc.dummy matches 1.. run tellraw @s [{"translate":"chat.tcc.gamerules.reduced_golden_chorus_fruit_spread", "color":"#007acc", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.tcc.gamerules.reduced_golden_chorus_fruit_spread.description"},"\n",{"translate":"chat.tcc.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.tcc.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function tcc:entity/player/gamerule_tellraw/toggle/reduced_golden_chorus_fruit_spread"}}]
execute if score #temp_1 tcc.dummy matches 1.. run tellraw @s [{"translate":"chat.tcc.gamerules.reduced_golden_chorus_fruit_spread", "color":"#007acc", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.tcc.gamerules.reduced_golden_chorus_fruit_spread.description"},"\n",{"translate":"chat.tcc.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.tcc.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function tcc:entity/player/gamerule_tellraw/toggle/reduced_golden_chorus_fruit_spread"}}]

tellraw @s ""
