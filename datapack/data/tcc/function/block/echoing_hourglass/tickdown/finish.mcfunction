# Finishes a stage of the echoing hourglass

tag @s add tcc.echoing_hourglass.finished
scoreboard players reset @s tcc.dummy2
execute on passengers if entity @s[tag=tcc.echoing_hourglass.powder_top] run data modify entity @s transformation.scale set value [0.999f,1.0f,0.999f]
execute on passengers if entity @s[tag=tcc.echoing_hourglass.powder_bottom] run data modify entity @s transformation.scale set value [0.999f,0.001f,0.999f]
execute on passengers run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"

execute if predicate tcc:location_check/echoing_hourglass/any run function tcc:block/echoing_hourglass/tickdown/set_loot_result

execute if predicate tcc:location_check/echoing_hourglass/any run playsound tcc:block.echoing_hourglass.finish block @a[distance=..16]
execute unless predicate tcc:location_check/echoing_hourglass/any run playsound tcc:block.echoing_hourglass.finish_fail block @a[distance=..16]