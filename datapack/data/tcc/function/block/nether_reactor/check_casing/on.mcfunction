# Checks if the casing around the active reactor is valid

execute as @e[type=#tcc:nether_reactor_affected,tag=!smithed.entity,distance=..64] run function tcc:block/nether_reactor/effects
execute positioned ~ ~-1 ~ if predicate tcc:location_check/nether_reactor/active_multiblock run return 0

# If there is no valid active multiblock, it is no longer on
tag @s remove tcc.nether_reactor_core.on
playsound tcc:block.nether_reactor.burn_out block @a[distance=..16]
particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.2 100 normal
data modify entity @s item.components."minecraft:item_model" set value "tcc:block/nether_reactor_core/off"
fill ~1 ~ ~1 ~-1 ~-2 ~-1 minecraft:cracked_polished_blackstone_bricks replace minecraft:polished_blackstone_bricks
