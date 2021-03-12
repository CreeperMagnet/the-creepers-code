############################################################
# Description: Functions to tell what potion ring you're using
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={SelectedItem:{tag:{tcc:{metal:"minecraft:gold"}}}}] run function tcc:item/soaked_rings/gold/effects/mainhand
