############################################################
# Description: Damages a player for one heart
# Creator: CreeperMagnet_
############################################################

attribute @s[scores={tcc.dummy=128..}] minecraft:generic.max_health modifier add 2-0-3-3-7 damage_128 -12.8 add
scoreboard players remove @s[scores={tcc.dummy=128..}] tcc.dummy 128
attribute @s[scores={tcc.dummy=64..}] minecraft:generic.max_health modifier add 2-0-3-3-6 damage_64 -6.4 add
scoreboard players remove @s[scores={tcc.dummy=64..}] tcc.dummy 64
attribute @s[scores={tcc.dummy=32..}] minecraft:generic.max_health modifier add 2-0-3-3-5 damage_32 -3.2 add
scoreboard players remove @s[scores={tcc.dummy=32..}] tcc.dummy 32
attribute @s[scores={tcc.dummy=16..}] minecraft:generic.max_health modifier add 2-0-3-3-4 damage_16 -1.6 add
scoreboard players remove @s[scores={tcc.dummy=16..}] tcc.dummy 16
attribute @s[scores={tcc.dummy=8..}] minecraft:generic.max_health modifier add 2-0-3-3-3 damage_8 -0.8 add
scoreboard players remove @s[scores={tcc.dummy=8..}] tcc.dummy 8
attribute @s[scores={tcc.dummy=4..}] minecraft:generic.max_health modifier add 2-0-3-3-2 damage_4 -0.4 add
scoreboard players remove @s[scores={tcc.dummy=4..}] tcc.dummy 4
attribute @s[scores={tcc.dummy=2..}] minecraft:generic.max_health modifier add 2-0-3-3-1 damage_2 -0.2 add
scoreboard players remove @s[scores={tcc.dummy=2..}] tcc.dummy 2
attribute @s[scores={tcc.dummy=1..}] minecraft:generic.max_health modifier add 2-0-3-3-0 damage_1 -0.1 add
scoreboard players remove @s[scores={tcc.dummy=1..}] tcc.dummy 1
scoreboard players set @s tcc.dummy2 0
scoreboard players set @s tcc.dummy 0
execute store result score @s[nbt={ActiveEffects:[{Id:11b}]}] tcc.dummy run data get entity @s ActiveEffects[{Id:11b}].Amplifier
execute if entity @s[nbt={ActiveEffects:[{Id:11b}]},scores={tcc.dummy=..3}] run data modify storage tcc:storage root.temp.resistance_storage insert 0 from entity @s ActiveEffects[{Id:11b}]
effect give @s[scores={tcc.dummy=0..3}] resistance 1 255 true
effect give @s instant_damage 1 0 true
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-7
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-6
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-5
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-4
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-3
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-2
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-1
attribute @s minecraft:generic.max_health modifier remove 2-0-3-3-0
tag @s[scores={tcc.dummy=0..3}] add tcc.scheduled.resistance
execute if entity @s[scores={tcc.dummy=0..3}] run schedule function tcc:entity/player/damage/scheduled_resistance 2t append
