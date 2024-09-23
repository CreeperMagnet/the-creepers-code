# Inserts sand into echoing hourglass

playsound minecraft:block.sand.place player @a[distance=..16]
tag @s remove tcc.echoing_hourglass.empty
data modify entity @s item.components."minecraft:custom_data".powder set value {id:"sand",result:{id:"minecraft:suspicious_sand",count:1},custom_model_data:{glass:[330002,330003,330004,330005],top:[330102,330103,330104,330000],bottom:[330106,330107,330108,330000]}}

data modify entity @s item.components."minecraft:custom_model_data" set value 330001
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_top] run data modify entity @s item.components."minecraft:custom_model_data" set value 330101
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_bottom] run data modify entity @s item.components."minecraft:custom_model_data" set value 330105

scoreboard players set @s tcc.dummy2 40
data modify storage tcc:temp root.item.count set value 1
data modify entity @s item.components."minecraft:custom_data".drop_item set from storage tcc:temp root.item
execute as @p[advancements={tcc:technical/player_interacted_with_entity/echoing_hourglass=true},gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count