# Adds a tag to players riding striders

execute if entity @s[predicate=tcc:entity/holding/custom_warped_fungus_on_a_stick] on vehicle run effect give @s minecraft:slowness 1 255 true
execute unless data entity @s RootVehicle run tag @s remove tcc.on_strider