# Keeps track of the hatch value

setblock ~ ~ ~ minecraft:sniffer_egg[hatch=0]
execute if entity @s[nbt={item:{components:{"minecraft:item_model":"tcc:block/sprouter_egg/stage_0"}}}] run return run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/sprouter_egg/stage_1"
execute if entity @s[nbt={item:{components:{"minecraft:item_model":"tcc:block/sprouter_egg/stage_1"}}}] run return run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/sprouter_egg/stage_2"
execute if entity @s[nbt={item:{components:{"minecraft:item_model":"tcc:block/sprouter_egg/stage_2"}}}] run function tcc:block/sprouter_egg/hatch/spawn_baby