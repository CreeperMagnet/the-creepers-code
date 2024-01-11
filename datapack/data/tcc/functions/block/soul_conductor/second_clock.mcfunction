# Second clock, switches texture from disabled <-> enabled

execute unless entity @s[tag=tcc.soul_conductor.powered] if block ~ ~ ~ minecraft:dropper[triggered=true] run function tcc:block/soul_conductor/power/disable
execute if entity @s[tag=tcc.soul_conductor.powered] if block ~ ~ ~ minecraft:dropper[triggered=false] run function tcc:block/soul_conductor/power/enable