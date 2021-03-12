############################################################
# Description: Tells what type of block breaker is powered
# Creator: CreeperMagnet_
############################################################

execute if entity @s[tag=tcc.block_breaker.north] rotated 180 0 run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.block_breaker.south] rotated 0 0 run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.block_breaker.east] rotated 270 0 run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.block_breaker.west] rotated 90 0 run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.block_breaker.up] rotated 0 -90 run function tcc:block/block_breakers/break_block
execute if entity @s[tag=tcc.block_breaker.down] rotated 0 90 run function tcc:block/block_breakers/break_block
