# Commands to run when taking powder from echoing hourglass

data remove storage tcc:temp root.macro_input
data modify storage tcc:temp root.macro_input.item set from entity @s item.components."minecraft:custom_data".drop_item

execute if data storage tcc:temp root.macro_input.item{id:"minecraft:sand"} run playsound tcc:block.echoing_hourglass.retrieve_sand block @a[distance=..16]
execute if data storage tcc:temp root.macro_input.item{id:"minecraft:gravel"} run playsound tcc:block.echoing_hourglass.retrieve_gravel block @a[distance=..16]
execute if data storage tcc:temp root.macro_input.item{id:"minecraft:suspicious_sand"} run playsound tcc:block.echoing_hourglass.retrieve_suspicious_sand block @a[distance=..16]
execute if data storage tcc:temp root.macro_input.item{id:"minecraft:suspicious_gravel"} run playsound tcc:block.echoing_hourglass.retrieve_suspicious_gravel block @a[distance=..16]

data remove entity @s item.components."minecraft:custom_data".powder
data remove entity @s item.components."minecraft:custom_data".drop_item
data modify entity @s item.components."minecraft:custom_model_data" set value 330000
tag @s remove tcc.echoing_hourglass.finished
tag @s add tcc.echoing_hourglass.empty
execute as @p[advancements={tcc:technical/player_interacted_with_entity/echoing_hourglass=true}] run function tcc:block/echoing_hourglass/interact/take_powder/as_player