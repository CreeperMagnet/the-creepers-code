# Commands to run off the villager

execute store success score @s tcc.dummy run data modify block ~ ~ ~ x set from entity @s Brain.memories."minecraft:job_site".value.pos[0]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify block ~ ~ ~ y set from entity @s Brain.memories."minecraft:job_site".value.pos[1]
execute store success score @s[scores={tcc.dummy=0}] tcc.dummy run data modify block ~ ~ ~ z set from entity @s Brain.memories."minecraft:job_site".value.pos[2]
execute if entity @s[scores={tcc.dummy=0}] run function tcc:entity/archaeologist/set_initial_tags
