############################################################
# Rotates a block
############################################################

execute if block ~ ~ ~ hopper[facing=north] run return run setblock ~ ~ ~ hopper[facing=east,enabled=false]
execute if block ~ ~ ~ hopper[facing=south] run return run setblock ~ ~ ~ hopper[facing=west,enabled=false]
execute if block ~ ~ ~ hopper[facing=east] run return run setblock ~ ~ ~ hopper[facing=south,enabled=false]
execute if block ~ ~ ~ hopper[facing=west] run return run setblock ~ ~ ~ hopper[facing=down,enabled=false]
execute if block ~ ~ ~ hopper[facing=down] run return run setblock ~ ~ ~ hopper[facing=north,enabled=false]