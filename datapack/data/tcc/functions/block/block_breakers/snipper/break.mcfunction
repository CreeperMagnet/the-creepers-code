############################################################
# Description: Commands to break a block breaker
# Creator: Ellivers
############################################################

execute store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:dropper",tag:{display:{Name:"{\"translate\":\"block.tcc.snipper\"}"}}}}]
execute unless entity @s[tag=tcc.block_breaker.enchanted] if score tcc.temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:blocks/snipper
execute if entity @s[tag=tcc.block_breaker.enchanted] run loot spawn ~ ~ ~ loot tcc:blocks/snipper
particle minecraft:item dropper{CustomModelData:330024} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
