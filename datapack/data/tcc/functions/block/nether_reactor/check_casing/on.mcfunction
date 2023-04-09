############################################################
# Checks if the casing around the active reactor is valid
############################################################

tag @s remove tcc.nether_reactor_core.on
execute positioned ~ ~-1 ~ if predicate tcc:block/nether_reactor/on run tag @s add tcc.nether_reactor_core.on
execute if entity @s[tag=!tcc.nether_reactor_core.on] run playsound tcc:block.nether_reactor.burn_out block @a[distance=..16]
execute if entity @s[tag=!tcc.nether_reactor_core.on] run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.2 100 normal
data modify entity @s[tag=!tcc.nether_reactor_core.on] item.tag.CustomModelData set value 330000
data remove entity @s[tag=!tcc.nether_reactor_core.on] brightness
tag @s[tag=!tcc.nether_reactor_core.on] remove tcc.glow_in_the_dark
execute if entity @s[tag=!tcc.nether_reactor_core.on] run fill ~1 ~ ~1 ~-1 ~-2 ~-1 minecraft:cracked_polished_blackstone_bricks replace minecraft:polished_blackstone_bricks
execute if entity @s[tag=tcc.nether_reactor_core.on] as @e[type=#tcc:nether_reactor_affected,tag=!smithed.entity,distance=..64] run function tcc:block/nether_reactor/effects
