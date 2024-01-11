# Scans for placed custom blocks

advancement revoke @s only tcc:technical/placed_block/custom_block

execute align xyz positioned ~0.5 ~-6.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-5.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-4.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-3.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-2.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-1.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~1.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~2.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~3.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~4.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~5.5 ~0.5 run function tcc:block/placement/layer
execute align xyz positioned ~0.5 ~6.5 ~0.5 run function tcc:block/placement/layer

execute as @e[type=minecraft:item_display,tag=tcc.newly_placed_update_light] at @s run function tcc:block/update_light/on_place
