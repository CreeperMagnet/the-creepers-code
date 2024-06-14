# Functions to run tickly off of ice, I guess.

execute unless block ~ ~-1 ~ minecraft:snow[layers=1] unless block ~ ~-1 ~ #tcc:iceologer_ice_ignore run function tcc:entity/iceologer/ice/land
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,tag=!tcc.iceologer,tag=!smithed.strict] run function tcc:entity/iceologer/ice/damage