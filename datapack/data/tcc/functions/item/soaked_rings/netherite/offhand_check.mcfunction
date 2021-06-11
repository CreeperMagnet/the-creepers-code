############################################################
# Description: Functions to tell what potion ring you're using
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{tcc:{metal:"minecraft:netherite"}}}]}] run function tcc:item/soaked_rings/netherite/effects/offhand
