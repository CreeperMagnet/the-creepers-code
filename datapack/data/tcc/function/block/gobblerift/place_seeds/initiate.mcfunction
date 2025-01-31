# Initiates the gobblerift seedling's tags

execute if data storage tcc:temp root.name run data modify entity @s CustomName set from storage tcc:temp root.name
data modify entity @s item.components."minecraft:custom_data".dimension set from storage tcc:temp root.dimension
tag @s remove tcc.gobblerift.start