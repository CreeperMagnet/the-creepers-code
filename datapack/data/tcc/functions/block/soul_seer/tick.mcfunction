# Commands to break a soul seer

execute unless block ~ ~ ~ minecraft:dropper run function tcc:block/soul_seer/break/main

execute if block ~ ~ ~ minecraft:dropper[triggered=false] run tag @s remove tcc.soul_seer.powered
execute if block ~ ~ ~ minecraft:dropper[triggered=true] unless entity @s[tag=tcc.soul_seer.powered] run function tcc:block/soul_seer/powered

scoreboard players remove @s[scores={tcc.dummy2=1..}] tcc.dummy2 1
scoreboard players remove @s[scores={tcc.soul_seer_cooldown=1..}] tcc.soul_seer_cooldown 1
execute if entity @s[scores={tcc.dummy2=0}] run function tcc:block/soul_seer/unglow
execute if entity @s[scores={tcc.soul_seer_cooldown=0}] run function tcc:block/soul_seer/glow/set_comparator