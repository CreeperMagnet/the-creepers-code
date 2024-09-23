# Keeps track of the hatch value

setblock ~ ~ ~ minecraft:sniffer_egg[hatch=0]
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":330137}}}] run return run data modify entity @s item.components."minecraft:custom_model_data" set value 330138
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":330138}}}] run return run data modify entity @s item.components."minecraft:custom_model_data" set value 330139
execute if entity @s[nbt={item:{components:{"minecraft:custom_model_data":330139}}}] run function tcc:block/sprouter_egg/hatch/spawn_baby