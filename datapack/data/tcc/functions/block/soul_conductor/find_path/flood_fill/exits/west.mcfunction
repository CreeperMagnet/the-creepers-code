############################################################
# Ordered random exits
############################################################

execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ dropper[facing=west]{Lock:"§soul_conductor\\uF001"} rotated 90 0 unless entity @s[dx=0] positioned ~-1 ~ ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ dropper[facing=north]{Lock:"§soul_conductor\\uF001"} rotated 180 0 unless entity @s[dx=0] positioned ~ ~ ~-1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~1 ~ ~ if block ~ ~ ~ dropper[facing=east]{Lock:"§soul_conductor\\uF001"} rotated -90 0 unless entity @s[dx=0] positioned ~1 ~ ~ if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 positioned ~ ~ ~1 if block ~ ~ ~ dropper[facing=south]{Lock:"§soul_conductor\\uF001"} rotated 0 0 unless entity @s[dx=0] positioned ~ ~ ~1 if block ~ ~ ~ #tcc:soul_conductor_ignore run function tcc:block/soul_conductor/find_path/finish
