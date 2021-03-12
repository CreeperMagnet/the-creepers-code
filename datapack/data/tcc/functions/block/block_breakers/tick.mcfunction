############################################################
# Description: Commands to run tickly for block breakers
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.block_breaker.north,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 180 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.south,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 0 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.east,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 270 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.west,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 90 0 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.up,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 0 -90 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if entity @s[tag=tcc.block_breaker.down,tag=!tcc.block_breakers.powered,tag=!tcc.scheduled.block_breaker] align xz rotated 0 90 if block ~ ~ ~ dropper[triggered=true] positioned ^ ^ ^1 run function tcc:block/block_breakers/discern_power
execute if block ~ ~ ~ dropper[triggered=false] run tag @s remove tcc.block_breakers.powered
execute if block ~ ~ ~ #tcc:air run function tcc:block/block_breakers/discern_break
