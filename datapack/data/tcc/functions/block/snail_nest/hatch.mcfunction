# Commands to hatch a snail nest

setblock ~ ~ ~ minecraft:air destroy
loot spawn ~ ~ ~ loot tcc:blocks/snail_nest_hatch
function tcc:entity/snail/summon/spawn
execute if predicate tcc:random_chance/0.5 run function tcc:entity/snail/summon/spawn
particle minecraft:item minecraft:structure_block{CustomModelData:330002} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
