# Summons a snail
data remove storage tcc:temp root
data modify storage tcc:temp root.snail_bucket.components."minecraft:custom_data".tcc.variant set value "light_blue"
function tcc:entity/snail/summon/spawn
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.snail"}]}