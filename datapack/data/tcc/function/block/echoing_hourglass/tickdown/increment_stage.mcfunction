# Increments the stage of the echoing hourglass

function tcc:block/echoing_hourglass/tickdown/increment_custom_model_data
execute on passengers run function tcc:block/echoing_hourglass/tickdown/increment_custom_model_data
#execute if score @s tcc.dummy2 matches ..10 on passengers run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"