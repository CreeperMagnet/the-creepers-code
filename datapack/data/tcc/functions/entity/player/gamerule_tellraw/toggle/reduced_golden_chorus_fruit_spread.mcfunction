# Toggles the reducedGoldenChorusFruitSpread gamerule

execute store result score @s tcc.dummy run data get storage tcc:gamerules reducedGoldenChorusFruitSpread
execute if entity @s[scores={tcc.dummy=..0}] run data modify storage tcc:gamerules reducedGoldenChorusFruitSpread set value 1b
execute if entity @s[scores={tcc.dummy=1..}] run data modify storage tcc:gamerules reducedGoldenChorusFruitSpread set value 0b
function tcc:entity/player/gamerule_tellraw/menu
