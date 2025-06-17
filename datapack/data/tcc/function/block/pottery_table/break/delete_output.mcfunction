# Destroys the output so dupe bugs don't occur

data modify storage tcc:temp root.output_item_temp set from storage tcc:temp root.output_item
execute store success score @s tcc.dummy run data modify storage tcc:temp root.output_item_temp set from entity @s Item
execute if score #temp_0 tcc.dummy matches 0 if score @s tcc.dummy matches 0 run function tcc:block/pottery_table/break/kill_output_item