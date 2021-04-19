############################################################
# Description: Amethyst gemstone functionality
# Creator: CreeperMagnet_
############################################################

data modify storage tcc:storage root.temp.value set value 0
execute if entity @s[tag=tcc.has_pristine_amethyst_ring] run data modify storage tcc:storage root.temp.value set value 1
execute if entity @s[tag=!tcc.has_pristine_amethyst_ring] as @e[type=item,distance=..10,nbt={Age:0s,Item:{tag:{tcc:{id:"ring",gemstone:{id:"minecraft:amethyst",quality:"cut"}}}}},tag=!global.ignore] at @s run function tcc:item/amethyst_ring/death_effects
execute if entity @s[tag=tcc.has_pristine_amethyst_ring] as @e[type=item,distance=..10,nbt={Age:0s,Item:{tag:{tcc:{id:"ring",gemstone:{id:"minecraft:amethyst",quality:"pristine"}}}}},tag=!global.ignore] at @s run function tcc:item/amethyst_ring/death_effects
advancement revoke @s only tcc:technical/item/rings/amethyst_gemstone/die
