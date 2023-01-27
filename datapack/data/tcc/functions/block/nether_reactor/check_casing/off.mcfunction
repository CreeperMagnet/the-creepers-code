############################################################
# Checks if the casing around the reactor is valid, then consumes the gold as fuel
############################################################

tag @s[predicate=tcc:block/nether_reactor/off] add tcc.nether_reactor_core.on
execute if entity @s[tag=tcc.nether_reactor_core.on] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:gilded_blackstone replace #tcc:nether_reactor/gold_blocks
execute if entity @s[tag=tcc.nether_reactor_core.on] run playsound tcc:block.nether_reactor.activate block @a[distance=..16] ~ ~ ~ 1 0.7
execute if entity @s[tag=tcc.nether_reactor_core.on] run advancement grant @a[distance=..16] only tcc:minecraft/nether/nether_reactor
data modify entity @s[tag=tcc.nether_reactor_core.on] ArmorItems[3].tag.CustomModelData set value 330001
execute if entity @s[tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on
