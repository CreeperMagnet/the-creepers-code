# Inserts gravel into echoing hourglass

playsound minecraft:block.gravel.place player @a[distance=..16]
tag @s remove tcc.echoing_hourglass.empty
data modify entity @s item.components."minecraft:custom_data".powder set value {id:"gravel",result:{id:"minecraft:suspicious_gravel",count:1},custom_model_data:{glass:[330007,330008,330009,330010],top:[330110,330111,330112,330000],bottom:[330114,330115,330116,330000]}}

data modify entity @s item.components."minecraft:custom_model_data" set value 330006
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_top] run data modify entity @s item.components."minecraft:custom_model_data" set value 330109
execute on passengers if entity @s[tag=tcc.echoing_hourglass.sand_bottom] run data modify entity @s item.components."minecraft:custom_model_data" set value 330113

scoreboard players set @s tcc.dummy2 40
data modify storage tcc:temp root.item.count set value 1
data modify entity @s item.components."minecraft:custom_data".drop_item set from storage tcc:temp root.item
execute as @p[advancements={tcc:technical/player_interacted_with_entity/echoing_hourglass=true},gamemode=!creative] run item modify entity @s weapon.mainhand tcc:reduce_count