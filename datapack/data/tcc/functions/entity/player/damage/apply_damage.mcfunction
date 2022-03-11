############################################################
# Damages a player for one heart
############################################################

attribute @s[scores={tcc.dummy=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 "damage_128" -12.8 add
scoreboard players remove @s[scores={tcc.dummy=128..}] tcc.dummy 128
attribute @s[scores={tcc.dummy=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 "damage_64" -6.4 add
scoreboard players remove @s[scores={tcc.dummy=64..}] tcc.dummy 64
attribute @s[scores={tcc.dummy=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 "damage_32" -3.2 add
scoreboard players remove @s[scores={tcc.dummy=32..}] tcc.dummy 32
attribute @s[scores={tcc.dummy=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 "damage_16" -1.6 add
scoreboard players remove @s[scores={tcc.dummy=16..}] tcc.dummy 16
attribute @s[scores={tcc.dummy=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 "damage_8" -0.8 add
scoreboard players remove @s[scores={tcc.dummy=8..}] tcc.dummy 8
attribute @s[scores={tcc.dummy=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 "damage_4" -0.4 add
scoreboard players remove @s[scores={tcc.dummy=4..}] tcc.dummy 4
attribute @s[scores={tcc.dummy=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 "damage_2" -0.2 add
scoreboard players remove @s[scores={tcc.dummy=2..}] tcc.dummy 2
attribute @s[scores={tcc.dummy=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 "damage_1" -0.1 add
scoreboard players remove @s[scores={tcc.dummy=1..}] tcc.dummy 1
scoreboard players set @s tcc.dummy 0
effect give @s instant_health 1 24 true
tag @s add tcc.scheduled.remove_attributes
schedule function tcc:entity/player/damage/remove_attributes/scheduled 2t replace
execute if score #damage tcc.dummy matches 1.. run playsound minecraft:entity.player.hurt player @a[distance=..16]