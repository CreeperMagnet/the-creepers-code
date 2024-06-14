# Summons a snail
data remove storage tcc:temp root
function tcc:entity/snail/summon/spawn

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.snail"}]}
