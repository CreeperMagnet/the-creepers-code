############################################################
# Description: Commands for breaking block breakers
# Creator: CreeperMagnet_
############################################################

kill @s
execute if entity @s[tag=tcc.excavator] run function tcc:block/block_breakers/excavator/break
execute if entity @s[tag=tcc.sifter] run function tcc:block/block_breakers/sifter/break
execute if entity @s[tag=tcc.chopper] run function tcc:block/block_breakers/chopper/break
execute if entity @s[tag=tcc.snipper] run function tcc:block/block_breakers/snipper/break
execute if entity @s[tag=tcc.harvester] run function tcc:block/block_breakers/harvester/break
