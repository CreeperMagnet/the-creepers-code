############################################################
# Ordered random exits
############################################################

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~1 ~ ~ if block ~ ~ ~ dropper[facing=east]{Lock:"§soul_conductor\\uF001"} rotated -90 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~1 ~-0.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~1 if block ~ ~ ~ dropper[facing=south]{Lock:"§soul_conductor\\uF001"} rotated 0 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~-0.5 ~1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ dropper[facing=west]{Lock:"§soul_conductor\\uF001"} rotated 90 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~-1 ~-0.5 ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ dropper[facing=north]{Lock:"§soul_conductor\\uF001"} rotated 180 0 positioned ~ ~0.5 ~ unless entity @s[distance=..0.1] positioned ~ ~-0.5 ~-1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish