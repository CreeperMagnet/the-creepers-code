############################################################
# Description: Creates hurt color and noises
# Creator: CreeperMagnet_
############################################################

execute if entity @s[nbt={HurtTime:9s},tag=!tcc.silent] run function tcc:entity/trader_entity/sounds/hurt
data modify entity @s ArmorItems[3].tag.display.color set value 14586514
data modify entity @s HandItems[0].tag.display.color set value 14586514
