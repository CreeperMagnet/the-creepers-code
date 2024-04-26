# Commands to run for bucketing the snail

data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail set from entity @s {}
execute if entity @s[scores={tcc.dummy2=1..},tag=!tcc.baby] store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail_boost_timer int 1 run scoreboard players get @s tcc.dummy2
execute if entity @s[scores={tcc.dummy2=1..},tag=tcc.baby] store result storage tcc:temp root.item.components."minecraft:custom_data".tcc.age int 1 run scoreboard players get @s tcc.dummy2
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.Pos
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.Motion
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.UUID
data remove storage tcc:temp root.item.components."minecraft:custom_data".tcc.snail.CustomName
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.black] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330032
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.brown] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330033
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.gary] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330034
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.light_blue] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330035
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.skull] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330036
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.spiral] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330037
execute if entity @s[tag=!tcc.baby,tag=tcc.snail.yellow] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330038

execute if entity @s[tag=tcc.baby,tag=tcc.snail.black] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330252
execute if entity @s[tag=tcc.baby,tag=tcc.snail.brown] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330253
execute if entity @s[tag=tcc.baby,tag=tcc.snail.gary] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330254
execute if entity @s[tag=tcc.baby,tag=tcc.snail.light_blue] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330255
execute if entity @s[tag=tcc.baby,tag=tcc.snail.skull] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330256
execute if entity @s[tag=tcc.baby,tag=tcc.snail.spiral] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330257
execute if entity @s[tag=tcc.baby,tag=tcc.snail.yellow] run data modify storage tcc:temp root.item.components."minecraft:custom_model_data" set value 330258

execute if entity @s[nbt=!{CustomName:'{"translate":"entity.tcc.snail"}'}] run data modify storage tcc:temp root.item.components."minecraft:custom_name" set from entity @s CustomName
execute if entity @s[tag=!tcc.silent] run playsound tcc:entity.snail.bucket neutral @a[distance=..16]
data modify storage tcc:temp root.item.components."minecraft:custom_data".tcc.id set value "snail_bucket"
tp @s ~ -1000 ~