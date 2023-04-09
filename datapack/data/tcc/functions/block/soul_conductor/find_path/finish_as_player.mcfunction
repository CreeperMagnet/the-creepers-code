############################################################
# Finishes the soul conductor path as the player
############################################################

execute at @s run particle sculk_soul ~ ~0.5 ~ 0.3 0.5 0.3 0 10 force
execute at @s run playsound tcc:block.soul_conductor.transport_player block @a[distance=0.01..16] ~ ~ ~
execute if score #soul_conductor_limit tcc.dummy matches ..9000 run advancement grant @s only tcc:minecraft/adventure/soul_conductor_fast_travel

execute if block ~ ~-1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-1.5 ~ ~ ~
execute if block ~ ~1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-0.5 ~ ~ ~
execute unless block ~ ~1 ~ #tcc:soul_conductor_ignore unless block ~ ~-1 ~ #tcc:soul_conductor_ignore run teleport @s ~ ~-0.5 ~ ~ ~