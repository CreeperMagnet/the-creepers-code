# Heals the player based on a score provided

execute store result score @s tcc.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score @s tcc.dummy2 run data get entity @s Health 10
scoreboard players operation @s tcc.dummy -= @s tcc.dummy2
scoreboard players operation @s tcc.dummy -= #health tcc.dummy

attribute @s[scores={tcc.dummy=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 "healing_128" -12.8 add_value
scoreboard players remove @s[scores={tcc.dummy=128..}] tcc.dummy 128
attribute @s[scores={tcc.dummy=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 "healing_64" -6.4 add_value
scoreboard players remove @s[scores={tcc.dummy=64..}] tcc.dummy 64
attribute @s[scores={tcc.dummy=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 "healing_32" -3.2 add_value
scoreboard players remove @s[scores={tcc.dummy=32..}] tcc.dummy 32
attribute @s[scores={tcc.dummy=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 "healing_16" -1.6 add_value
scoreboard players remove @s[scores={tcc.dummy=16..}] tcc.dummy 16
attribute @s[scores={tcc.dummy=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 "healing_8" -0.8 add_value
scoreboard players remove @s[scores={tcc.dummy=8..}] tcc.dummy 8
attribute @s[scores={tcc.dummy=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 "healing_4" -0.4 add_value
scoreboard players remove @s[scores={tcc.dummy=4..}] tcc.dummy 4
attribute @s[scores={tcc.dummy=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 "healing_2" -0.2 add_value
scoreboard players remove @s[scores={tcc.dummy=2..}] tcc.dummy 2
attribute @s[scores={tcc.dummy=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 "healing_1" -0.1 add_value
scoreboard players remove @s[scores={tcc.dummy=1..}] tcc.dummy 1

effect give @s minecraft:instant_health 1 24 true

tag @s add tcc.scheduled.remove_attributes
schedule function tcc:entity/player/heal/remove_attributes/scheduled 2t replace