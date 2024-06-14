# Destroys the output so dupe bugs don't occur

data modify storage tcc:temp root.output_item_temp set from storage tcc:temp root.output_item
execute store success score @s tcc.dummy run data modify storage tcc:temp root.output_item_temp set from entity @s Item
execute if entity @s[scores={tcc.dummy=0}] run scoreboard players set #temp_0 tcc.dummy 1
execute if score #temp_0 tcc.dummy matches 0 run kill @s[scores={tcc.dummy=0}]
