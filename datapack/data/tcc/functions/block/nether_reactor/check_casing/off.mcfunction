############################################################
# Description: Checks if the casing around the reactor is valid, then consumes the gold as fuel
# Creator: CreeperMagnet_
############################################################

tag @s[predicate=tcc:nether_reactor/off] add tcc.nether_reactor_core.on
execute if entity @s[tag=tcc.nether_reactor_core.on] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:gilded_blackstone replace minecraft:gold_block
execute if entity @s[tag=tcc.nether_reactor_core.on] run playsound tcc:block.nether_reactor.activate block @a[distance=..16] ~ ~ ~ 1 0.7
data modify entity @s[tag=tcc.nether_reactor_core.on] ArmorItems[3].tag.CustomModelData set value 330031
execute if entity @s[tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on
