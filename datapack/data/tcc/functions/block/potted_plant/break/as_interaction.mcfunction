# This function runs as the interaction

# Reset the temp value
scoreboard players set #temp_0 tcc.dummy 0
execute on attacker if entity @s[gamemode=creative] run scoreboard players set #temp_0 tcc.dummy 1

# Temp_0 = 1 if in creative
execute if score #temp_0 tcc.dummy matches 0 run setblock ~ ~ ~ minecraft:air destroy
execute if score #temp_0 tcc.dummy matches 0 on vehicle run function tcc:block/potted_plant/break/spawn_items
execute if score #temp_0 tcc.dummy matches 1 run function tcc:block/potted_plant/break/creative_break_sfx
execute on vehicle run kill @s
kill @s