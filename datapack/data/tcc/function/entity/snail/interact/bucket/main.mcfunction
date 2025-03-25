# Commands to run for bucketing the snail

data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail set from entity @s {}
execute if entity @s[scores={tcc.dummy2=1..},tag=!tcc.baby] store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail_boost_timer int 1 run scoreboard players get @s tcc.dummy2
execute if entity @s[scores={tcc.dummy2=1..},tag=tcc.baby] store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.age int 1 run scoreboard players get @s tcc.dummy2
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.Pos
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.Motion
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.UUID
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.CustomName
data merge storage tcc:temp {root:{item:{components:{"minecraft:custom_model_data":{flags:[false],strings:["brown"]}}}}}
execute if entity @s[tag=tcc.baby] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".flags[0] set value true
execute if entity @s[tag=tcc.snail.black] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "black"
execute if entity @s[tag=tcc.snail.brown] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "brown"
execute if entity @s[tag=tcc.snail.light_blue] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "light_blue"
execute if entity @s[tag=tcc.snail.skull] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "skull"
execute if entity @s[tag=tcc.snail.spiral] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "spiral"
execute if entity @s[tag=tcc.snail.yellow] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data".strings[0] set value "yellow"

execute if entity @s[nbt=!{CustomName:{"translate":"entity.tcc.snail"}}] run data modify storage tcc:temp root.item.components."minecraft:custom_name" set from entity @s CustomName
execute if entity @s[tag=!tcc.silent] run playsound tcc:entity.snail.bucket neutral @a[distance=..16]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.id set value "snail_bucket"
tp @s ~ -1000 ~