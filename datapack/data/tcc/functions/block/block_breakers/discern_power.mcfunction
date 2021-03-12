############################################################
# Description: Tells what type of block breaker is powered
# Creator: CreeperMagnet_
############################################################


execute if entity @s[tag=tcc.excavator] if block ~ ~ ~ #tcc:block_breaker_blocks/excavator run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.excavator] if block ~ ~ ~ #tcc:block_breaker_blocks/excavator run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.chopper] if block ~ ~ ~ #tcc:block_breaker_blocks/chopper run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.chopper] if block ~ ~ ~ #tcc:block_breaker_blocks/chopper run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.sifter] if block ~ ~ ~ #tcc:block_breaker_blocks/sifter run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.sifter] if block ~ ~ ~ #tcc:block_breaker_blocks/sifter run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.snipper] if block ~ ~ ~ #tcc:block_breaker_blocks/snipper run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.snipper] if block ~ ~ ~ #tcc:block_breaker_blocks/snipper run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.harvester] if block ~ ~ ~ #tcc:block_breaker_blocks/harvester run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.harvester] if block ~ ~ ~ #tcc:block_breaker_blocks/harvester run tag @s add tcc.scheduled.block_breaker

execute positioned ~ ~-.5 ~ if entity @e[type=item,predicate=tcc:block_breaker_enchanted_book,limit=1,dz=0,dx=0,dy=0,sort=nearest,tag=!global.ignore] run function tcc:block/block_breakers/enchant
tag @s add tcc.block_breakers.powered
