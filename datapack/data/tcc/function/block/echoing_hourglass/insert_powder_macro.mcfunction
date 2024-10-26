# Common actions that need to be done to fill an echoing hourglass (for both hoppers and manual insertion ( ͡° ͜ʖ ͡°))

$playsound minecraft:block.$(powder).place player @a[distance=..16]
tag @s remove tcc.echoing_hourglass.empty
data modify entity @s item.components."minecraft:custom_data".powder set value {id:"gravel",result:{id:"minecraft:suspicious_gravel",count:1}}

# Base display entity: Glass portion
$data modify entity @s item.components."minecraft:item_model" set value "tcc:block/echoing_hourglass/$(powder)/glass/main"
$execute on passengers if entity @s[tag=tcc.echoing_hourglass.powder_top] run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/echoing_hourglass/$(powder)/powder/input/main"
$execute on passengers if entity @s[tag=tcc.echoing_hourglass.powder_bottom] run data modify entity @s item.components."minecraft:item_model" set value "tcc:block/echoing_hourglass/$(powder)/powder/output/main"

scoreboard players set @s tcc.dummy2 40
data modify storage tcc:temp root.item.count set value 1
data modify entity @s item.components."minecraft:custom_data".drop_item set from storage tcc:temp root.item