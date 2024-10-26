# Ordered random exits

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:dropper[facing=west,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} rotated 90 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~-1 ~-0.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:dropper[facing=north,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} rotated 180 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~-0.5 ~-1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~1 ~ ~ if block ~ ~ ~ minecraft:dropper[facing=east,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} rotated -90 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~1 ~-0.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~1 if block ~ ~ ~ minecraft:dropper[facing=south,triggered=false]{CustomName:'{"translate":"block.tcc.soul_conductor.name","font":"tcc:technical"}'} rotated 0 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~-0.5 ~1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish