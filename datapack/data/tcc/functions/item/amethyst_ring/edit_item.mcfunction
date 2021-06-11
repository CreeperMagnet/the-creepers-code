############################################################
# Description: Amethyst gemstone functionality
# Creator: CreeperMagnet_
############################################################

execute if data storage tcc:storage root.temp{value:0} run data modify entity @s Age set value -6000s
execute if data storage tcc:storage root.temp{value:1} run data modify entity @s Age set value -12000s
data modify entity @s Glowing set value 1b
team join tcc.amethyst @s
