############################################################
# Description: Modifies trades of vanilla villager
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function tcc:entity/villager/cartographer/set_initial_trades
execute if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function tcc:entity/villager/toolsmith/set_initial_trades
execute if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function tcc:entity/villager/mason/set_initial_trades
