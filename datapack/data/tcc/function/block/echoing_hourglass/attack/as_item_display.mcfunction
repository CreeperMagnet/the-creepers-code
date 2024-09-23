# Commands to increment the break state of an echoing hourglass when attacked

playsound tcc:block.echoing_hourglass.hit block @a[distance=..16]
particle minecraft:item{item:{id:"minecraft:tinted_glass",components:{"minecraft:custom_model_data":330000}}} ~ ~0.5 ~ 0.2 0.3 0.2 0 15 normal
execute if data storage tcc:temp root.instamine run function tcc:block/echoing_hourglass/break
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:2}}}}] run function tcc:block/echoing_hourglass/break
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:1}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 2
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:0}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 1