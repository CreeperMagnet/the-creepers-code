# Commands to hatch a snail nest

setblock ~ ~ ~ minecraft:air destroy
loot spawn ~ ~ ~ loot tcc:blocks/snail_nest_hatch
data remove storage tcc:temp root
data modify storage tcc:temp root.baby set value "all hail the snail"
function tcc:entity/snail/summon/spawn
execute if predicate tcc:random_chance/0.5 run function tcc:entity/snail/summon/spawn
function tcc:block/break_particles/spawn_generic
kill @s
