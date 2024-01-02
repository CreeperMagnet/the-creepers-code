############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ hopper[facing=north] run return run setblock ~ ~ ~ hopper[facing=east]
execute if block ~ ~ ~ hopper[facing=south] run return run setblock ~ ~ ~ hopper[facing=west]
execute if block ~ ~ ~ hopper[facing=east] run return run setblock ~ ~ ~ hopper[facing=south]
execute if block ~ ~ ~ hopper[facing=west] run return run setblock ~ ~ ~ hopper[facing=down]
execute if block ~ ~ ~ hopper[facing=down] run return run setblock ~ ~ ~ hopper[facing=north]