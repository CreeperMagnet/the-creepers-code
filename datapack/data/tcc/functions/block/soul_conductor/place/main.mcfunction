############################################################
# Commands to place a soul conductor
############################################################

execute if block ~ ~ ~ dropper[facing=north] run function tcc:block/soul_conductor/place/north
execute if block ~ ~ ~ dropper[facing=east] run function tcc:block/soul_conductor/place/east
execute if block ~ ~ ~ dropper[facing=south] run function tcc:block/soul_conductor/place/south
execute if block ~ ~ ~ dropper[facing=west] run function tcc:block/soul_conductor/place/west
execute if block ~ ~ ~ dropper[facing=up] run function tcc:block/soul_conductor/place/up
execute if block ~ ~ ~ dropper[facing=down] run function tcc:block/soul_conductor/place/down

function tcc:block/hopper_updating/fill
