############################################################
# Description: Tells what type of block breaker is powered
# Creator: CreeperMagnet_
############################################################

execute positioned ~ ~-.5 ~ if entity @e[type=item,predicate=tcc:block_breaker_enchanted_book,dz=0,dx=0,dy=0,tag=!global.ignore] run function tcc:block/block_breakers/enchant
scoreboard players reset @s tcc.dummy2

execute if entity @s[tag=tcc.excavator,tag=!tcc.tag] if predicate tcc:block_breakers/excavator run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.excavator,tag=!tcc.tag] if predicate tcc:block_breakers/excavator run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.chopper,tag=!tcc.tag] if predicate tcc:block_breakers/chopper run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.chopper,tag=!tcc.tag] if predicate tcc:block_breakers/chopper run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.sifter,tag=!tcc.tag] if predicate tcc:block_breakers/sifter run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.sifter,tag=!tcc.tag] if predicate tcc:block_breakers/sifter run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.snipper,tag=!tcc.tag] if predicate tcc:block_breakers/snipper run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.snipper,tag=!tcc.tag] if predicate tcc:block_breakers/snipper run tag @s add tcc.scheduled.block_breaker

execute if entity @s[tag=tcc.harvester,tag=!tcc.tag] if predicate tcc:block_breakers/harvester run schedule function tcc:block/block_breakers/scheduled_break 5t
execute if entity @s[tag=tcc.harvester,tag=!tcc.tag] if predicate tcc:block_breakers/harvester run tag @s add tcc.scheduled.block_breaker

tag @s remove tcc.tag
tag @s add tcc.block_breakers.powered
