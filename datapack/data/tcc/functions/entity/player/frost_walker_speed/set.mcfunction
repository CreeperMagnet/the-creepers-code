# Frost walker speed functions

scoreboard players set #temp_0 tcc.dummy 0
execute on vehicle run scoreboard players set #temp_0 tcc.dummy 1
execute if score #temp_0 tcc.dummy matches 1 run return 0

tag @s add tcc.frost_walker_speed
attribute @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{lvl:1s,id:"minecraft:frost_walker"}]}}]}] minecraft:generic.movement_speed modifier add 2033-1019090-1205905-250909-2129005 tcc.frost_walker 0.6 multiply_base
attribute @s[nbt={Inventory:[{Slot:100b,tag:{Enchantments:[{lvl:2s,id:"minecraft:frost_walker"}]}}]}] minecraft:generic.movement_speed modifier add 2033-1019090-1205905-250909-2129005 tcc.frost_walker 1.2 multiply_base