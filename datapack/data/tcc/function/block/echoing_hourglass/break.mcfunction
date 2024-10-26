# Commands to break an echoing hourglass

particle minecraft:item{item:{id:"minecraft:tinted_glass",components:{"minecraft:item_model":"tcc:block/echoing_hourglass/empty"}}} ~ ~1 ~ 0.3 0.4 0.3 0.05 20 normal
execute unless data entity @s item.components."minecraft:custom_data".drop_item.components run data modify entity @s item.components."minecraft:custom_data".drop_item.components set value {}
function tcc:technical/macros/loot/spawn with entity @s item.components."minecraft:custom_data".drop_item
execute on passengers run kill @s
playsound tcc:block.echoing_hourglass.break block @a[distance=..16]
kill @s
execute unless data storage tcc:temp root.instamine run loot spawn ~ ~ ~ loot tcc:items/echoing_hourglass
