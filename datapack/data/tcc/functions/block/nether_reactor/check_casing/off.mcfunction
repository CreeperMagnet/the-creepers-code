# Checks if the casing around the reactor is valid, then consumes the gold as fuel

execute positioned ~ ~-1 ~ if predicate tcc:block/nether_reactor/off run tag @s add tcc.nether_reactor_core.on
execute if entity @s[tag=tcc.nether_reactor_core.on] run fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 minecraft:gilded_blackstone replace #tcc:nether_reactor/gold_blocks
execute if entity @s[tag=tcc.nether_reactor_core.on] run playsound tcc:block.nether_reactor.activate block @a[distance=..16] ~ ~ ~ 1 0.7
execute if entity @s[tag=tcc.nether_reactor_core.on] run advancement grant @a[distance=..16] only tcc:minecraft/nether/nether_reactor
data modify entity @s[tag=tcc.nether_reactor_core.on] item.tag.CustomModelData set value 330001
data merge entity @s[tag=tcc.nether_reactor_core.on] {brightness:{sky:15,block:5}}
tag @s[tag=tcc.nether_reactor_core.on] add tcc.glow_in_the_dark
execute if entity @s[tag=tcc.nether_reactor_core.on] run function tcc:block/nether_reactor/check_casing/on
