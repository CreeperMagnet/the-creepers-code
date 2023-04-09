############################################################
# Functions to run tickly off of ice, I guess.
############################################################

execute unless block ~ ~-1 ~ #tcc:air run function tcc:entity/iceologer/ice/land
execute positioned ~-0.5 ~ ~-0.5 if entity @e[dx=0,tag=!tcc.iceologer,tag=!smithed.strict] run function tcc:entity/iceologer/ice/damage