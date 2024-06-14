# Starts the flood filling process

scoreboard players operation #soul_conductor_limit_count tcc.dummy = #soul_conductor_limit tcc.dummy
function tcc:block/soul_conductor/find_path/flood_fill/main
function tcc:block/soul_conductor/find_path/flood_fill/undo
execute unless score #soul_conductor_unfinished tcc.dummy matches 0 run playsound tcc:block.soul_conductor.transport_player_fail block @a[distance=..16]
execute if score #soul_conductor_limit_count tcc.dummy matches 0 run playsound tcc:block.soul_conductor.transport_player_fail block @a[distance=..16]
execute if score #soul_conductor_limit_count tcc.dummy matches 0 run title @p[advancements={tcc:technical/default_block_use/activate_soul_conductor=true}] actionbar {"translate":"block.tcc.soul_conductor.exceeded_path_limit","color":"red","with":[{"score":{"name":"#soul_conductor_limit","objective":"tcc.dummy"}}]}