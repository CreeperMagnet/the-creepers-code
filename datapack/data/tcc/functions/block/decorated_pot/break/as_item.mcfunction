# Commands run off the dropped items

item modify entity @s contents tcc:reduce_count
data modify storage tcc:temp root.item.count set value 1
function tcc:technical/macros/loot/spawn with storage tcc:temp root.item
scoreboard players set #temp_0 tcc.dummy 1