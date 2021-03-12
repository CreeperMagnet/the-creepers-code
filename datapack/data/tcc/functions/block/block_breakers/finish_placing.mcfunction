############################################################
# Description: Finishes placing a block breaker
# Creator: CreeperMagnet_
############################################################

function tcc:block/block_breakers/set_enchantments

execute if entity @s[tag=tcc.block_breaker.north] run setblock ~ ~ ~ dropper[facing=south]
execute if entity @s[tag=tcc.block_breaker.south] run setblock ~ ~ ~ dropper[facing=north]
execute if entity @s[tag=tcc.block_breaker.east] run setblock ~ ~ ~ dropper[facing=west]
execute if entity @s[tag=tcc.block_breaker.west] run setblock ~ ~ ~ dropper[facing=east]
execute if entity @s[tag=tcc.block_breaker.up] run setblock ~ ~ ~ dropper[facing=down]
execute if entity @s[tag=tcc.block_breaker.down] run setblock ~ ~ ~ dropper[facing=up]

execute if entity @s[tag=tcc.chopper] run data modify block ~ ~ ~ CustomName set value '{"translate":"block.tcc.chopper"}'
execute if entity @s[tag=tcc.excavator] run data modify block ~ ~ ~ CustomName set value '{"translate":"block.tcc.excavator"}'
execute if entity @s[tag=tcc.harvester] run data modify block ~ ~ ~ CustomName set value '{"translate":"block.tcc.harvester"}'
execute if entity @s[tag=tcc.sifter] run data modify block ~ ~ ~ CustomName set value '{"translate":"block.tcc.sifter"}'
execute if entity @s[tag=tcc.snipper] run data modify block ~ ~ ~ CustomName set value '{"translate":"block.tcc.snipper"}'

tag @s remove tcc.block_placing