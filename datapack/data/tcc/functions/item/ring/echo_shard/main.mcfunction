############################################################
# Commands to run when you kill a mob with an echo shard ring
############################################################

playsound tcc:item.echo_shard_ring.use player @a[distance=..16]
execute if entity @s[predicate=!tcc:entity/holding/ring/netherite] run scoreboard players set #damage tcc.dummy -10
execute if entity @s[predicate=tcc:entity/holding/ring/netherite] run scoreboard players set #damage tcc.dummy -20
scoreboard players set #ignore_armor tcc.dummy 1
execute if entity @s[gamemode=!creative] run function tcc:entity/player/damage/calculate
execute if entity @s[gamemode=!spectator,gamemode=!creative] run function tcc:item/durability/damage_generic_amount/offhand_1
schedule function tcc:item/ring/echo_shard/scheduled_kill 1t append