# Gets the container number for the item's position

execute store result score #temp_0 tcc.dummy run data get storage tcc:temp root.item.Slot
scoreboard players operation #temp_1 tcc.dummy = #temp_0 tcc.dummy
execute if score #temp_1 tcc.dummy matches 9..35 run scoreboard players remove #temp_1 tcc.dummy 9
execute store result storage tcc:temp root.macro_input.container_slot int 1 run scoreboard players get #temp_1 tcc.dummy
