############################################################
# Description: Modifies trades of vanilla villager
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function tcc:entity/villager/cartographer
execute if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function tcc:entity/villager/toolsmith
execute if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function tcc:entity/villager/mason
