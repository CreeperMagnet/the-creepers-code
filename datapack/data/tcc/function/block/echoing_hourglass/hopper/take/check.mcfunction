# Checks the items in the hopper below the echoing hourglass

data remove storage tcc:temp root

data modify storage tcc:temp root.macro_input.temp_drop_item set from entity @s item.components."minecraft:custom_data".drop_item
data remove storage tcc:temp root.macro_input.temp_drop_item.count

# check slot 0
data modify storage tcc:temp root.macro_input.temp_drop_item.Slot set value 0b
execute unless data block ~ ~ ~ Items[{Slot:0b}] run return run data modify block ~ ~ ~ Items append from storage tcc:temp root.macro_input.temp_drop_item
execute unless data block ~ ~ ~ Items[{Slot:0b,count:64}] store result score #temp_0 tcc.dummy run function tcc:block/echoing_hourglass/hopper/take/macro with storage tcc:temp root.macro_input
execute if score #temp_0 tcc.dummy matches 1 run return run item modify block ~ ~ ~ container.0 tcc:increase_count

# check slot 1
data modify storage tcc:temp root.macro_input.temp_drop_item.Slot set value 1b
execute unless data block ~ ~ ~ Items[{Slot:1b}] run return run data modify block ~ ~ ~ Items append from storage tcc:temp root.macro_input.temp_drop_item
execute unless data block ~ ~ ~ Items[{Slot:1b,count:64}] store result score #temp_0 tcc.dummy run function tcc:block/echoing_hourglass/hopper/take/macro with storage tcc:temp root.macro_input
execute if score #temp_0 tcc.dummy matches 1 run return run item modify block ~ ~ ~ container.1 tcc:increase_count

# check slot 2
data modify storage tcc:temp root.macro_input.temp_drop_item.Slot set value 2b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run return run data modify block ~ ~ ~ Items append from storage tcc:temp root.macro_input.temp_drop_item
execute unless data block ~ ~ ~ Items[{Slot:2b,count:64}] store result score #temp_0 tcc.dummy run function tcc:block/echoing_hourglass/hopper/take/macro with storage tcc:temp root.macro_input
execute if score #temp_0 tcc.dummy matches 1 run return run item modify block ~ ~ ~ container.2 tcc:increase_count

# check slot 3
data modify storage tcc:temp root.macro_input.temp_drop_item.Slot set value 3b
execute unless data block ~ ~ ~ Items[{Slot:3b}] run return run data modify block ~ ~ ~ Items append from storage tcc:temp root.macro_input.temp_drop_item
execute unless data block ~ ~ ~ Items[{Slot:3b,count:64}] store result score #temp_0 tcc.dummy run function tcc:block/echoing_hourglass/hopper/take/macro with storage tcc:temp root.macro_input
execute if score #temp_0 tcc.dummy matches 1 run return run item modify block ~ ~ ~ container.3 tcc:increase_count

# check slot 4
data modify storage tcc:temp root.macro_input.temp_drop_item.Slot set value 4b
execute unless data block ~ ~ ~ Items[{Slot:4b}] run return run data modify block ~ ~ ~ Items append from storage tcc:temp root.macro_input.temp_drop_item
execute unless data block ~ ~ ~ Items[{Slot:4b,count:64}] store result score #temp_0 tcc.dummy run function tcc:block/echoing_hourglass/hopper/take/macro with storage tcc:temp root.macro_input
execute if score #temp_0 tcc.dummy matches 1 run return run item modify block ~ ~ ~ container.4 tcc:increase_count

return fail