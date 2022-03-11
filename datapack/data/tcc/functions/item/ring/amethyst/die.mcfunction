############################################################
# Amethyst ring functionality
############################################################

data modify storage tcc:storage root.temp.value set value 0
execute if entity @s[tag=tcc.has_netherite_amethyst_ring] run data modify storage tcc:storage root.temp.value set value 1
execute if entity @s[tag=!tcc.has_netherite_amethyst_ring] as @e[limit=1,type=item,sort=nearest,distance=..10,nbt={Age:0s,Item:{tag:{tcc:{id:"ring",ring:{gemstone:"minecraft:amethyst"}}}}},nbt=!{Item:{tag:{tcc:{ring:{metal:"minecraft:netherite"}}}}},tag=!smithed.entity] at @s run function tcc:item/ring/amethyst/death_effects
execute if entity @s[tag=tcc.has_netherite_amethyst_ring] as @e[limit=1,type=item,sort=nearest,distance=..10,nbt={Age:0s,Item:{tag:{tcc:{id:"ring",ring:{gemstone:"minecraft:amethyst",metal:"minecraft:netherite"}}}}},tag=!smithed.entity] at @s run function tcc:item/ring/amethyst/death_effects
advancement revoke @s only tcc:technical/entity_hurt_player/player_dies_with_amethyst_ring
