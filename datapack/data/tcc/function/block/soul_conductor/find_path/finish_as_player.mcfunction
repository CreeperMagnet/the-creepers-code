# Finishes the soul conductor path as the player

execute at @s run particle minecraft:sculk_soul ~ ~0.5 ~ 0.3 0.5 0.3 0 10 force
execute at @s run playsound tcc:block.soul_conductor.transport_player block @a[distance=0.01..16] ~ ~ ~
scoreboard players operation #temp_0 tcc.dummy = #soul_conductor_limit tcc.dummy
scoreboard players operation #temp_0 tcc.dummy -= #soul_conductor_limit_count tcc.dummy
execute if score #temp_0 tcc.dummy matches 1000.. run advancement grant @s only tcc:minecraft/adventure/soul_conductor_fast_travel

execute if block ~ ~-1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-1.5 ~ ~ ~
execute if block ~ ~1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-0.5 ~ ~ ~
execute unless block ~ ~1 ~ #tcc:soul_conductor_ignore unless block ~ ~-1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-0.5 ~ ~ ~