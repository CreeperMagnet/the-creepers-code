############################################################
# Commands to run when you kill a mob with an echo shard ring
############################################################

execute store result score #temp_0 tcc.dummy run attribute @s minecraft:generic.max_health get 10
execute store result score #temp_1 tcc.dummy run data get entity @s Health 10
execute unless score #temp_0 tcc.dummy = #temp_1 tcc.dummy run function tcc:item/ring/echo_shard/main
advancement revoke @s only tcc:technical/player_killed_entity/with_echo_shard_ring