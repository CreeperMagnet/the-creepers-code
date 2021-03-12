############################################################
# Description: Commands to place every block breaker
# Creator: Ellivers
############################################################

execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"excavator"}}}]} run function tcc:block/block_breakers/excavator/place
execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"chopper"}}}]} run function tcc:block/block_breakers/chopper/place
execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"harvester"}}}]} run function tcc:block/block_breakers/harvester/place
execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"sifter"}}}]} run function tcc:block/block_breakers/sifter/place
execute if data block ~ ~ ~ {Items:[{tag:{tcc:{placed_block:1b,block:"snipper"}}}]} run function tcc:block/block_breakers/snipper/place
execute as @e[type=armor_stand,tag=tcc.block,tag=tcc.block_breaker,tag=tcc.block_placing,sort=nearest,limit=1] run function tcc:block/block_breakers/finish_placing
