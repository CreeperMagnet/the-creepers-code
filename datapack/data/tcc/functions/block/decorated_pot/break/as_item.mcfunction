# Commands run off the dropped items

execute unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run scoreboard players set #temp_0 tcc.dummy 1
execute unless entity @s[nbt=!{Age:0s},nbt=!{Age:1s}] run data modify entity @s Item.tag set from storage tcc:storage root.temp.item_tag