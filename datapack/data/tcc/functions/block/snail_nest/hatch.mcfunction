# Commands to hatch a snail nest

setblock ~ ~ ~ minecraft:air destroy
loot spawn ~ ~ ~ loot tcc:blocks/snail_nest_hatch
data remove storage tcc:temp root
data modify storage tcc:temp root.baby set value "all hail the snail"
function tcc:entity/snail/summon/spawn
execute if predicate tcc:random_chance/0.5 run function tcc:entity/snail/summon/spawn
particle minecraft:item{item:{id:"minecraft:dropper",components:{"minecraft:custom_model_data":330006}}} ~ ~0.7 ~ 0.4 0.4 0.4 0.07 100 normal
kill @s
