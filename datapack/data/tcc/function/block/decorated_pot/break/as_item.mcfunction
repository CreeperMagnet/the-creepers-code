# Commands run off the dropped items

item modify entity @s contents tcc:reduce_count
data modify storage tcc:temp root.item.count set value 1
data modify storage tcc:temp root.item.slot set value "contents"
function tcc:technical/macros/loot/replace with storage tcc:temp root.item
scoreboard players set #temp_0 tcc.dummy 1