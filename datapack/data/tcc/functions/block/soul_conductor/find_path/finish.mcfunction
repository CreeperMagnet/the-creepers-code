############################################################
# Finishes the soul conductor path finding algorithm and teleports the player
############################################################

particle sculk_soul ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0 20 force
scoreboard players set #soul_conductor_unfinished tcc.dummy 0
execute as @p[advancements={tcc:technical/item_used_on_block/activate_soul_conductor=true}] run function tcc:block/soul_conductor/find_path/finish_as_player
playsound tcc:block.soul_conductor.transport_player block @a[distance=..16] ~0.5 ~0.5 ~0.5