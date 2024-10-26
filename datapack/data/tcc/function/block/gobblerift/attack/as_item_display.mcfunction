# Commands to increment the break state of a gobblerift when hurt

playsound tcc:block.gobblerift.hurt neutral @a[distance=..16]
execute if data storage tcc:temp root.instamine run function tcc:block/gobblerift/break/main
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:2}}}}] run function tcc:block/gobblerift/break/main
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:1}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 2
execute if entity @s[nbt={item:{components:{"minecraft:custom_data":{break_state:0}}}}] run data modify entity @s item.components."minecraft:custom_data".break_state set value 1
scoreboard players set @s tcc.dummy2 10
data modify entity @s item.components."minecraft:custom_model_data" set value 1
data remove entity @s attack