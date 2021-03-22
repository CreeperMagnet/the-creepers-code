############################################################
# Description: Checks if the casing around the active reactor is valid
# Creator: CreeperMagnet_
############################################################

tag @s remove tcc.nether_reactor_core.on
tag @s[predicate=tcc:nether_reactor/on] add tcc.nether_reactor_core.on
execute if entity @s[tag=!tcc.nether_reactor_core.on] run playsound tcc:block.nether_reactor.burn_out block @a[distance=..16]
execute if entity @s[tag=!tcc.nether_reactor_core.on] run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.2 100 normal
data modify entity @s[tag=!tcc.nether_reactor_core.on] ArmorItems[3].tag.CustomModelData set value 330030
execute if entity @s[tag=!tcc.nether_reactor_core.on] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:cracked_polished_blackstone_bricks replace minecraft:polished_blackstone_bricks
execute if entity @s[tag=tcc.nether_reactor_core.on] as @e[type=#tcc:nether_reactor_affected,tag=!global.ignore,distance=..64] run function tcc:block/nether_reactor/effects
